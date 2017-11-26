#[[.rst
FindMySQL
---------
MySQL_FOUND - system has mysql
MySQL_INCLUDE_DIRS - mysql include directory
MySQL_LIBRARIES - mysql library
#]]

if( MySQL_INCLUDE_DIR AND MySQL_LIBRARY )
    set(MySQL_FIND_QUIETLY TRUE)
endif( MySQL_INCLUDE_DIR AND MySQL_LIBRARY )

find_path( MySQL_INCLUDE_DIR NAMES mysql.h PATHS ${CMAKE_SOURCE_DIR}/depends/include PATH_SUFFIXES mysql )
find_library( MySQL_LIBRARY NAMES mysqlclient libmysql PATHS ${CMAKE_SOURCE_DIR}/depends/lib )

include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( MySQL DEFAULT_MSG MySQL_LIBRARY MySQL_INCLUDE_DIR )

set( MySQL_INCLUDE_DIRS ${MySQL_INCLUDE_DIR} )
set( MySQL_LIBRARIES ${MySQL_LIBRARY} )
