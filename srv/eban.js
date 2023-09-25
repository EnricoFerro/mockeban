const cds = require('@sap/cds');
const { error } = require('console');
module.exports = async (srv) => {

  const { ApproverSet, ebanSet } = srv.entities
  /**
   * This overwrite the read:
   *   * If the "search" is used all the "level" is replaced from the ebanSet.Banfn
   *   * Otherwise it return the standard value
   */
  srv.on(['READ'], 'ApproverSet', (req) => {
      if (req.req.query.$search) {
        return SELECT.from('com.cnhi.btp.ebansrvs.ebanSet').where({ Banfn: req.req.query.$search.replace(/('|")(.*)('|")/gm,'$2') }).then(resp =>{
          return SELECT.from('com.cnhi.btp.ebansrvs.ApproverSet').then( array => {
            return array.map( item => { 
              if (resp[0]) {
                item.level = resp[0].Eprofile;
              }
              return item
            });
          });
        }).catch(resp => {
          return [];
        });
      } else {
      //Every other cases  
        return cds.run(req.query);  
      }
    })

  /**
   * This overwrite the read:
   *   * If the "search" is used all the "level" is replaced from the ebanSet.Banfn
   *   * Otherwise it return the standard value
   */
  srv.on(['UPDATE'], ebanSet, (req) => {
    const Banfn = req.query.UPDATE.data.Banfn,
          Bnfpo = req.query.UPDATE.data.Bnfpo
 
    return new Promise((resolve,reject) => {
      SELECT.one.from(ebanSet).where({ Banfn: Banfn }).and({ Bnfpo: Bnfpo }).then(resp =>{
        const Frgzu = resp.Frgzu = resp.Frgzu + 'X';
        cds.run(UPDATE(ebanSet, { Banfn, Bnfpo }).set({ Frgzu }))
          .then(() => { resolve(resp); })
          .catch(error => reject(error));
      }).catch(error => {
        reject(error);
      });
    }) 
  });

    /**
     * This overwrite the read:
     *   * If the "search" is used all the "level" is replaced from the ebanSet.Banfn
     *   * Otherwise it return the standard value
     */
    /*srv.on(['READ'], 'DefectSet', (req) => {
        if (req.req.query.$search) {
          req.query.SELECT.search = undefined;
        }
        //Every other cases  
        return cds.run(req.query);  
    });*/
}



