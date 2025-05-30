# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_nav_goals_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED nav_goals_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(nav_goals_FOUND FALSE)
  elseif(NOT nav_goals_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(nav_goals_FOUND FALSE)
  endif()
  return()
endif()
set(_nav_goals_CONFIG_INCLUDED TRUE)

# output package information
if(NOT nav_goals_FIND_QUIETLY)
  message(STATUS "Found nav_goals: 0.0.0 (${nav_goals_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'nav_goals' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${nav_goals_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(nav_goals_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${nav_goals_DIR}/${_extra}")
endforeach()
