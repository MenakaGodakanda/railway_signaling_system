find_path(ZeroMQ_INCLUDE_DIR
    NAMES zmq.h
    PATHS /usr/include /usr/local/include
)

find_library(ZeroMQ_LIBRARY
    NAMES zmq
    PATHS /usr/lib /usr/local/lib
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(ZeroMQ DEFAULT_MSG
    ZeroMQ_LIBRARY ZeroMQ_INCLUDE_DIR
)

mark_as_advanced(ZeroMQ_INCLUDE_DIR ZeroMQ_LIBRARY)

if(ZeroMQ_FOUND)
    add_library(ZeroMQ::ZeroMQ INTERFACE IMPORTED)
    set_target_properties(ZeroMQ::ZeroMQ PROPERTIES
        INTERFACE_INCLUDE_DIRECTORIES "${ZeroMQ_INCLUDE_DIR}"
        INTERFACE_LINK_LIBRARIES "${ZeroMQ_LIBRARY}"
    )
endif()
