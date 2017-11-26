#[[.rst
FindStormLib
------------
StormLib_FOUND - system has stormlib
StormLib_INCLUDE_DIRS - stormlib include library
StormLib_LIBRARIES - stormlib library
#]]

if( StormLib_INCLUDE_DIR AND StormLib_LIBRARY )
	set( StormLib_FIND_QUIETLY TRUE )
endif( StormLib_INCLUDE_DIR AND StormLib_LIBRARY )

find_path( StormLib_INCLUDE_DIR NAMES StormLib.h PATHS ${CMAKE_SOURCE_DIR}/depends/include PATH_SUFFIXES stormlib StormLib )
find_library( StormLib_LIBRARY NAMES storm PATHS ${CMAKE_SOURCE_DIR}/depends/lib )

include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( StormLib DEFAULT_MSG StormLib_LIBRARY StormLib_INCLUDE_DIR )

set( StormLib_INCLUDE_DIRS ${StormLib_INCLUDE_DIR} )
set( StormLib_LIBRARIES ${StormLib_LIBRARY} )
