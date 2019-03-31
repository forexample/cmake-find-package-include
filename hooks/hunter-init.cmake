option(HUNTER_STATUS_DEBUG "..." ON)
set(HUNTER_CONFIGURATION_TYPES Release CACHE STRING "...")

include("${CMAKE_CURRENT_LIST_DIR}/HunterGate.cmake")

HunterGate(
    URL "https://github.com/ruslo/hunter/archive/e8e6ab14cb38e0661549c4eff30892b1bfd9a8f1.zip"
    SHA1 021aeb866cad86b9fa5a90b25f7c06e7b0ad74ea
)

set(
    CMAKE_FIND_PACKAGE_INCLUDE
    "${CMAKE_CURRENT_LIST_DIR}/hunter.cmake"
    CACHE
    PATH
    "..."
)
