CLASS lhc_ZSW_R_IncidentTP DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR ZSW_R_IncidentTP RESULT result.

ENDCLASS.

CLASS lhc_ZSW_R_IncidentTP IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
