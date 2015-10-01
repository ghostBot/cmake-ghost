# find Sqlite 3
# SQLITE3_INCLUDE_DIRS - Where to find Sqlite 3 header files (directory)
# SQLITE3_LIBRARIES - Sqlite 3 libraries
# SQLITE3_FOUND - Set to TRUE if we found everything (library, includes and executable)

IF( SQLITE3_INCLUDE_DIR AND SQLITE3_LIBRARY_RELEASE AND SQLITE3_LIBRARY_DEBUG )
    SET(SQLITE3_FIND_QUIETLY TRUE)
ENDIF( SQLITE3_INCLUDE_DIR AND SQLITE3_LIBRARY_RELEASE AND SQLITE3_LIBRARY_DEBUG )

FIND_PATH( SQLITE3_INCLUDE_DIR sqlite3.h  )
FIND_LIBRARY(SQLITE3_LIBRARY NAMES sqlite3 )

IF( SQLITE3_LIBRARY AND SQLITE3_INCLUDE_DIR )
	SET( SQLITE3_FOUND TRUE )
ENDIF( SQLITE3_LIBRARY AND SQLITE3_INCLUDE_DIR )

SET( SQLITE3_LIBRARIES ${SQLITE3_LIBRARY} )
SET( SQLITE3_INCLUDE_DIRS ${SQLITE3_INCLUDE_DIR} )

INCLUDE( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( Sqlite3 DEFAULT_MSG SQLITE3_LIBRARIES SQLITE3_INCLUDE_DIRS  )