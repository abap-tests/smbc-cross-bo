@AccessControl.authorizationCheck: #NOT_REQUIRED

define root view entity ZC_XBO_SMBC_Main
  provider contract transactional_query
  as projection on ZR_XBO_SMBC_Main
{

      @UI.facet: [ { id:       'ZR_XBO_SMBC_Main',
                     type:     #IDENTIFICATION_REFERENCE,
                     position: 10 },
                   { id:            'ZR_XBO_SMBC_Dependent',
                     type:          #LINEITEM_REFERENCE,
                     label:         'Dependent',
                     position:      20,
                     targetElement: '_Dependent' } ]

  key Main,

      @UI.identification: [ { position: 10 } ]
      @UI.lineItem: [ { position: 10 } ]
      Name,

      CreatedBy,

      CreatedAt,

      LastChangedBy,

      LastChangedAt,

      EtagMaster,

      /* Associations */
      _Dependent : redirected to ZC_XBO_SMBC_Dependent

}
