include(${CMAKE_CURRENT_LIST_DIR}/helper.cmake) # create_config_stub

# create empty *Config.cmake for find_package
create_config_stub(${CMAKE_FIND_PACKAGE_NAME})

add_subdirectory(${PROJECT_SOURCE_DIR}/third_party/${CMAKE_FIND_PACKAGE_NAME})
