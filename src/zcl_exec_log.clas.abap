CLASS zcl_exec_log DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_exec_log IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    out->write( 'HOLA MUNDO' ).

* Fundamentals
    DATA(lo_instance) = NEW zcl_01_log_c363_1( ).
*    DATA: lo_inst TYPE REF TO zcl_01_log_c363_1.
*    CREATE OBJECT lo_ins.
    lo_instance->set_attr1( iv_attr = 'Attribute1' ).
*    lo_instance->get_attr1(
*      IMPORTING
*        ev_attr = DATA(lv_attribute) ).
*    out->write( lv_attribute ).
    out->write( lo_instance->get_attr1( ) ).
    zcl_01_log_c363_1=>set_attr2( iv_attr = 'Attribute 2' ).
    zcl_01_log_c363_1=>get_attr2(
      IMPORTING
        ev_attr =  data(lv_attribute2) ).
    out->write( lv_attribute2 ).
    out->write( lo_instance->get_flight( 'AA' ) ).
    out->write( | { zcl_01_log_c363_1=>constantes-c2 } { zcl_01_log_c363_1=>constantes-c1 } { zcl_01_log_c363_1=>c3 } | ).
 ENDMETHOD.
ENDCLASS.
