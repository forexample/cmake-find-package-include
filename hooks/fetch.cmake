include(${CMAKE_CURRENT_LIST_DIR}/helper.cmake) # create_config_stub

# create empty *Config.cmake for find_package
create_config_stub(${CMAKE_FIND_PACKAGE_NAME})

include(FetchContent)

FetchContent_Declare(
    ${CMAKE_FIND_PACKAGE_NAME}
    GIT_REPOSITORY https://github.com/forexample/${CMAKE_FIND_PACKAGE_NAME}.git
    GIT_TAG        v1.0.0
)

FetchContent_MakeAvailable(${CMAKE_FIND_PACKAGE_NAME})
