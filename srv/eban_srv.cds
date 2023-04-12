using com.cnhi.btp.ebansrvs from '../db/eban';

@path: '/sap/opu/odata/sap/ZBTP_POC1_GTW_SRV'
// @requires: 'authenticated-user'
service EbanService {

 entity ebanSet
    as projection on ebansrvs.ebanSet;
 entity ApproverSet
    as projection on  ebansrvs.ApproverSet;

}
