CLASS zcl_hello_world_kun DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_hello_world_kun IMPLEMENTATION.
method if_oo_adt_classrun~main.
out->write( 'Hello World' ).
endmethod.
ENDCLASS.
