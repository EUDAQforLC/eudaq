cmake_dependent_option(USER_TELESCOPE_MODULE "build telescope module" ON
  "USER_TELESCOPE" OFF)

# option(USER_TELESCOPE_MODULE "build telescope module" ON)

IF(USER_TELESCOPE_MODULE)
  include_directories(include)
  aux_source_directory(src MODULE_SRC)
  add_library(${EUDAQ_MODULE} SHARED ${MODULE_SRC})
  target_link_libraries(${EUDAQ_MODULE} EUDAQ)

  install(TARGETS
    ${EUDAQ_MODULE}
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib)
ENDIF()


