# Locate ZeroMQ library and headers
# This module defines
#   ZeroMQ_FOUND
#   ZeroMQ_INCLUDE_DIRS - include directories
#   ZeroMQ_LIBRARIES    - list of required libraries
#   ZeroMQ_VERSION       - version of ZeroMQ

# Try to find ZeroMQ installation
# Once done, this will define
#  ZeroMQ_FOUND - system has ZeroMQ
#  ZeroMQ_INCLUDE_DIRS - the ZeroMQ include directories
#  ZeroMQ_LIBRARIES - link these to use ZeroMQ

# We require the PkgConfig module to find ZeroMQ
find_package(PkgConfig REQUIRED)
pkg_check_modules(PC_ZeroMQ QUIET zmq)

# Handle the QUIETLY and REQUIRED arguments and set ZeroMQ_FOUND to TRUE if all listed variables are TRUE
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(ZeroMQ DEFAULT_MSG PC_ZeroMQ)

# Set ZeroMQ_INCLUDE_DIRS to the include directories
# Set ZeroMQ_LIBRARIES to the libraries
# Set ZeroMQ_VERSION to the version
if(ZeroMQ_FOUND)
  set(ZeroMQ_INCLUDE_DIRS ${PC_ZeroMQ_INCLUDE_DIRS})
  set(ZeroMQ_LIBRARIES ${PC_ZeroMQ_LIBRARIES})
  set(ZeroMQ_VERSION ${PC_ZeroMQ_VERSION})
endif()

# For more details on how to use ZeroMQ, see the ZeroMQ website: http://zeromq.org/
