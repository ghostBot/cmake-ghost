# find MySQL
# MySQL_INCLUDE_DIRS - Where to find MySQL 3 header files (directory)
# MySQL_LIBRARIES - MySQL 3 libraries
# MySQL_FOUND - Set to TRUE if we found everything (library, includes and executable)

IF( MYSQL_INCLUDE_DIR AND MYSQL_LIBRARY )
    SET(MYSQL_FIND_QUIETLY TRUE)
ENDIF( MYSQL_INCLUDE_DIR AND MYSQL_LIBRARY )

FIND_PATH( MYSQL_INCLUDE_DIR mysql.h  )
FIND_LIBRARY(MYSQL_LIBRARY NAMES mysqlclient )

IF( MYSQL_LIBRARY AND MYSQL_INCLUDE_DIR )
	SET( MYSQL_FOUND TRUE )
ENDIF( MYSQL_LIBRARY AND MYSQL_INCLUDE_DIR )

SET( MYSQL_LIBRARIES ${MYSQL_LIBRARY} )
SET( MYSQL_INCLUDE_DIRS ${MYSQL_INCLUDE_DIR} )

INCLUDE( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( MySQL DEFAULT_MSG MYSQL_LIBRARIES MYSQL_INCLUDE_DIRS  )