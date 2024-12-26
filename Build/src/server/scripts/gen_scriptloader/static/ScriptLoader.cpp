/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

// This file was created automatically from your script configuration!
// Use CMake to reconfigure this file, never change it on your own!

/* #undef TRINITY_IS_DYNAMIC_SCRIPTLOADER */

#include "Define.h"

void AddArgusScripts();
void AddBattlefieldScripts();
void AddBattlegroundsScripts();
void AddBrokenIslesScripts();
void AddCommandsScripts();
void AddCustomScripts();
void AddDraenorScripts();
void AddDragonIslesScripts();
void AddEasternKingdomsScripts();
void AddEventsScripts();
void AddExilesReachScripts();
void AddKalimdorScripts();
void AddKhazAlgarScripts();
void AddKulTirasScripts();
void AddMaelstromScripts();
void AddNorthrendScripts();
void AddOutdoorPvPScripts();
void AddOutlandScripts();
void AddPandariaScripts();
void AddPetScripts();
void AddShadowlandsScripts();
void AddSpellsScripts();
void AddWorldScripts();
void AddZandalarScripts();

#ifdef TRINITY_IS_DYNAMIC_SCRIPTLOADER
#  include "revision_data.h"
#  define TC_SCRIPT_API TC_API_EXPORT
extern "C" {

/// Exposed in script modules to return the script module revision hash.
TC_SCRIPT_API char const* GetScriptModuleRevisionHash()
{
    return TRINITY_GIT_COMMIT_HASH;
}

/// Exposed in script module to return the name of the script module
/// contained in this shared library.
TC_SCRIPT_API char const* GetScriptModule()
{
    return "static";
}

#else
#  include "ScriptLoader.h"
#  define TC_SCRIPT_API
#endif

/// Exposed in script modules to register all scripts to the ScriptMgr.
TC_SCRIPT_API void AddScripts()
{
    AddArgusScripts();
    AddBattlefieldScripts();
    AddBattlegroundsScripts();
    AddBrokenIslesScripts();
    AddCommandsScripts();
    AddCustomScripts();
    AddDraenorScripts();
    AddDragonIslesScripts();
    AddEasternKingdomsScripts();
    AddEventsScripts();
    AddExilesReachScripts();
    AddKalimdorScripts();
    AddKhazAlgarScripts();
    AddKulTirasScripts();
    AddMaelstromScripts();
    AddNorthrendScripts();
    AddOutdoorPvPScripts();
    AddOutlandScripts();
    AddPandariaScripts();
    AddPetScripts();
    AddShadowlandsScripts();
    AddSpellsScripts();
    AddWorldScripts();
    AddZandalarScripts();
}

/// Exposed in script modules to get the build directive of the module.
TC_SCRIPT_API char const* GetBuildDirective()
{
    return _BUILD_DIRECTIVE;
}

#ifdef TRINITY_IS_DYNAMIC_SCRIPTLOADER
} // extern "C"
#endif
