namespace com.cnhi.btp.ebansrvs;

@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ApproverSet {
  @Common.Label : 'Emp ID'
  @sap.label : 'Emp ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key persnum : String(10) not null;
  @Common.Label : 'Name'
  @sap.label : 'Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  name : String(80) not null;
  @Common.Label : 'Release Code'
  @sap.label : 'Release Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  level : String(2) not null;
  @Common.Label : 'E-Mail'
  @sap.label : 'E-Mail'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  email : String(241) not null;
};

@cds.external : true
@cds.persistence.skip : false
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
entity ebanSet {
  @Common.Label : 'Purchase Req.'
  @sap.label : 'Purchase Req.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  key Banfn : String(10) not null;
  @Common.Label : 'Requisn Item'
  @sap.label : 'Requisn Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  key Bnfpo : String(5) not null;
  @Common.Label : 'Desired Vendor'
  @sap.label : 'Desired Vendor'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Lifnr : String(10) not null;
  @Common.Label : 'Tracking Number'
  @sap.label : 'Tracking Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Bednr : String(10) not null;
  @Common.Label : 'Blocking Text'
  @sap.label : 'Blocking Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Blckt : String(60) not null;
  @Common.Label : 'Control'
  @sap.label : 'Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Bsakz : String(1) not null;
  @Common.Label : 'Procurement prof.'
  @sap.label : 'Procurement prof.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Eprofile : String(2) not null;
  @Common.Label : 'Release group'
  @sap.label : 'Release group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Frggr : String(2) not null;
  @Common.Label : 'Release Code Descr'
  @sap.label : 'Release Code Descr'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Zzfgpibsubsyst : String(60) not null;
  @Common.Label : 'Currency'
  @sap.label : 'Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'currency-code'
  Waers : String(5) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @Common.Label : 'Delivery Date'
  @sap.label : 'Delivery Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Lfdat : Timestamp not null;
  @Common.Label : 'Deletion Ind.'
  @sap.label : 'Deletion Ind.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Loekz : String(1) not null;
  @Common.Label : 'ZZFGP_IBSORIG'
  @sap.label : 'ZZFGP_IBSORIG'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ZzfgpIbsorig : String(26) not null;
  @Common.Label : 'Document Type'
  @sap.label : 'Document Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  Bsart : String(4) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @Common.Label : 'Release Date'
  @sap.label : 'Release Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Frgdt : Timestamp not null;
  @Common.Label : 'Processing stat'
  @sap.label : 'Processing stat'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Statu : String(1) not null;
  @Common.Label : 'Doc. Category'
  @sap.label : 'Doc. Category'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  Bstyp : String(1) not null;
  @Common.Label : 'Creation Ind.'
  @sap.label : 'Creation Ind.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Estkz : String(1) not null;
  @sap.unit : 'Waers'
  @Common.Label : 'Valuation Price'
  @sap.label : 'Valuation Price'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Preis : Decimal(12, 3) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @Common.Label : 'Changed on'
  @sap.label : 'Changed on'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Erdat : Timestamp not null;
  @Common.Label : 'Release ind.'
  @sap.label : 'Release ind.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  Frgkz : String(1) not null;
  @Common.Label : 'Price Unit'
  @sap.label : 'Price Unit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Peinh : Decimal(8, 3) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @Common.Label : 'Requisn Date'
  @sap.label : 'Requisn Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Badat : Timestamp not null;
  @Common.Label : 'Vendor'
  @sap.label : 'Vendor'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Emlif : String(10) not null;
  @Common.Label : 'Release status'
  @sap.label : 'Release status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  Frgzu : String(8) not null;
  @Common.Label : 'Rel. Strategy'
  @sap.label : 'Rel. Strategy'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  Frgst : String(2) not null;
  @Common.Label : 'Purch. Group'
  @sap.label : 'Purch. Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  Ekgrp : String(3) not null;
  @Common.Label : 'Created by'
  @sap.label : 'Created by'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Ernam : String(12) not null;
  @Common.Label : 'Requisitioner'
  @sap.label : 'Requisitioner'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  Afnam : String(12) not null;
  @Common.Label : 'Short Text'
  @sap.label : 'Short Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  Txz01 : String(40) not null;
  @Common.Label : 'Material'
  @sap.label : 'Material'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  Matnr : String(18) not null;
  @Common.Label : 'Plant'
  @sap.label : 'Plant'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  Werks : String(4) not null;
  @Common.Label : 'Stor. Location'
  @sap.label : 'Stor. Location'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  Lgort : String(4) not null;
  @Common.Label : 'Material Group'
  @sap.label : 'Material Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  Matkl : String(9) not null;
  @sap.unit : 'Meins'
  @Common.Label : 'Quantity'
  @sap.label : 'Quantity'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  Menge : Decimal(13, 3) not null;
  @Common.Label : 'Unit of Measure'
  @sap.label : 'Unit of Measure'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'unit-of-measure'
  Meins : String(3) not null;
  @Common.Label : 'Has Comment'
  @sap.label : 'Has Comment'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'has-comment'
  HasComment : Boolean not null default false;
  @Common.Label : 'Has Document'
  @sap.label : 'Has Document'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'has-document'  
  HasDocument: Boolean not null default false;
  @Common.Label : 'Comment on Purchase Document'
  @sap.label : 'Comment on Purchase Document'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'sap-comment'  
  SapComment: String;
  @Common.Label : 'Has Comment Item'
  @sap.label : 'Has Comment Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'has-comment-item'  
  HasItemComment: Boolean not null default false;
  @Common.Label : 'Comment on Purchase Document Item'
  @sap.label : 'Comment on Purchase Document Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'sap-comment-item'  
  SapItemComment: String;
};

@cds.external : true
@cds.persistence.skip : false
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
entity AttachmentSet {
  @Common.Label : 'Purchase Req.'
  @sap.label : 'Purchase Req.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  key Banfn : String(10) not null;
  @sap.label : 'File Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key FileName : String(241) not null;  
  @sap.label : 'File Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MimeType : String(241) not null;  
  @Common.Label : 'Created by'
  @sap.label : 'Created by'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedBy : String(241) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.label : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CreateDate : Timestamp not null;
}


@cds.external : true
@cds.persistence.skip : false
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
entity AttachmentStreamSet {
  @Common.Label : 'Purchase Req.'
  @sap.label : 'Purchase Req.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  key Banfn : String(10) not null;
  @sap.label : 'File Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key FileName : String(241) not null;  
  @sap.label : 'File Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MimeType : String(241) not null;  
  @Common.Label : 'Created by'
  @sap.label : 'Created by'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedBy : String(241) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.label : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CreateDate : Timestamp not null;
}