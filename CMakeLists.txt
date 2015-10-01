cmake_minimum_required(VERSION 2.6)
project(cmake-ghost)

install(DIRECTORY Modules/ DESTINATION ${CMAKE_ROOT}/Modules FILES_MATCHING PATTERN "*.cmake")
