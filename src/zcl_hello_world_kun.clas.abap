CLASS zcl_hello_world_kun DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_HELLO_WORLD_KUN IMPLEMENTATION.


method if_oo_adt_classrun~main.
data(lv_string) = 'someone@somecompany.com'.
out->write( 'Hello World' ).

data(lo_regex) = cl_abap_regex=>create_pcre( pattern = '^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$' ).
data(lo_matcher) = lo_regex->create_matcher( text = lv_string ).
IF lo_matcher->match(  ) is INITIAL.
  out->WRITE(  'Invalid email address.' ).
ELSE.
  out->write( 'Valid email address.' ).
ENDIF.

endmethod.
ENDCLASS.
