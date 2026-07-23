@AccessControl.authorizationCheck: #NOT_REQUIRED

define root view entity ZR_XBO_SMBC_Dependent
  as select from zxbo_smbc_dep

  composition of exact one to many ZR_XBO_SMBC_Dependent01 as _01
  association of many      to one ZR_XBO_SMBC_Main         as _Main on $projection.Main = _Main.Main
{

  key dependent       as Dependent,

      name            as Name,

      main            as Main,

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
      _01,
      _Main

}
