CLASS zsw_c_util DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zsw_c_util IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DELETE FROM ztab_incidents WHERE id IS INITIAL.

    IF sy-subrc EQ 0.
      out->write( 'Success' ).
    ELSE.
      out->write( 'Failure' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
