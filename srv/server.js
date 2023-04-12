const cds = require("@sap/cds");
const cov2ap = require("@sap/cds-odata-v2-adapter-proxy");
const options = {
    path: "sap/opu/odata/sap"
};
cds.on("bootstrap", (app) => app.use(cov2ap(options)));
//cds.odata.v2proxy.urlpath = '/sap/opu/odata/sap/ZBTP_POC1_GTW_SRV'
module.exports = cds.server;