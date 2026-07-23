@AccessControl.authorizationCheck: #NOT_REQUIRED

define view entity ZC_XBO_SMBC_Dependent01
  as projection on ZR_XBO_SMBC_Dependent01
{

      @UI.facet: [ { id:       'ZR_XBO_SMBC_Dependent',
                     type:     #IDENTIFICATION_REFERENCE,
                     position: 10 } ]

  key UUID,

      Dependent,

      @UI.identification: [ { position: 10 } ]
      @UI.lineItem: [ { position: 10 } ]
      Name,

      CreatedBy,

      CreatedAt,

      LastChangedBy,

      LastChangedAt,

      EtagMaster,

      /* Associations */
      _Dependent : redirected to parent ZC_XBO_SMBC_Dependent

}
