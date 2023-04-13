const cds = require('@sap/cds')
module.exports = async (srv) => {

  const { ApproverSet } = srv.entities
  // Check all amounts against stock before activating
  srv.on(['READ'], 'ApproverSet', (req) => {
      return cds.read(ApproverSet);
    })
}
