# check what platform we're on (64-bit or 32-bit), and create a simpler test than CMAKE_SIZEOF_VOID_P
if(CMAKE_SIZEOF_VOID_P MATCHES 8)
    set(PLATFORM 64)
    MESSAGE(STATUS "Detected 64-bit platform")
else()
    set(PLATFORM 32)
    MESSAGE(STATUS "Detected 32-bit platform")
endif()

if(CMAKE_SYSTEM_PROCESSOR MATCHES "amd64|x86_64|AMD64")
  set(TRINITY_SYSTEM_PROCESSOR "amd64")
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(arm|ARM|aarch)64$")
  set(TRINITY_SYSTEM_PROCESSOR "arm64")
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(arm|ARM)$")
  set(TRINITY_SYSTEM_PROCESSOR "arm")
else()
  set(TRINITY_SYSTEM_PROCESSOR "x86")
endif()

# detect MSVC special case of using cmake -A switch (which doesn't set any cross compiling variables)
if(CMAKE_GENERATOR_PLATFORM STREQUAL "Win32")
  set(TRINITY_SYSTEM_PROCESSOR "x86")
elseif(CMAKE_GENERATOR_PLATFORM STREQUAL "x64")
  set(TRINITY_SYSTEM_PROCESSOR "amd64")
elseif(CMAKE_GENERATOR_PLATFORM STREQUAL "ARM")
  set(TRINITY_SYSTEM_PROCESSOR "arm")
elseif(CMAKE_GENERATOR_PLATFORM STREQUAL "ARM64")
  set(TRINITY_SYSTEM_PROCESSOR "arm64")
endif()

message(STATUS "Detected ${TRINITY_SYSTEM_PROCESSOR} processor architecture")

if(WIN32)
  include("${CMAKE_SOURCE_DIR}/cmake/platform/win/settings.cmake")
elseif(UNIX)
  include("${CMAKE_SOURCE_DIR}/cmake/platform/unix/settings.cmake")
endif()

if(CMAKE_CXX_COMPILER_ID STREQUAL "MSVC" OR CMAKE_CXX_COMPILER_FRONTEND_VARIANT STREQUAL "MSVC")
  include("${CMAKE_SOURCE_DIR}/cmake/compiler/msvc/settings.cmake")
elseif(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  include("${CMAKE_SOURCE_DIR}/cmake/compiler/clang/settings.cmake")
elseif(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
  include("${CMAKE_SOURCE_DIR}/cmake/compiler/gcc/settings.cmake")
elseif(CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
  include("${CMAKE_SOURCE_DIR}/cmake/compiler/icc/settings.cmake")
endif()