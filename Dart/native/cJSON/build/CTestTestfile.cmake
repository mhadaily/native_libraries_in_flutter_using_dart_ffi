# CMake generated Testfile for 
# Source directory: /Users/majid/Projects/Telia/my_app_sample/native/cJSON
# Build directory: /Users/majid/Projects/Telia/my_app_sample/native/cJSON/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cJSON_test "/Users/majid/Projects/Telia/my_app_sample/native/cJSON/build/cJSON_test")
set_tests_properties(cJSON_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/majid/Projects/Telia/my_app_sample/native/cJSON/CMakeLists.txt;239;add_test;/Users/majid/Projects/Telia/my_app_sample/native/cJSON/CMakeLists.txt;0;")
subdirs("tests")
subdirs("fuzzing")
