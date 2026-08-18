CLASS zcl_01_log_c363_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: attr1 TYPE string.
    CLASS-DATA: attr2 TYPE string.
    METHODS:
        set_attr1
            importing
                iv_attr TYPE string,
        get_attr1
            EXPORTING
                ev_attr TYPE string.


    CLASS-METHODS:
       set_attr2
            IMPORTING
                iv_attr TYPE string,
        get_attr2
            EXPORTING
                ev_attr TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_log_c363_1 IMPLEMENTATION.

   METHOD set_attr1.
   attr1 = iv_attr.

  ENDMETHOD.

  METHOD set_attr2.

  ENDMETHOD.

  METHOD get_attr1.

  ENDMETHOD.

  METHOD get_attr2.

  ENDMETHOD.

ENDCLASS.
