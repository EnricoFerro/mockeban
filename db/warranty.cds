namespace com.cnhi.btp.warrantysrvs;


@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.content.version : '1'
entity ActionsSet {
  @sap.label : 'Action Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Acode : String(4) not null;
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Description : String(60) not null;
};


@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.content.version : '1'
entity WarrantySet {
  @sap.label : 'Claim'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Clmno : String(12) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.label : 'Submission Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  SubDate : Timestamp not null;
  @sap.label : 'Commercial Model'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ModelDef : String(30);
  @sap.label : 'Partner'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PartnerText : String(35) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.label : 'FAI OK dt'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ManDate : Timestamp not null;
  @sap.unit : 'Curr'
  @sap.label : 'OC Approved'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Total : Decimal(14, 3) not null;
  @sap.label : 'Internal Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Pnguid : UUID not null;
  @sap.label : 'Info. Clm Head.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Km : String(60) not null;
  @sap.label : 'Processing Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Astate : String(4) not null;
  @sap.label : 'Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'currency-code'
  Curr : String(5) not null;
  @sap.label : 'Processing Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  StatusText : String(40) not null;
  @sap.label : 'WtyClmType'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Wtype : String(4) not null;
  @sap.label : 'Warranty Claim Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  WtypeText : String(40) not null;
  @sap.label : 'Company Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Bukrs : String(4) not null;
  @sap.label : 'Company Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  BukrsText : String(25) not null;
  @sap.label : 'Sales Org.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Vkorg : String(4) not null;
  @sap.label : 'Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  VkorgText : String(20) not null;
  @sap.label : 'Veh.Search Area'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ObjRef : String(10) not null;
  @sap.label : 'Partner'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Partner : String(10) not null;
  @sap.label : 'Ext. Obj. No.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Vin : String(40) not null;
  @sap.label : 'Int. Veh. No.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Vehicle : String(10) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.label : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  FailureDate : Timestamp not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.label : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CreateDate : Timestamp not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.label : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  RepairStart : Timestamp not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.label : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  RepairEnd : Timestamp not null;
  @sap.label : 'Defect Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DefectCode : String(40) not null;
  @sap.label : 'Decision'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Decision : String(8) not null;
};


@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.content.version : '1'
entity DefectSet {
  @sap.label : 'Defect Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key DefectCode : String(40) not null;
  @sap.unit : 'Curr'
  @sap.label : 'Total Material'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TotalParts : Decimal(14, 3) not null;
  @sap.unit : 'Curr'
  @sap.label : 'Total Labor Values'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TotalLabor : Decimal(14, 3) not null;
  @sap.unit : 'Curr'
  @sap.label : 'Total Other'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TotalOther : Decimal(14, 3) not null;
  @sap.unit : 'Curr'
  @sap.label : 'TotalExternServices'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TotalAdd : Decimal(14, 3) not null;
  @sap.label : 'Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'currency-code'
  Curr : String(5) not null;
  @sap.unit : 'Curr'
  @sap.label : 'Total Failure'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TotalFail : Decimal(14, 3) not null;
  @sap.label : 'DOA level'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DoaLevel : String(3) not null;
  @sap.label : 'Warranty type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Warranty : String(1) not null;
  @sap.label : 'Decision'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Decision : String(8) not null;
  @sap.label : 'Decision'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DecisionText : String(100) not null;
  @sap.label : '% Service Partecip'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Service : String(3) not null;
};

