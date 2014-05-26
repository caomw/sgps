

if(NOT DEFINED SGPS_PACKAGE_PATH)
     #execute_process(COMMAND find . -iname libsgps.a  OUTPUT_VARIABLE  SGPS_PACKAGE_PATH OUTPUT_STRIP_TRAILING_WHITESPACE)
     #set(SGPS_PACKAGE_PATH ${SGPS_PACKAGE_PATH} CACHE PATH "PATH TO SGPS-PACKAGE")
	set(SGPS_PACKAGE_PATH .)
endif(NOT DEFINED SGPS_PACKAGE_PATH)

message(STATUS "SGPS_PACKAGE_PATH: " ${SGPS_PACKAGE_PATH})

find_path(SGPS_INCLUDE_DIRS NAMES sgps.h HINTS ${SGPS_PACKAGE_PATH}/include)
message(STATUS "SGPS_INCLUDE_DIRS: " ${SGPS_INCLUDE_DIRS})

find_library(SGPS_LIBRARIES NAMES sgps HINTS ${SGPS_PACKAGE_PATH}/lib)
message(STATUS "SGPS_LIBRARIES: " ${SGPS_LIBRARIES})

set(SGPS_FOUND FALSE)

if(SGPS_INCLUDE_DIRS AND SGPS_LIBRARIES)
     set(SGPS_FOUND TRUE)
endif(SGPS_INCLUDE_DIRS AND SGPS_LIBRARIES)