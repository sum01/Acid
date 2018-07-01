set(BULLET_INCLUDES "${PROJECT_SOURCE_DIR}/Libraries/bullet3/src")
set(BUILD_BULLET3 OFF CACHE INTERNAL "Set when you want to build Bullet 3")
set(BUILD_CPU_DEMOS OFF CACHE INTERNAL "Build original Bullet CPU examples")
set(BUILD_BULLET2_DEMOS OFF CACHE INTERNAL "Set when you want to build the Bullet 2 demos")
set(USE_GRAPHICAL_BENCHMARK OFF CACHE INTERNAL "Use Graphical Benchmark")
set(BUILD_OPENGL3_DEMOS OFF CACHE INTERNAL "Set when you want to build the OpenGL3+ demos")
set(BUILD_EXTRAS OFF CACHE INTERNAL "Set when you want to build the extras")
set(USE_GLUT OFF CACHE INTERNAL "Use Glut")
set(BUILD_UNIT_TESTS OFF CACHE INTERNAL "Build Unit Tests")
add_subdirectory(${PROJECT_SOURCE_DIR}/Libraries/bullet3)

set(LIBRARIES_INCLUDES ${LIBRARIES_INCLUDES} ${BULLET_INCLUDES})
set(LIBRARIES_LINKS ${LIBRARIES_LINKS} "LinearMath" "BulletCollision" "BulletDynamics")

#if(NOT BULLET_LIBRARY)
#	message(FATAL_ERROR "bullet library not found!")
#endif()

set(CMAKE_DEBUG_POSTFIX "" CACHE STRING "Adds a postfix for debug-built libraries.")
