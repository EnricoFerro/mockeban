const cds = require('@sap/cds');
module.exports = async (srv) => {

  const { ApproverSet } = srv.entities
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

    const { DefectSet } = srv.entities
    /**
     * This overwrite the read:
     *   * If the "search" is used all the "level" is replaced from the ebanSet.Banfn
     *   * Otherwise it return the standard value
     */
    srv.on(['READ'], 'DefectSet', (req) => {
        if (req.req.query.$search) {
          req.query.SELECT.search = undefined;
        }
        //Every other cases  
        return cds.run(req.query);  

    });
}



