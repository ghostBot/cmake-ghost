#[[.rst
FindBNCSUtil
------------
BNCSUtil_FOUND - system has bncs
BNCSUtil_INCLUDE_DIRS - bncs include directory
BNCSUtil_LIBRARIES - bncs library
#]]

if( BNCSUtil_INCLUDE_DIR AND BNCSUtil_LIBRARY )
	set( BNCSUtil_FIND_QUIETLY TRUE )
endif( BNCSUtil_INCLUDE_DIR AND BNCSUtil_LIBRARY )

find_path( BNCSUtil_INCLUDE_DIR NAMES bncsutil.h PATHS ${CMAKE_SOURCE_DIR}/depends/include PATH_SUFFIXES bncsutil )
find_library( BNCSUtil_LIBRARY NAMES bncsutil PATHS ${CMAKE_SOURCE_DIR}/depends/lib )

include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( BNCSUtil DEFAULT_MSG BNCSUtil_LIBRARY BNCSUtil_INCLUDE_DIR )

set( BNCSUtil_INCLUDE_DIRS ${BNCSUtil_INCLUDE_DIR} )
set( BNCSUtil_LIBRARIES ${BNCSUtil_LIBRARY} )
