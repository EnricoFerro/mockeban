using com.cnhi.btp.ebansrvs from '../db/eban';
using com.cnhi.btp.warrantysrvs from '../db/warranty';

@path: 'ZBTP_POC1_GTW_SRV'
// @requires: 'authenticated-user'
service EbanService {

 entity ebanSet
    as projection on ebansrvs.ebanSet;

 entity ApproverSet
    as projection on  ebansrvs.ApproverSet;

}

@path: 'ZBTP_POC3_GTW_SRV'
// @requires: 'authenticated-user'
service WarrantyService {

 entity ActionsSet
    as projection on warrantysrvs.ActionsSet;

 entity DefectSet
    as projection on  warrantysrvs.DefectSet;


 entity WarrantySet
    as projection on  warrantysrvs.WarrantySet;    

}

