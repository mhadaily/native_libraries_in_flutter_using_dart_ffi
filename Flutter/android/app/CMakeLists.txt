
cmake_minimum_required(VERSION 3.4.1)  
 
add_library( 
            cJSON
            SHARED
            ../../../Dart/native/cJSON/cJSON.c 
)