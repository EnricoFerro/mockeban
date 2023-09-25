using com.cnhi.btp.ebansrvs from '../db/eban';

@path: 'ZBTP_POC1_GTW_SRV'
// @requires: 'authenticated-user'
service EbanService {

 entity ebanSet
    as projection on ebansrvs.ebanSet;
   
 entity ApproverSet
    as projection on  ebansrvs.ApproverSet;

 entity AttachmentSet
   as projection on ebansrvs.AttachmentSet;
}