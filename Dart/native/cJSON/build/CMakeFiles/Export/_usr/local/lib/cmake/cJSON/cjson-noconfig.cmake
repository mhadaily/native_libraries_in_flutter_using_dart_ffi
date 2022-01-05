#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "cjson" for configuration ""
set_property(TARGET cjson APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(cjson PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "/usr/local/lib/libcjson.1.7.15.dylib"
  IMPORTED_SONAME_NOCONFIG "@rpath/libcjson.1.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS cjson )
list(APPEND _IMPORT_CHECK_FILES_FOR_cjson "/usr/local/lib/libcjson.1.7.15.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
