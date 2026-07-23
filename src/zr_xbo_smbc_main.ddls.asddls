@AccessControl.authorizationCheck: #NOT_REQUIRED

define root view entity ZR_XBO_SMBC_Main
  as select from zxbo_smbc_main

  association of one to many ZR_XBO_SMBC_Dependent as _Dependent on $projection.Main = _Dependent.Main
{

  key main            as Main,

      name            as Name,

      @Semantics.user.createdBy: true
      created_by      as CreatedBy,

      @Semantics.systemDateTime.createdAt: true
      created_at      as CreatedAt,

      @Semantics.user.lastChangedBy: true
      last_changed_by as LastChangedBy,

      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at as LastChangedAt,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      etag_master     as EtagMaster,

      /* Associations */
      _Dependent

}
