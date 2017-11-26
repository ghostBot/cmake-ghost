#[[.rst
FindSQLite3
-----------
SQLite3_FOUND - system has sqlite3
SQLite3_INCLUDE_DIRS - sqlite3 include directory
SQLite3_LIBRARIES - sqlite3 library
#]]

if( SQLite3_INCLUDE_DIR AND SQLite3_LIBRARY )
    set(SQLite3_FIND_QUIETLY TRUE)
endif( SQLite3_INCLUDE_DIR AND SQLite3_LIBRARY )

find_path( SQLite3_INCLUDE_DIR NAMES sqlite3.h PATHS ${CMAKE_SOURCE_DIR}/depends/include )
find_library( SQLite3_LIBRARY NAMES sqlite3 PATHS ${CMAKE_SOURCE_DIR}/depends/lib )

include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( SQLite3 DEFAULT_MSG SQLite3_LIBRARY SQLite3_INCLUDE_DIR )

set( SQLite3_LIBRARIES ${SQLite3_LIBRARY} )
set( SQLite3_INCLUDE_DIRS ${SQLite3_INCLUDE_DIR} )
