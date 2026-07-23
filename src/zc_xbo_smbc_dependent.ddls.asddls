@AccessControl.authorizationCheck: #NOT_REQUIRED

define root view entity ZC_XBO_SMBC_Dependent
  provider contract transactional_query
  as projection on ZR_XBO_SMBC_Dependent
{

      @UI.facet: [ { id:       'ZR_XBO_SMBC_Dependent',
                     type:     #IDENTIFICATION_REFERENCE,
                     position: 10 },
                   { id:            'ZR_XBO_SMBC_Dependent01',
                     type:          #LINEITEM_REFERENCE,
                     label:         'Child 01',
                     position:      20,
                     targetElement: '_01' } ]

  key Dependent,

      @UI.identification: [ { position: 10 } ]
      @UI.lineItem: [ { position: 10 } ]
      Name,

      Main,

      CreatedBy,

      CreatedAt,

      LastChangedBy,

      LastChangedAt,

      EtagMaster,

      /* Associations */
      _Main : redirected to ZC_XBO_SMBC_Main,
      _01   : redirected to composition child ZC_XBO_SMBC_Dependent01

}
