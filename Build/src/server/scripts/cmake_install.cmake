# Install script for directory: C:/Users/Administrator/Desktop/TrinityCore/src/server/scripts

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/TrinityCore")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  
    foreach(SCRIPT_TO_UNINSTALL C:/Program Files (x86)/TrinityCore/scripts/scripts_argus.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_battlefield.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_battlegrounds.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_brokenisles.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_commands.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_custom.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_draenor.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_dragonisles.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_easternkingdoms.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_events.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_exilesreach.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_kalimdor.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_khazalgar.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_kultiras.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_maelstrom.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_northrend.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_outdoorpvp.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_outland.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_pandaria.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_pet.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_shadowlands.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_spells.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_world.dll;C:/Program Files (x86)/TrinityCore/scripts/scripts_zandalar.dll)
      if(EXISTS "${SCRIPT_TO_UNINSTALL}")
        message(STATUS "Uninstalling: ${SCRIPT_TO_UNINSTALL}")
        file(REMOVE "${SCRIPT_TO_UNINSTALL}")
      endif()
    endforeach()
  
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/Administrator/Desktop/TrinityCore/Build/src/server/scripts/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
