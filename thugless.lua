local logo = "https://cdn.discordapp.com/attachments/881955889861509120/883073756468215808/s-l400.png"
local logo_size = Vector2.new(27, 27)
local image_get = http.Get(logo)
local logo_picture = g_Render:LoadImage(image_get, logo_size)


local auth = {
    pro = {
  		"XYZ"
    },
    dev = {
        "XYZ"
    }
}
local vars = {
    script_version = "1",
    username = cheat.GetCheatUserName(),
    up2date = "",
    build = nil
}
for key, value in pairs(auth.pro) do
    if(value == vars.username) then
        vars.build = "Pro"
    end
end
for key, value in pairs(auth.dev) do
    if(value == vars.username) then
        vars.build = "Dev"
    end
end

menu.Text("", "THUGLE$$  "   .. vars.username .. "!")
menu.Text("Thugle$$", "THUGLE$$" )
menu.Text("Thugle$$", "We want to give u this script that will make your HvH experience most better.")
cheat.AddNotify("Thugle$$", "Thanks for Buy & Welcome! " .. vars.username .. " ")
local options_combo = menu.Combo("Thugle$$ Menu", "Menu Selection", {"Anti-Aim", "Ragebot", "Visuals","Misc"}, 0)
local white = Color.new(0, 0, 0, 1.0)
local purple = Color.new(135/255, 101/255, 238/255, 1.0)
local dark_black = Color.new(9/255, 9/255, 8/255, 1)
local black = Color.new(10/255, 10/255, 11/255, 1)
local doubleline_black = Color.new(20/255, 20/255, 21/255, 1)
local outline_c = Color.new(28/255, 28/255, 29/255, 1)
local infotext_c = Color.new(54/255, 55/255, 55/255, 1) 
local dark_red = Color.new(142/255, 13/255, 13/255, 1)

-- aa
local aa_enabled = menu.Switch("Anti-Aim", "Enable Anti Aim", false, "Enables the antiaims")
local aa_freestand_boolean = menu.Switch("Anti-Aim", "Freestand", false, "Freestanding override key BIND THIS TO UR FREESTAND KEY")
local aa_manual_left = menu.Switch("Anti-Aim", "Manual Left", false, "Manual Left override key BIND THIS TO UR MANUAL LEFT KEY")
local aa_manual_right = menu.Switch("Anti-Aim", "Manual Right", false, "Manual Right override key BIND THIS TO UR MANUAL RIGHT KEY")

local aa_modes = menu.Combo("Anti-Aim", "Preset AA Mode", {"Custom", "Smart", "Low Delta"}, 0)
local aa_yaw = menu.Combo("Anti-Aim", "Yaw Base", {"At Target", "Backwards"}, 0)
local aa_brute_bool = menu.Switch("Anti-Aim", "Anti Bruteforce", false)
local aa_brute_mode = menu.Combo("Anti-Aim", "Anti Brute Mode", {"Smart", "Low Delta", "W.I.P"}, 0, "Different anti-bruteforce modes")

local anti_aim_legit_aa = menu.Switch("Anti-Aim", "Legit AA On E", false, "DONT BIND KEEP IT ALWAYS ENABLED")
local anti_aim_legit_aa_type = menu.Combo("Anti-Aim", "Legit AA Mode", {"Normal", "Low-delta", "Jitter"}, 0)
local anti_aim_safe_head = menu.Switch("Anti-Aim", "Safe Head", false)
local anti_aim_safe_head_health = menu.SliderInt("Anti-Aim", "If HP Lower Than", 70, 1, 101)

local aa_onshot = menu.Combo("Anti-Aim", "Override on shot AA", {"Off", "Jitter", "Opposite Fake" }, 0, "Onshot AA Override")
local aa_condition_type = menu.Combo("Anti-Aim", "AA Condition", {"Standing", "Slowmotion", "Moving" }, 0, "Anti-Aim conditions")

-- aa stand
local custom_builder_text = menu.Text("Anti-Aim", "[AA BUILDER]")
local aa_stand_fake_dropdown = menu.Combo("Anti-Aim", "Fake", {"Low Delta", "Custom" }, 0)
local aa_stand_custom_fake_slider = menu.SliderInt("Anti-Aim", "Fake Value", 0, 0, 58)
local aa_stand_jitter = menu.Switch("Anti-Aim", "Jitter", false, "Enables Jitter (NOT FULLY FINISHED)")

-- aa sw
local aa_slowm_fake_dropdown = menu.Combo("Anti-Aim", "Fake", {"Low Delta", "Custom" }, 0)
local aa_slowm_custom_fake_slider = menu.SliderInt("Anti-Aim", "[SM] Fake Value", 0, 0, 58)
local aa_sw_jitter = menu.Switch("Anti-Aim", "Jitter", false, "Enables Jitter (NOT FULLY FINISHED)")

-- aa move
local aa_move_fake_dropdown = menu.Combo("Anti-Aim", "Fake", {"Low Delta", "Custom" }, 0)
local aa_move_custom_fake_slider = menu.SliderInt("Anti-Aim", "Fake Value", 0, 0, 58)
local aa_move_jitter = menu.Switch("Anti-Aim", "Jitter", false, "Enables Jitter (NOT FULLY FINISHED)")
local rage_bot_enabled = menu.Switch("Ragebot", "Enable Ragebot Features", false)
local s_noscope_hc = menu.SliderInt("Misc", "Scout noscope hc", 0, 0, 100)
local a_noscope_hc = menu.SliderInt("Misc", "Auto noscope hc", 0,  0, 100)
local clan_tag_enabled = menu.Switch("Misc", "Clantag", false)
local leg_fucker_enabled = menu.Switch("Misc", "Leg Fucker", false)

ind_on = menu.Switch("Visuals", "Thugle$$ Indicators", false)
local crosshair_ind = menu.ComboColor("Visuals", "Thugle$$ Ind", {"Off", "ON"}, 0, dark_red, "You can choose the crosshair indicators")

local watermark_on = menu.SwitchColor("Visuals", "Watermark", false, purple, "Enables the watermark.")
local keybinds_on = menu.Switch("Visuals", "Keybind List", false, "Renders a keybind list (must have indicators enabled")
local Colors = { color = menu.ColorEdit("Visuals", "Binds Color", Color.new(135/255, 101/255, 238/255, 1.0)); }
local Colors2 = {  color = menu.ColorEdit("Visuals", "Mid Color", Color.new(135/255, 101/255, 238/255, 1.0));  }
local speclist_on = menu.Switch("Visuals", "Speclist", false, "Spectators List")
local bomb_indicator = menu.Switch("Visuals", "Bomb Indicator", false, "Skeet style bomb indicator")
local slider_y = menu.SliderInt("Visuals", "Position Y", 0, -521, 521)
local slider_x = menu.SliderInt("Visuals", "Position X", 0, -42, 1748)

local slider_y_spec = menu.SliderInt("Visuals", "Speclist Y", 0, -521, 521)
local slider_x_spec = menu.SliderInt("Visuals", "Speclist X", 0, -42, 1748)
local hitmarker_mode = menu.ComboColor("Visuals", " ", {"Off","Default"}, 0, purple, "(NOT WORKING) Advanced will not reset on hit")
local hitmarker_switch = menu.Switch("Visuals", " ", false)

local ideal_tick_conditions = menu.Combo("Ragebot", "Ideal Tick Conditions", {"Force Baim", "Force Safepoints"}, 0)
local ideal_tick_after_condition = menu.Combo("Ragebot", "After Ideal Tick", {"Fakelag", "Doubletap"}, 0)

local ideal_tick_var = menu.Switch("Ragebot", "Ideal Tick", false)
local safe_head_on_peek = menu.Switch("Ragebot", "Safe Head On Ideal Tick", false)
local baim_under_x = menu.SliderInt("Dangerous PRO", "Under HP Amount", 0, 0, 101)
local baim_under_x_bool = menu.Switch("Dangerous PRO", "Head Safety under HP", false)
local disable_multipoints_dt = menu.Switch("Dangerous PRO", "Smart DT Multipoints", false) -- dangerous pro

local hitmarker = {}
local misscount = 0
local hitmarkerTime = 0

local aa_invert = g_Config:FindVar("Aimbot", "Anti Aim", "Fake Angle", "Inverter")
local aa_fake_mode = g_Config:FindVar("Aimbot", "Anti Aim", "Fake Angle", "Fake Options")
local aa_freestand_dsy = g_Config:FindVar("Aimbot", "Anti Aim", "Fake Angle", "Freestanding Desync")
local sw_state = g_Config:FindVar("Aimbot", "Anti Aim", "Misc", "Slow Walk")
local stored_freestand = g_Config:FindVar("Aimbot", "Anti Aim", "Main", "Yaw Base")
local rage_bot_count = 0
local doge_fire_count = 0
local stored_yaw = g_Config:FindVar("Aimbot", "Anti Aim", "Main", "Yaw Add")
local stored_yaw_value = stored_yaw:GetInt()
local stored_invert = g_Config:FindVar("Aimbot", "Anti Aim", "Fake Angle", "Inverter")
local stored_invert_boolen = stored_invert:GetBool()
local stored_pitch = g_Config:FindVar("Aimbot", "Anti Aim", "Main", "Pitch")
local stored_yaw_base = g_Config:FindVar("Aimbot", "Anti Aim", "Main", "Yaw Base")
local stored_lby_mode = g_Config:FindVar("Aimbot", "Anti Aim", "Fake Angle", "LBY Mode")
local stored_modifier_degree = g_Config:FindVar("Aimbot", "Anti Aim", "Main", "Modifier Degree")
local stored_modifier_degree_value = stored_modifier_degree:GetInt()
local stored_pitch_value = stored_pitch:GetInt()
local stored_lby_mode_value = stored_lby_mode:GetInt()
local stored_slow_walk_type = g_Config:FindVar("Aimbot", "Anti Aim", "Misc", "Slow Walk")
local stored_left_desync = g_Config:FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit")
local stored_right_desync = g_Config:FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit")
local stored_left_desync_value = stored_left_desync:GetInt()
local stored_right_desync_value = stored_right_desync:GetInt()
local anti_aim_dodge_brute_count = 0
local anti_aim_dodge_brute_count_1 = 0
local jitter_count = 0
local jitter_desync_counter = 0 
local jitter_desync_counter_1 = 0 
local jitter_counter = 0

local ffi = require "ffi"
ffi.cdef[[
	typedef uintptr_t (__thiscall* GetClientEntity_4242425_t)(void*, int);
	typedef int(__fastcall* clantag_t)(const char*, const char*);
	int VirtualProtect(void* lpAddress, unsigned long dwSize, unsigned long flNewProtect, unsigned long* lpflOldProtect);
    typedef struct {
        unsigned short wYear;
        unsigned short wMonth;
        unsigned short wDayOfWeek;
        unsigned short wDay;
        unsigned short wHour;
        unsigned short wMinute;
        unsigned short wMilliseconds;
    } SYSTEMTIME, *LPSYSTEMTIME;
    
    void GetSystemTime(LPSYSTEMTIME lpSystemTime);
    void GetLocalTime(LPSYSTEMTIME lpSystemTime);
	typedef struct
	{
		float x;
		float y;
		float z;
	} Vector_t;

	typedef struct
	{
		char        pad0[0x60]; // 0x00
		void*       pEntity; // 0x60
		void*       pActiveWeapon; // 0x64
		void*       pLastActiveWeapon; // 0x68
		float        flLastUpdateTime; // 0x6C
		int            iLastUpdateFrame; // 0x70
		float        flLastUpdateIncrement; // 0x74
		float        flEyeYaw; // 0x78
		float        flEyePitch; // 0x7C
		float        flGoalFeetYaw; // 0x80
		float        flLastFeetYaw; // 0x84
		float        flMoveYaw; // 0x88
		float        flLastMoveYaw; // 0x8C // changes when moving/jumping/hitting ground
		float        flLeanAmount; // 0x90
		char        pad1[0x4]; // 0x94
		float        flFeetCycle; // 0x98 0 to 1
		float        flMoveWeight; // 0x9C 0 to 1
		float        flMoveWeightSmoothed; // 0xA0
		float        flDuckAmount; // 0xA4
		float        flHitGroundCycle; // 0xA8
		float        flRecrouchWeight; // 0xAC
		Vector_t    vecOrigin; // 0xB0
		Vector_t    vecLastOrigin;// 0xBC
		Vector_t    vecVelocity; // 0xC8
		Vector_t    vecVelocityNormalized; // 0xD4
		Vector_t    vecVelocityNormalizedNonZero; // 0xE0
		float        flVelocityLenght2D; // 0xEC
		float        flJumpFallVelocity; // 0xF0
		float        flSpeedNormalized; // 0xF4 // clamped velocity from 0 to 1
		float        flRunningSpeed; // 0xF8
		float        flDuckingSpeed; // 0xFC
		float        flDurationMoving; // 0x100
		float        flDurationStill; // 0x104
		bool        bOnGround; // 0x108
		bool        bHitGroundAnimation; // 0x109
		char        pad2[0x2]; // 0x10A
		float        flNextLowerBodyYawUpdateTime; // 0x10C
		float        flDurationInAir; // 0x110
		float        flLeftGroundHeight; // 0x114
		float        flHitGroundWeight; // 0x118 // from 0 to 1, is 1 when standing
		float        flWalkToRunTransition; // 0x11C // from 0 to 1, doesnt change when walking or crouching, only running
		char        pad3[0x4]; // 0x120
		float        flAffectedFraction; // 0x124 // affected while jumping and running, or when just jumping, 0 to 1
		char        pad4[0x208]; // 0x128
		float        flMinBodyYaw; // 0x330
		float        flMaxBodyYaw; // 0x334
		float        flMinPitch; //0x338
		float        flMaxPitch; // 0x33C
		int            iAnimsetVersion; // 0x340
	} CCSGOPlayerAnimationState_534535_t;
	
		typedef unsigned char BYTE;
	typedef void *PVOID;
	typedef PVOID HMODULE;
	typedef const char *LPCSTR;
	typedef int *FARPROC;
	
	HMODULE GetModuleHandleA(
		LPCSTR lpModuleName
	);
	
	FARPROC GetProcAddress(
		HMODULE hModule,
		LPCSTR  lpProcName
	);
	
	typedef struct{
		BYTE r, g, b, a;
	} Color;
	
	typedef void(__cdecl *ColorMsgFn)(Color&, const char*);
    typedef uintptr_t (__thiscall* GetClientEntity_4242425_t)(void*, int);
    struct c_animi_128983475223458080 { 
      char pad[ 3 ];
      char m_bForceWeaponUpdate; //0x4
      char pad1[ 91 ];
      void* m_pBaseEntity; //0x60
      void* m_pActiveWeapon; //0x64
      void* m_pLastActiveWeapon; //0x68
      float m_flLastClientSideAnimationUpdateTime; //0x6C
      int m_iLastClientSideAnimationUpdateFramecount; //0x70
      float m_flAnimUpdateDelta; //0x74
      float m_flEyeYaw; //0x78
      float m_flPitch; //0x7C
      float m_flGoalFeetYaw; //0x80
      float m_flCurrentFeetYaw; //0x84
      float m_flCurrentTorsoYaw; //0x88
      float m_flUnknownVelocityLean; //0x8C
      float m_flLeanAmount; //0x90
      char pad2[ 4 ];
      float m_flFeetCycle; //0x98
      float m_flFeetYawRate; //0x9C
      char pad3[ 4 ];
      float m_fDuckAmount; //0xA4
      float m_fLandingDuckAdditiveSomething; //0xA8
      char pad4[ 4 ];
      float m_vOriginX; //0xB0
      float m_vOriginY; //0xB4
      float m_vOriginZ; //0xB8
      float m_vLastOriginX; //0xBC
      float m_vLastOriginY; //0xC0
      float m_vLastOriginZ; //0xC4
      float m_vVelocityX; //0xC8
      float m_vVelocityY; //0xCC
      char pad5[ 4 ];
      float m_flUnknownFloat1; //0xD4
      char pad6[ 8 ];
      float m_flUnknownFloat2; //0xE0
      float m_flUnknownFloat3; //0xE4
      float m_flUnknown; //0xE8
      float m_flSpeed2D; //0xEC
      float m_flUpVelocity; //0xF0
      float m_flSpeedNormalized; //0xF4
      float m_flFeetSpeedForwardsOrSideWays; //0xF8
      float m_flFeetSpeedUnknownForwardOrSideways; //0xFC
      float m_flTimeSinceStartedMoving; //0x100
      float m_flTimeSinceStoppedMoving; //0x104
      bool m_bOnGround; //0x108
      bool m_bInHitGroundAnimation; //0x109
      float m_flTimeSinceInAir; //0x10A
      float m_flLastOriginZ; //0x10E
      float m_flHeadHeightOrOffsetFromHittingGroundAnimation; //0x112
      float m_flStopToFullRunningFraction; //0x116
      char pad7[ 4 ]; //0x11A
      float m_flMagicFraction; //0x11E
      char pad8[ 60 ]; //0x122
      float m_flWorldForce; //0x15E
      char pad9[ 462 ]; //0x162
      float m_flMaxYaw; //0x334
  };
]]

local stored_leg_movement = g_Config:FindVar("Aimbot", "Anti Aim", "Misc", "Leg Movement"):GetInt()
local entity_list_ptr = ffi.cast("void***", utils.CreateInterface("client.dll", "VClientEntityList003"))
local get_client_entity_fn = ffi.cast("GetClientEntity_4242425_t", entity_list_ptr[0][3])
local ffi_helpers = {
	get_animstate_offset = function()
		return 14612
	end,
	get_entity_address = function(ent_index)
		local addr = get_client_entity_fn(entity_list_ptr, ent_index)
		return addr
	end
}

local function menu_addon()
    if(not Cheat.IsMenuVisible())then return end
    local menu_sz = Render.GetMenuSize()
    local menu_pos = Render.GetMenuPos()

    Render.BoxFilled(Vector2.new(menu_pos.x,menu_pos.y - 7), Vector2.new(menu_pos.x + menu_sz.x, menu_pos.y - 50), Color.new(0.1, 0.1, 0.1, 0.8))
    g_Render:Image(logo_picture, Vector2.new(menu_pos.x + 10,menu_pos.y - 40), logo_size)
    g_Render:Text("THUGLE$$ OFFICIAL LUA", Vector2.new(menu_pos.x + 50,menu_pos.y - 38), Color.new(1.0, 1.0, 1.0, 1.0), 16, true)
end

local function dang_antiaims()
    local local_player_ent = g_EntityList:GetClientEntity(g_EngineClient:GetLocalPlayer())
    local local_player = local_player_ent:GetPlayer()
	local invert_spam_states = {true, false}
	local speed = get_speed(local_player)
	local flags = local_player:GetProp("m_fFlags")
	local local_health = local_player:GetProp("DT_BasePlayer", "m_iHealth")

  
    if aa_enabled:GetBool() then

	 if not aa_freestand_boolean:GetBool() or aa_manual_left:GetBool() or aa_manual_right:GetBool() then
		if aa_modes:GetInt() == 1 then -- smart mode

			if local_health >= 40 then
				aa_freestand_dsy:SetInt(2)
			else
				aa_freestand_dsy:SetInt(1)
			end
		
			antiaim.OverrideLimit(math.random(30, 48))
		end
		
		if aa_modes:GetInt() == 2 then -- low delta
			aa_freestand_dsy:SetInt(2)
			aa_fake_mode:SetInt(1)
			antiaim.OverrideLimit(math.random(15, 24))
		end

		if aa_modes:GetInt() == 0 then -- custom
        if local_player:GetProp("m_iHealth") > 0 then			
			if bit.band(flags, 1) == 0 then  -----------------------------in air
				antiaim.OverrideLimit(58)		
			elseif speed < 2 then
				if aa_stand_fake_dropdown:GetInt() == 1 then
					antiaim.OverrideLimit(aa_stand_custom_fake_slider:GetInt())
				else
					antiaim.OverrideLimit(35)
				end
				
			if aa_stand_jitter:GetBool() then
				antiaim.OverrideInverter(invert_spam_states[math.random(1, 2)])
			end

            elseif sw_state:GetBool() then
				if aa_slowm_fake_dropdown:GetInt() == 1 then
					antiaim.OverrideLimit(aa_slowm_custom_fake_slider:GetInt())
				else
					antiaim.OverrideLimit(35)
				end

				if aa_sw_jitter:GetBool() then
					antiaim.OverrideInverter(invert_spam_states[math.random(1, 2)])
				end

			elseif speed > 100 then
				if aa_move_fake_dropdown:GetInt() == 1 then
					antiaim.OverrideLimit(aa_move_custom_fake_slider:GetInt())
				else
					antiaim.OverrideLimit(35)
				end

				if aa_move_jitter:GetBool() then
					antiaim.OverrideInverter(invert_spam_states[math.random(1, 2)])
				end

			end

            end
        end
    end
end
	if aa_freestand_boolean:GetBool() then stored_freestand:SetInt(5) end
	if aa_manual_left:GetBool() then stored_freestand:SetInt(3) elseif aa_manual_right:GetBool() then stored_freestand:SetInt(2) end
	
end



local function aa_onshot_func()
		if aa_onshot:GetInt() == 0 then
			antiaim.OverrideDesyncOnShot(0)
		elseif aa_onshot:GetInt() == 1 then
			if g_GlobalVars.tickcount % 3 == 0 then
				antiaim.OverrideDesyncOnShot(math.random(1, 2))
			end
		elseif aa_onshot:GetInt() == 2 then
			antiaim.OverrideDesyncOnShot(4)
		end
end



local timer_now = -1

local function legit_aa(cmd)
    local anti_aim_legit_aa_boolen = anti_aim_legit_aa:GetBool()
if anti_aim_legit_aa_boolen == true then 
local anti_aim_legit_aa_type_int = anti_aim_legit_aa_type:GetInt()
	
local defuse = false
local local_id = g_EngineClient:GetLocalPlayer()
local local_player = g_EntityList:GetClientEntity(local_id)
if local_player == nil then return end
local local_origin = local_player:GetProp("DT_BaseEntity", "m_vecOrigin")
local localplayer = local_player:GetPlayer()
local pressing_e = cheat.IsKeyDown(0x45)


if pressing_e and anti_aim_legit_aa_type_int == 0  then 
    antiaim.OverridePitch(0)
    antiaim.OverrideYawOffset(-180)
    antiaim.OverrideLimit(60)
    antiaim.OverrideLBYOffset(60)
elseif pressing_e and anti_aim_legit_aa_type_int == 1 then
    antiaim.OverridePitch(0)
    antiaim.OverrideYawOffset(-180)
    antiaim.OverrideLimit(30)
    antiaim.OverrideLBYOffset(30)
elseif pressing_e and anti_aim_legit_aa_type_int == 2 then
    antiaim.OverridePitch(0)
    antiaim.OverrideYawOffset(math.random(-180, -173))
    antiaim.OverrideLimit(60)
    antiaim.OverrideLBYOffset(60)
else

end --]]

local entities = {}
table.insert(entities, g_EntityList:GetEntitiesByClassID(97))
table.insert(entities, g_EntityList:GetEntitiesByClassID(129))
if(localplayer:GetActiveWeapon():GetClassName() == "CC4") then  defuse = true goto continue end
for i in pairs(entities) do
    for j = 1, #entities[i] do
        if(local_origin:DistTo(entities[i][j]:GetProp("DT_BaseEntity", "m_vecOrigin")) < 90) then  defuse = true break end
    end
    if(defuse) then break end
end

::continue::

if (not defuse) and math.floor(g_GlobalVars.curtime) > timer_now + 0.3 and cheat.IsKeyDown(0x45) then
    g_EngineClient:ExecuteClientCmd("-use")
    g_EngineClient:ExecuteClientCmd("unbind e")
else
    g_EngineClient:ExecuteClientCmd("bind e +use")
end
end 
end --end legit AA




local onshot_counter = 0

local dt_recharge_count = 0

ffi.cdef[[
	typedef int(__fastcall* clantag_t)(const char*, const char*);
]]
local fn_change_clantag = utils.PatternScan("engine.dll", "53 56 57 8B DA 8B F9 FF 15")
local set_clantag = ffi.cast("clantag_t", fn_change_clantag)

local clantag_var = g_Config:FindVar("Miscellaneous", "Main", "Spammers", "Clantag")

local clant_tag = {
	"Thugle$$ ",
	"Thugle$$ ",
	"Thugle$$ ",
	"Thugle$$",
	"Thugle$$",
	"Thugle$$",
	"Thugle$",
	"Thugle",
	"Thugl",
	"Thug",
	"Thu",
	"Th",
	"T",
    "",
    "",
	"",
	"T",
	"Th",
	"Thu",
	"Thug",
	"Thugl",
	"Thugle",
	"Thugle$",
	"Thugle$$",
	"Thugle$$",
	"Thugle$$ ",
	"Thugle$$  ",
	"Thugle$$  ",
}

local old_time = 0

cheat.RegisterCallback("registered_shot", function() 
	rage_bot_count = rage_bot_count + 1
	dt_recharge_count = dt_recharge_count - dt_recharge_count
end) 

local dt_lethal = menu.Switch("Ragebot", "Lethal DT", false)
local faster_dt_recharge = menu.Switch("Ragebot", "Faster DT Recharge", false)



local faster_dt_recharge_timer_int = 0
local faster_dt_recharge_timer_boolen = false 

local faster_dt_recharge_timer_int_int = menu.SliderInt("Ragebot", "Recharge Delay", 15, 0, 300)
local faster_double_tap = menu.Switch("Ragebot", "Faster Doubletap", false)
local dang_dt_mode = menu.Combo("Ragebot", "DT Mode", {"Defensive", "Normal", "Dangerous", "Custom"}, 0)
local double_tap_speed = menu.SliderInt("Ragebot", "Custom Shift", 13, 10, 17)
faster_dt_recharge_func = function()
if faster_dt_recharge:GetBool() == true then 
	if rage_bot_count > 0 then 
		exploits.AllowCharge(false)
		faster_dt_recharge_timer_boolen = true 
	end 

	if dt_recharge_count > 100 then 
		rage_bot_count = rage_bot_count - rage_bot_count
		dt_recharge_count = dt_recharge_count - dt_recharge_count
	else 
		dt_recharge_count = dt_recharge_count + 1
	end 

	if rage_bot_count > 0 then 
		rage_bot_count = rage_bot_count - rage_bot_count
	end 
end 
end 

faster_dt_recharge_timer_func = function()
	if faster_dt_recharge_timer_boolen == true then 
		local faster_dt_recharge_timer_int_int_int = faster_dt_recharge_timer_int_int:GetInt()
		if faster_dt_recharge_timer_int >= faster_dt_recharge_timer_int_int_int then 
			exploits.AllowCharge(true)
			exploits.ForceCharge()
			faster_dt_recharge_timer_boolen = false
		else 
			faster_dt_recharge_timer_int = faster_dt_recharge_timer_int + 1
		end 
	else 		
		faster_dt_recharge_timer_int = faster_dt_recharge_timer_int - faster_dt_recharge_timer_int
	end 
end 

local stored_visible_dmg = g_Config:FindVar("Aimbot", "Ragebot", "Accuracy", "Minimum Damage")

local function vec_distance(vec_one, vec_two)

	local delta_x, delta_y, delta_z = vec_one.x - vec_two.x, vec_one.y - vec_two.y

	return math.sqrt(delta_x * delta_x + delta_y * delta_y)
end

local function get_closest_enemy()
	local best_dist = 170
	local best_enemy = nil
	local local_player = g_EntityList:GetClientEntity(g_EngineClient:GetLocalPlayer())
	local local_origin = local_player:GetProp("DT_BaseEntity", "m_vecOrigin")
	local local_screen_orig = g_Render:ScreenPosition(local_origin)
	local screen = g_EngineClient:GetScreenSize()

	for i = 1, g_GlobalVars.maxClients + 1 do
		local ent = g_EntityList:GetClientEntity(i)
		if ent and ent:IsPlayer() then
			local player = ent:GetPlayer()
			local health = player:GetProp("m_iHealth")

			if not player:IsTeamMate() and health > 0 and not player:IsDormant() then
				local origin = ent:GetProp("m_vecOrigin")
				local screen_orig = g_Render:ScreenPosition(origin)
				local temp_dist = vec_distance(Vector2.new(screen.x / 2, screen.y / 2), screen_orig)

				if (temp_dist < best_dist) then
					best_dist = temp_dist
					best_enemy = ent
				end
			end
		end
	end
	return best_enemy
end

local dmg = 0


local function hurt_function(e)

    local attacker = g_EngineClient:GetPlayerForUserId(e:GetInt("attacker"))

	if (e:GetName() == "player_hurt") and attacker == g_EngineClient:GetLocalPlayer() then

	 local userID = e:GetInt("userid", 0)	local player = g_EngineClient:GetPlayerForUserId(userID)	local get_player = g_EntityList:GetClientEntity(player):GetPlayer()	local hitgroup = e:GetInt("hitgroup", 0) local hitboxes = { 0, 3, 3, 16, 18, 11, 10, 0 }	local hitbox = hitboxes[hitgroup] if (hitbox == nil) then
		hitbox = hitboxes[2]	end

        timer = 0.5

        disabletime = g_GlobalVars.realtime + timer
        hitmarkerTime = timer
        
		if (hitbox == nil) then hitbox = hitboxes[2] end

        head = false  body = false leg_right = false leg_left = false arm_right = false arm_left = false
		if (hitbox == nil) then hitbox = hitboxes[2] end
		if (hitbox == 0) then head = true end
		if (hitbox == 3) then body = true end
		if (hitbox == 11) then leg_right = true end
		if (hitbox == 10) then leg_left = true end	
		if (hitbox == 16) then 	arm_right = true end
		if (hitbox == 18) then arm_left = true end
    
	 table.insert(hitmarker, {
		timer = 1;
	 })
    end
end



local function force_onshot_func(e)

if e:GetName() == "weapon_fire" then
	local user_id = e:GetInt("userid", -1)
	local user = g_EntityList:GetClientEntity(g_EngineClient:GetPlayerForUserId(user_id)) --Get Enemy Entity
	local local_player = g_EntityList:GetClientEntity(g_EngineClient:GetLocalPlayer()) --Get Local Entity
	local player = local_player:GetPlayer()
	local health = player:GetProp("m_iHealth")
	local lol2 = g_Config:FindVar("Aimbot", "Ragebot", "Main", "Enable Ragebot")
	
	if (health > 0) then
	
		local closest_enemy = get_closest_enemy()
		if (closest_enemy ~= nil and user:EntIndex() == closest_enemy:EntIndex()) then
			onshot_counter = onshot_counter + 1

			if onshot_counter < 0 then
				lol2:SetBool(false)
			else
				lol2:SetBool(true)
			end		

		end
	end

	doge_fire_count = doge_fire_count -- TODO fix later
end

	if e:GetName() == "player_death" then
		doge_fire_count = doge_fire_count
	end

end



double_tap = function()   
local faster_double_tap_boolen = faster_double_tap:GetBool()
if faster_double_tap_boolen == true then 
	local double_tap_type_int = double_tap_type:GetInt()
	
	exploits.OverrideDoubleTapSpeed(shifting)
end 
end


local stored_double_tap = g_Config:FindVar("Aimbot", "Ragebot", "Exploits", "Double Tap"):GetBool()
local stored_rage_bot = g_Config:FindVar("Aimbot", "Ragebot", "Main", "Enable Ragebot")




safe_head = function()
local player = g_EntityList:GetLocalPlayer()
local health = player:GetProp("m_iHealth")

if anti_aim_safe_head:GetBool() then
	if health < anti_aim_safe_head_health:GetInt() then
		stored_freestand:SetInt(5)
	else
		if aa_yaw:GetInt() == 0 then stored_freestand:SetInt(4) end
		if aa_yaw:GetInt() == 1 then stored_freestand:SetInt(1) end
	end
else
	if aa_yaw:GetInt() == 0 then stored_freestand:SetInt(4) end
	if aa_yaw:GetInt() == 1 then stored_freestand:SetInt(1) end
  end
end


local force_onshot = menu.Switch("Ragebot", "Force Onshot", false)
local force_onshot_max_time = menu.SliderInt("Ragebot", "Max Time", 50, 1, 100)
local force_onshot_counter = 0

foce_onshot = function()
if force_onshot:GetBool() and rage_bot_enabled:GetBool() then 
	if onshot_counter > 0 then 
		local force_onshot_max_time_int = force_onshot_max_time:GetInt()
		stored_rage_bot:SetBool(true)
		if force_onshot_max_time_int > force_onshot_counter then 
			force_onshot_counter = force_onshot_counter + 1
		else 
			onshot_counter = onshot_counter - onshot_counter
			force_onshot_counter = force_onshot_counter - force_onshot_counter
		end 
	else 
		stored_rage_bot:SetBool(false)
	end 
else 
	stored_rage_bot:SetBool(true)
end 
end 

local no_clan_tag = ""

disable_multipoints_dt:SetVisible(auth_pro == true)
 -- dangerous pro
baim_under_x_bool:SetVisible(auth_pro == true)
 -- dangerous pro
baim_under_x:SetVisible(auth_pro == true )


local stored_visible_dmg_value = stored_visible_dmg:GetInt()
local stored_safe_head = anti_aim_safe_head:GetBool()
local stored_safe_head_health = anti_aim_safe_head_health:GetInt()


local stored_safe_points = g_Config:FindVar("Aimbot", "Ragebot", "Misc", "Safe Points")
local stored_body_aim = g_Config:FindVar("Aimbot", "Ragebot", "Misc", "Body Aim")

local stored_safe_points_value = stored_safe_points:GetInt()
local stored_body_aim_value = stored_body_aim:GetInt()

local stored_head_scale = g_Config:FindVar("Aimbot", "Ragebot", "Accuracy", "Head Scale")
local stored_body_scale = g_Config:FindVar("Aimbot", "Ragebot", "Accuracy", "Body Scale")

local head_scale_value = stored_head_scale:GetInt()
local body_scale_value = stored_body_scale:GetInt()

local ideal_tick_counter = 0
local ideal_tick_boolen = false 
local ideal_tick_boolen_1 = false 

get_speed = function(entity)
	local entityvelocity0 = entity:GetProp("m_vecVelocity[0]")
	local entityvelocity1 = entity:GetProp("m_vecVelocity[1]")
	local entityspeed = math.sqrt(entityvelocity0 * entityvelocity0 + entityvelocity1 * entityvelocity1)
	return entityspeed
end

isInAir = function(entity)
	local flags = entity:GetProp("DT_BasePlayer", "m_fFlags")
	if bit.band(flags, 1) == 0 then return true else return false end
end

local baim_conditionss = { "Standing", "Moving", "In Air", "Crouching", "Slowwalking" }
function ideal_tick()
    local local_player = g_EntityList:GetClientEntity(g_EngineClient:GetLocalPlayer()):GetPlayer()
	is_alive = local_player:GetProp("DT_BasePlayer", "m_iHealth") > 0
	if not is_alive then return end
	local players = g_EntityList:GetPlayers()

	for _, player in ipairs(players) do
		if not player:IsTeamMate() then
			local user_index = player:EntIndex()
			local enemy_health = player:m_iHealth()

            if ideal_tick_var:GetBool() == true then 
                ideal_tick_boolen_1 = true 
                if ideal_tick_conditions:GetInt() == 0 then -- force baim
                    ragebot.EnableHitbox(user_index, 0, false)
                    ragebot.SetHitboxPriority(user_index, 2, 70)
                    ragebot.SetHitboxPriority(user_index, 3, 75)
                    ragebot.SetHitboxPriority(user_index, 5, 77)
                    ragebot.SetHitboxPriority(user_index, 4, 65)
                end 
                if ideal_tick_conditions:GetInt() == 1 then -- force safety
                    ragebot.ForceSafety(user_index)
                end 
                if safe_head_on_peek:GetBool() == true then 
                    anti_aim_safe_head:SetBool(true)
                    anti_aim_safe_head_health:SetInt(101)
                end 
                g_Config:FindVar("Aimbot", "Ragebot", "Exploits", "Double Tap"):SetBool(true)
                ragebot.OverrideMinDamage(user_index, 5)
                else 
                    if ideal_tick_boolen_1 == true then 
                        ideal_tick_boolen = true 
                    end 
                end 

		end
	end


end 

function C_BaseEntity:m_iHealth()
	return self:GetProp("m_iHealth")
  end

function ragebot_run()
    local local_player = g_EntityList:GetClientEntity(g_EngineClient:GetLocalPlayer()):GetPlayer()
	is_alive = local_player:GetProp("DT_BasePlayer", "m_iHealth") > 0
	if not is_alive then return end
	local players = g_EntityList:GetPlayers()

	for _, player in ipairs(players) do
		if not player:IsTeamMate() then
			local user_index = player:EntIndex()
			local enemy_health = player:m_iHealth()
			
         if baim_under_x_bool:GetBool() then
			if enemy_health <= baim_under_x:GetInt() then
				ragebot.ForceHitboxSafety(user_index, 0) -- head
				ragebot.EnableMultipoints(user_index, 0, false) -- head

				ragebot.SetHitboxPriority(user_index, 2, 5) -- pelv
				ragebot.SetHitboxPriority(user_index, 2, 70) -- pelv
				ragebot.SetHitboxPriority(user_index, 3, 85) -- stomach
				ragebot.SetHitboxPriority(user_index, 4, 72) -- lower
				ragebot.SetHitboxPriority(user_index, 5, 75) -- chest
				ragebot.SetHitboxPriority(user_index, 6, 68) -- upper
			end
		  end
		end
	end
end 

if auth_pro == true then -- dangerous pro
esp.CustomText("Force baim", "enemies", "HEAD SAFETY", function(ent)

	local entity = ent
		
	if entity and entity:IsPlayer() then
		local player = entity:GetPlayer()
		local enemy_health = player:m_iHealth()

		if player:GetProp("m_iHealth") > 0 and not player:IsDormant() and not player:IsTeamMate() then		
			    if enemy_health <= baim_under_x:GetInt() then
					return "HEAD SAFETY"
				end
		end
	end
end)
end



function reset_ideal_tick()
	if ideal_tick_boolen == true then 
		if ideal_tick_counter > 2 then 
				if ideal_tick_after_condition:GetInt() == 0 then 
					g_Config:FindVar("Aimbot", "Ragebot", "Exploits", "Double Tap"):SetBool(false)
				else 
					g_Config:FindVar("Aimbot", "Ragebot", "Exploits", "Double Tap"):SetBool(true)
				end
				g_Config:FindVar("Aimbot", "Ragebot", "Accuracy", "Head Scale"):SetInt(head_scale_value)
				g_Config:FindVar("Aimbot", "Ragebot", "Accuracy", "Body Scale"):SetInt(body_scale_value)
				g_Config:FindVar("Aimbot", "Ragebot", "Accuracy", "Body Aim"):SetInt(stored_body_aim_value)
				g_Config:FindVar("Aimbot", "Ragebot", "Exploits", "Double Tap"):SetBool(stored_double_tap)
				g_Config:FindVar("Aimbot", "Ragebot", "Accuracy", "Safe Points"):SetInt(stored_safe_points_value)
				anti_aim_safe_head:SetBool(stored_safe_head)
				anti_aim_safe_head_health:SetInt(stored_safe_head_health)
				g_Config:FindVar("Aimbot", "Ragebot", "Min. Damage", "Visible"):SetInt(stored_visible_dmg_value)	
				ideal_tick_boolen_1 = false 
				ideal_tick_boolen = false 
		else 
				ideal_tick_counter = ideal_tick_counter + 1
		end 
	else
		ideal_tick_counter = ideal_tick_counter - ideal_tick_counter
	end 
end

local stored_hit_chance = g_Config:FindVar("Aimbot", "Ragebot", "Accuracy", "Hit Chance")
local stored_hit_chance_value = stored_hit_chance:GetInt()

local reset_hitchance_boolen_1 = false 
local reset_hitchance_boolen = false 
local reset_hitchance_counter = 0 

local reset_min_dmg_boolen_1 = false 
local reset_min_dmg_boolen = false 
local reset_min_dmg_counter = 0 

local in_air = false 

local in_slowwalk = false 

local in_stand = false 

local in_move = false 

function update_menu() --biggest optimization UPDATE TODAY
	local rage_bot_enabled_bool = rage_bot_enabled:GetBool()

    --ragebot nigger
    rage_bot_enabled:SetVisible(options_combo:GetInt() == 1)
	dt_lethal:SetVisible(rage_bot_enabled_bool and options_combo:GetInt() == 1)
	faster_dt_recharge:SetVisible(rage_bot_enabled_bool and options_combo:GetInt() == 1)
	faster_dt_recharge_timer_int_int:SetVisible(rage_bot_enabled_bool and options_combo:GetInt() == 1)
	dang_dt_mode:SetVisible(rage_bot_enabled_bool and options_combo:GetInt() == 1)
	double_tap_speed:SetVisible(rage_bot_enabled_bool and options_combo:GetInt() == 1)
	faster_double_tap:SetVisible(rage_bot_enabled_bool and options_combo:GetInt() == 1)
	force_onshot:SetVisible(rage_bot_enabled_bool and options_combo:GetInt() == 1)
	force_onshot_max_time:SetVisible(rage_bot_enabled_bool and options_combo:GetInt() == 1)
	ideal_tick_var:SetVisible(rage_bot_enabled_bool and options_combo:GetInt() == 1)
	safe_head_on_peek:SetVisible(rage_bot_enabled_bool and options_combo:GetInt() == 1)
	ideal_tick_conditions:SetVisible(rage_bot_enabled_bool and options_combo:GetInt() == 1)
	ideal_tick_after_condition:SetVisible(rage_bot_enabled_bool and options_combo:GetInt() == 1)
    --aa menu stuff
    aa_enabled:SetVisible(options_combo:GetInt() == 0)
	anti_aim_legit_aa:SetVisible(aa_enabled:GetBool() and options_combo:GetInt() == 0)
	anti_aim_legit_aa_type:SetVisible(aa_enabled:GetBool() and options_combo:GetInt() == 0)
	anti_aim_safe_head:SetVisible(aa_enabled:GetBool() and options_combo:GetInt() == 0)
	anti_aim_safe_head_health:SetVisible(aa_enabled:GetBool() and options_combo:GetInt() == 0)
    aa_modes:SetVisible(aa_enabled:GetBool() and options_combo:GetInt() == 0)
    aa_brute_bool:SetVisible(aa_enabled:GetBool() and options_combo:GetInt() == 0)
    aa_brute_mode:SetVisible(aa_enabled:GetBool() and options_combo:GetInt() == 0)
    aa_manual_left:SetVisible(aa_enabled:GetBool() and options_combo:GetInt() == 0)
    aa_manual_right:SetVisible(aa_enabled:GetBool() and options_combo:GetInt() == 0)
    aa_yaw:SetVisible(aa_enabled:GetBool() and options_combo:GetInt() == 0)
    aa_onshot:SetVisible(aa_enabled:GetBool() and options_combo:GetInt() == 0)
    aa_freestand_boolean:SetVisible(aa_enabled:GetBool() and options_combo:GetInt() == 0)   
    aa_condition_type:SetVisible(aa_enabled:GetBool() and aa_modes:GetInt() == 0 and options_combo:GetInt() == 0)
    custom_builder_text:SetVisible(aa_enabled:GetBool() and aa_modes:GetInt() == 0 and options_combo:GetInt() == 0)
    aa_stand_fake_dropdown:SetVisible(aa_enabled:GetBool() and aa_condition_type:GetInt() == 0 and aa_modes:GetInt() == 0 and options_combo:GetInt() == 0)
    aa_stand_custom_fake_slider:SetVisible(aa_enabled:GetBool() and aa_condition_type:GetInt() == 0 and aa_stand_fake_dropdown:GetInt() > 0 and aa_modes:GetInt() == 0 and options_combo:GetInt() == 0)
    aa_stand_jitter:SetVisible(aa_enabled:GetBool() and aa_condition_type:GetInt() == 0 and aa_modes:GetInt() == 0 and options_combo:GetInt() == 0)
    aa_slowm_fake_dropdown:SetVisible(aa_enabled:GetBool() and aa_condition_type:GetInt() == 1 and aa_modes:GetInt() == 0 and options_combo:GetInt() == 0)
    aa_slowm_custom_fake_slider:SetVisible(aa_enabled:GetBool() and aa_condition_type:GetInt() == 1 and aa_slowm_fake_dropdown:GetInt() > 0 and aa_modes:GetInt() == 0 and options_combo:GetInt() == 0)
    aa_sw_jitter:SetVisible(aa_enabled:GetBool() and aa_condition_type:GetInt() == 1 and options_combo:GetInt() == 0)
    aa_move_fake_dropdown:SetVisible(aa_enabled:GetBool() and aa_condition_type:GetInt() == 2 and aa_modes:GetInt() == 0 and options_combo:GetInt() == 0)
    aa_move_custom_fake_slider:SetVisible(aa_enabled:GetBool() and aa_condition_type:GetInt() == 2 and aa_move_fake_dropdown:GetInt() > 0 and aa_modes:GetInt() == 0 and options_combo:GetInt() == 0)
    aa_move_jitter:SetVisible(aa_enabled:GetBool() and aa_condition_type:GetInt() == 2 and aa_modes:GetInt() == 0 and options_combo:GetInt() == 0)

    --Visuals fuck niggers 
    ind_on:SetVisible(options_combo:GetInt() == 2)
    crosshair_ind:SetVisible(options_combo:GetInt() == 2)
    watermark_on:SetVisible(options_combo:GetInt() == 2)
    keybinds_on:SetVisible(options_combo:GetInt() == 2)
    speclist_on:SetVisible(options_combo:GetInt() == 2)
    bomb_indicator:SetVisible(options_combo:GetInt() == 2)
    hitmarker_switch:SetVisible(options_combo:GetInt() == 2)
    hitmarker_mode:SetVisible(options_combo:GetInt() == 2)
    Colors.color:SetVisible(options_combo:GetInt() == 2)
    Colors2.color:SetVisible(options_combo:GetInt() == 2)
    slider_y:SetVisible(options_combo:GetInt() == 2)
    slider_x:SetVisible(options_combo:GetInt() == 2)
    slider_y_spec:SetVisible(options_combo:GetInt() == 2)
    slider_x_spec:SetVisible(options_combo:GetInt() == 2)

    --MISC NIGGER SHIT
    s_noscope_hc:SetVisible(options_combo:GetInt() == 3)
    a_noscope_hc:SetVisible(options_combo:GetInt() == 3)
    clan_tag_enabled:SetVisible(options_combo:GetInt() == 3)
    leg_fucker_enabled:SetVisible(options_combo:GetInt() == 3)
end 

cheat.RegisterCallback("createmove", function()
   

	if dt_lethal:GetBool() == true then 
        local local_player = g_EntityList:GetClientEntity(g_EngineClient:GetLocalPlayer()):GetPlayer()
        is_alive = local_player:GetProp("DT_BasePlayer", "m_iHealth") > 0
        if not is_alive then return end
        local players = g_EntityList:GetPlayers()
    
        for _, player in ipairs(players) do
            if not player:IsTeamMate() then
                local user_index = player:EntIndex()
						
						local health = player:GetProp("m_iHealth")
						if health > 0 then 
							if health > 90 then 
								dmg = 50
							end
							if health < 50 then 
								dmg = 30
						end
                        ragebot.OverrideMinDamage(user_index, dmg)
					end
            end
        end
    end
end)


cheat.RegisterCallback("destroy", function() 
	stored_visible_dmg:SetInt(stored_visible_dmg_value)
	stored_hit_chance:SetInt(stored_hit_chance_value)
	stored_head_scale:SetInt(head_scale_value)
	stored_body_scale:SetInt(body_scale_value)
	stored_body_aim:SetInt(stored_body_aim_value)
	stored_safe_points:SetInt(stored_safe_points_value)
end)

local function reset_min_dmg()
if reset_min_dmg_boolen == true then 
	if reset_min_dmg_counter > 1 then 
		stored_visible_dmg:SetInt(stored_visible_dmg_value)
		reset_min_dmg_boolen_1 = false 
		reset_min_dmg_boolen = false 
	else 
		reset_min_dmg_counter = reset_min_dmg_counter + 1
	end 
else
	reset_min_dmg_counter = reset_min_dmg_counter - reset_min_dmg_counter
end 
end 


-- desync shit
local normaali_y = function ( f_value )
  while f_value < -180 do
      f_value = f_value + 360.0;
  end
  while f_value > 180 do
      f_value = f_value - 360.0;
  end
  return f_value;
end
local klamppi = function( value, low, high ) 
  if value <= low then
      return low
  end
  if value >= high then
      return high
  end
  return value
end
local dsy_max = function()        
      local _ent_idx = g_EngineClient:GetLocalPlayer()
      local _ent = g_EntityList:GetClientEntity(_ent_idx)
      local local_player = _ent:GetPlayer()
      local animi = ffi.cast("struct c_animi_128983475223458080**", ffi_helpers.get_entity_address( local_player:EntIndex() ) + 0x3914 )[0]
      if not animi then return 0.0; end
      local vauhti_f = klamppi(animi.m_flFeetSpeedForwardsOrSideWays, 0.0, 1.0);
      local vauhti = (animi.m_flStopToFullRunningFraction * -0.3 - 0.2) * vauhti_f + 1.0;
      local duck_amount = animi.m_fDuckAmount;
      if  duck_amount > 0.0 then
          local vauhti2 = klamppi(animi.m_flFeetSpeedUnknownForwardOrSideways, 0.0, 1.0);
          local kyykky = duck_amount * vauhti2;
          vauhti = vauhti + ( kyykky * (0.5 - vauhti) );
      end
      return animi.m_flMaxYaw * vauhti;
end

local dsy_value = 0

local function on_createmove()
  local dsy_amount = antiaim.GetFakeRotation()
  local real_amount = antiaim.GetCurrentRealRotation()
  local dsy_d =  dsy_max( )
  local diff_d = math.abs(  normaali_y( real_amount - dsy_amount )  )
  dsy_value = math.min(diff_d / antiaim.GetMaxDesyncDelta(), 1.0) * dsy_d
end
-- desync shit end

cheat.RegisterCallback( "createmove", on_createmove )






local animations = {
	-- vars
	speed = 1.0,
	stored_values = {},
	active_this_frame = {},
	prev_realtime = g_GlobalVars.realtime,
    realtime = g_GlobalVars.realtime,
    multiplier = 0.0,

	-- utils
    clamp = function(v, min, max)
		return ((v > max) and max) or ((v < min) and min or v)
	end,

	-- internal stuff
    new_frame = function(self)
    	self.prev_realtime = self.realtime
        self.realtime = g_GlobalVars.realtime
        self.multiplier = (self.realtime - self.prev_realtime) * self.speed
        
        for k, v in pairs(self.stored_values) do
            if self.active_this_frame[k] ~= nil then goto continue end
			self.stored_values[k] = nil
			::continue::
        end 

        self.active_this_frame = {}
    end,
    reset = function(self, name)
        self.stored_values[name] = nil
    end,
    
    -- animator
    animate = function (self, name, decrement, max_value)
        max_value = max_value or 1.0
		decrement = decrement or false

        local frames = self.multiplier * (decrement and -1 or 1)

		local v = self.clamp(self.stored_values[name] and self.stored_values[name] or 0.0, 0.0, max_value) 
        v = self.clamp(v + frames, 0.0, max_value)

        self.stored_values[name] = v
        self.active_this_frame[name] = true

        return v
    end
}

local bomb = {
    isRender = true,
    Color_gray = Color.new(0, 0, 0, 0.2),
    GetPointer = function()
        local entity = g_EntityList:GetEntitiesByName("CPlantedC4")
        if #entity > 0 then return entity[1] end
        return nil
    end,

    GetTime = function(pointer)
        if not pointer then return nil end
        return {    limit = pointer:GetProp("DT_PlantedC4", "m_flTimerLength"),
                    remains = pointer:GetProp("DT_PlantedC4", "m_flC4Blow") - g_GlobalVars.curtime,
                    defuse = pointer:GetProp("DT_PlantedC4", "m_flDefuseCountDown") - g_GlobalVars.curtime,
                    position = pointer:GetProp("DT_BaseEntity", "m_vecOrigin"),
                    defuser = pointer:GetProp("DT_PlantedC4", "m_hBombDefuser")
    
        }
    end,
    handle = function(self) 
        animations:new_frame()

		if not self.isRender then return false end
        local bomb_info = self.GetTime(self.GetPointer())
        if not bomb_info or bomb_info.remains < 0 then 
            return 
        end

        local should_decrement = bomb_info.remains < 2 or not self.isRender
        local alpha = animations:animate("testing", should_decrement)
    
        if alpha == 0.0 then return end

        if bomb_info.defuser == -1 then bomb_info.defuse = 0 end
        local screenhomma = g_EngineClient:GetScreenSize() / 2
        local screenhomma2 = g_EngineClient:GetScreenSize()
        local textsize = g_Render:CalcTextSize(string.format("%.1f", bomb_info.remains), 16)
        local Color = Color.new(1 - bomb_info.remains / bomb_info.limit, bomb_info.remains / bomb_info.limit, 0, alpha)
        local Color2 = Color.new(1 - bomb_info.remains / bomb_info.limit, bomb_info.remains / bomb_info.limit, 0, alpha)

        if bomb_indicator:GetBool() then
			g_Render:WeaponIcon(49, Vector2.new(24, - 25 + bomb_info.remains * 28), Color.new(1.0, 1.0, alpha), 34)
			g_Render:Text(string.format("%.1f", bomb_info.remains), Vector2.new(80 - textsize.x/2, - 22 + bomb_info.remains * 28), Color, 25, true)
			g_Render:BoxFilled(Vector2.new(0, 0), Vector2.new(16, 1 + bomb_info.remains * 28), Color2)
		end
    
    end

}

local dt_toggled = g_Config:FindVar("Aimbot", "Ragebot", "Exploits", "Double Tap")
local yaw_base = g_Config:FindVar("Aimbot", "Anti Aim", "Main", "Yaw Base")
local lby_base = g_Config:FindVar("Aimbot", "Anti Aim", "Fake Angle", "LBY Mode")


local font = g_Render:InitFont("Verdana Bold", 14, true)
local OldChoke = 0
local toDraw2 = 0
local toDraw1 = 0
local toDraw0 = 0

local websitestring = "https://cdn.discordapp.com/attachments/881955889861509120/883073756468215808/s-l400.png"
local image_size = Vector2.new(42 / 2, 42 / 2)
local bytes = http.Get(websitestring)
local profile_picture = g_Render:LoadImage(bytes, image_size)
local watermark_font = g_Render:InitFont("Verdana", 18, true)

local function multipoints()
	for i=1, g_GlobalVars.maxClients do
		local entity = g_EntityList:GetClientEntity(i)
		
		if entity and entity:IsPlayer() then
			local player = entity:GetPlayer()
			
			if player:GetProp("m_iHealth") > 0 and not player:IsDormant() and not player:IsTeamMate() then
				for i=0, 18 do
					ragebot.EnableMultipoints(player:EntIndex(), i, false)
				end
			end
		end
	end
end


local function doubletap_func()
	
 if faster_double_tap:GetBool() then

	if dang_dt_mode:GetInt() == 0 then
		exploits.OverrideDoubleTapSpeed(11)
	end
	if dang_dt_mode:GetInt() == 1 then
		exploits.OverrideDoubleTapSpeed(14)
	end
	if dang_dt_mode:GetInt() == 2 then
		exploits.OverrideDoubleTapSpeed(16)
	end
	if dang_dt_mode:GetInt() == 3 then
		exploits.OverrideDoubleTapSpeed(double_tap_speed:GetInt())
	end

	if disable_multipoints_dt:GetBool() and exploits.GetCharge() == 1 then
		multipoints()
	end
 end

end


local function draw_hit_related()

	local screen = g_EngineClient:GetScreenSize() / 2
  
		for i = 1, table.getn(hitmarker), 1 do
			if(hitmarker[i] == nil) then return end
			hitmarker[i].timer = hitmarker[i].timer - 0.008            
			local p2 = 255 * (disabletime - g_GlobalVars.realtime) / hitmarkerTime
			local p3 = 50 * hitmarker[i].timer
			c_color = hitmarker_mode:GetColor()		
  
			-- Simple
		if hitmarker_switch:GetBool() then
			if hitmarker_mode:GetInt() == 0 then
				g_Render:PolyFilled(color2, Vector2.new(screen.x - 1 - p2 / 6, screen.y - 1 - p2 / 6), Vector2.new(screen.x - 6 - p2 / 6 , screen.y - 10 - p2 / 6), Vector2.new(screen.x - 8 - p2 / 6, screen.y - 7 - p2 / 6 ))
				g_Render:PolyFilled(color2, Vector2.new(screen.x + 1 + p2 / 6, screen.y + 1  + p2 / 6), Vector2.new(screen.x + 6 + p2 / 6 , screen.y + 10 + p2 / 6), Vector2.new(screen.x + 8 + p2 / 6, screen.y + 7 + p2 / 6))
				g_Render:PolyFilled(color2, Vector2.new(screen.x + p2 / 6, screen.y - p2 / 6), Vector2.new(screen.x + 6 + p2/ 6 , screen.y - 10  - p2 / 6), Vector2.new(screen.x + 10 + p2 / 6, screen.y - 7 - p2 / 6))
				g_Render:PolyFilled(color2, Vector2.new(screen.x - p2 / 6, screen.y + p2 / 6), Vector2.new(screen.x - 6 - p2/ 6, screen.y + 10 + p2 / 6), Vector2.new(screen.x - 10 - p2 / 6, screen.y + 7  + p2 / 6))
			end
  
			-- Advanced
			if hitmarker_mode:GetInt() == 1 then  
				g_Render:PolyFilled(color, Vector2.new(screen.x - 1 - p3  , screen.y - 1 - p3), Vector2.new(screen.x - 6  - p3 , screen.y - 10 - p3), Vector2.new(screen.x - 8  - p3 , screen.y - 7  - p3 ))
				g_Render:PolyFilled(color, Vector2.new(screen.x + 1   + p3 , screen.y + 1  + p3), Vector2.new(screen.x + 6  + p3 , screen.y + 10  + p3), Vector2.new(screen.x + 8 + p3  , screen.y + 7 + p3))
				g_Render:PolyFilled(color, Vector2.new(screen.x + p3, screen.y - p3 ), Vector2.new(screen.x + 6 + p3 , screen.y - 10 - p3 ), Vector2.new(screen.x + 10  + p3, screen.y - 7 - p3 ))
				g_Render:PolyFilled(color, Vector2.new(screen.x - p3 , screen.y + p3 ), Vector2.new(screen.x - 6 - p3 , screen.y + 10 + p3 ), Vector2.new(screen.x - 10 - p3 , screen.y + 7  + p3 ))
			end 
			if (hitmarker[i].timer <= 0) then
				table.remove(hitmarker, i)
			end
		end
	end
  end


local function antiaim_brute(e)

	if e:GetName() == "weapon_fire" then
		local user_id = e:GetInt("userid", -1)
		local user = g_EntityList:GetClientEntity(g_EngineClient:GetPlayerForUserId(user_id)) --Get Enemy Entity
		local local_player = g_EntityList:GetClientEntity(g_EngineClient:GetLocalPlayer()) --Get Local Entity
		local player = local_player:GetPlayer()
		local health = player:GetProp("m_iHealth")

		if (health > 0) then

			local closest_enemy = get_closest_enemy()
			if (closest_enemy ~= nil and user:EntIndex() == closest_enemy:EntIndex()) and aa_brute_bool:GetBool() then
				misscount = misscount + 1

      if aa_brute_mode:GetInt() == 0 then -- smart
		
				if (misscount % 3 == 0) then -- 1

					
				    antiaim.OverrideLimit(50)
					aa_invert:SetBool(true)
         -- cheat.AddEvent("BRUTE SIDE: LEFT")
				  --print("BRUTE SIDE: LEFT")
				else
					if (misscount % 3 == 1) then -- 2
						antiaim.OverrideLimit(40)
						aa_invert:SetBool(false)
            
            --cheat.AddEvent("BRUTE SIDE: RIGHT")
            --print("BRUTE SIDE: RIGHT")
					else
						if (misscount % 3 == 2) then -- 3
							antiaim.OverrideLimit(13)

              --cheat.AddEvent("BRUTE SIDE: R")
              --print("BRUTE SIDE: R")
						end
					end
				end
      end

      if aa_brute_mode:GetInt() == 1 then -- low delta
        if (misscount % 3 == 0) then -- 1
			antiaim.OverrideLimit(16)
			aa_invert:SetBool(true)
          
        else
          if (misscount % 3 == 1) then -- 1
			antiaim.OverrideLimit(24)
			aa_invert:SetBool(false)
           
          else
            if (misscount % 3 == 2) then -- 3
				antiaim.OverrideLimit(13)
              
            end
          end
        end
      end

      if aa_brute_mode:GetInt() == 2 then -- placeholder make mode
        
      end

			end
		end
	end
end

local v_font = g_Render:InitFont("Tahoma", 12, true)



local function Indicators_dangerous()

	local pos_y_sp = slider_y_spec:GetInt()
	local pos_x_sp = slider_x_spec:GetInt()
	local screen_size = g_EngineClient:GetScreenSize()
	local screen_half = g_EngineClient:GetScreenSize() / 2

	if g_EngineClient:IsInGame() and g_EngineClient:IsConnected() then

		if watermark_on:GetBool() then

			water_color = watermark_on:GetColor()

			local watermark_string = ""

			local aika = ffi.new("SYSTEMTIME") 
			ffi.C.GetLocalTime(aika)

			--if username:len() > 11 then -- nimen pituuden cappays 10 char
			--	username = username:sub(1, 11)
			--end

			if auth_dev == true then
				watermark_string = "Thugle$$".." | ".. vars.username .. " | " .. "dev" .. " | " .. string.format("%02d:%02d", aika.wHour, aika.wMinute)
			elseif auth_pro == true then
				watermark_string = "Thugle$$".." | ".. vars.username .. " | " .. "pro" .. " | " .. string.format("%02d:%02d", aika.wHour, aika.wMinute)
			else
				watermark_string = "Thugle$$".." | ".. vars.username .. " | " .. "BETA USER" .. " | " .. string.format("%02d:%02d", aika.wHour, aika.wMinute)
			end
			

			local w_string_size = g_Render:CalcTextSize(watermark_string, 16)

			
			g_Render:GradientBoxFilled(Vector2.new(screen_size.x - 145, 30), Vector2.new(screen_size.x - 34, 53), Color.new(39/255, 39/255, 38/255, 0.9), Color.new(39/255, 39/255, 38/255, 0), Color.new(39/255, 39/255, 38/255, 0.9), Color.new(39/255, 39/255, 38/255, 0)) -- top mid
			g_Render:BoxFilled(Vector2.new(screen_size.x - w_string_size.x - 88, 30), Vector2.new(screen_size.x - 145, 53), Color.new(39/255, 39/255, 38/255, 0.9))
			g_Render:GradientBoxFilled(Vector2.new(screen_size.x - w_string_size.x - 87, 31), Vector2.new(screen_size.x - 34, 32), water_color, water_color, water_color,water_color) -- top mid
			--g_Render:CircleFilled(Vector2.new(screen_size.x - w_string_size.x - 82, 43), 25, 30, Color.new(39/255, 39/255, 38/255, 0.9))
			g_Render:Image(profile_picture, Vector2.new(screen_size.x - w_string_size.x - 83, 32), image_size)
			g_Render:Text(watermark_string, Vector2.new(screen_size.x - w_string_size.x - 55, 32), Color.new(1.0, 1.0, 1.0, 1.0), 16, watermark_font, true)
		end
	end

	if g_EngineClient:IsInGame() and g_EngineClient:IsConnected() then

		local title_box_c = Color.new(58/255, 56/255, 61/255, 1)
		local frame_box_c = Color.new(39/255, 39/255, 38/255, 1) 
		local sliders_box_c = Color.new(63/255, 61/255, 65/255, 1) 


		local me = g_EntityList:GetClientEntity(g_EngineClient:GetLocalPlayer()):GetPlayer()
    
	if speclist_on:GetBool() then
    is_alive = me:GetProp("DT_BasePlayer", "m_iHealth") > 0 -- speclist start
    local screen_size = g_EngineClient:GetScreenSize() / 2
    local spectator_name = { }
    local spectators = 0

    speclist_line = Colors.color:GetColor()

	g_Render:BoxFilled(Vector2.new(35 + pos_x_sp, screen_size.y - 0 + pos_y_sp), Vector2.new(82 + pos_x_sp, screen_size.y - 1 + pos_y_sp), water_color)
    g_Render:Text("spectators", Vector2.new(35 + pos_x_sp, screen_size.y - 15 + pos_y_sp), Color.new(1, 1, 1, 1), 12, v_font, true)


    local game_rules = g_EntityList:GetGameRules()

      if game_rules:GetProp("DT_CSGameRulesProxy", "m_bFreezePeriod") then
        return 
      end

      if not is_alive then
        return
      end
    
      for i = 1, g_GlobalVars.maxClients + 1 do

        local entity = g_EntityList:GetClientEntity(i)
        local localplayer = g_EntityList:GetClientEntity(g_EngineClient:GetLocalPlayer())
        if entity and entity:IsPlayer() then
            player = entity:GetPlayer()
            if player == nil or player:IsDormant() then goto skip end
                
                spectator_h = player:GetProp("m_hObserverTarget")
                is_spectator = g_EntityList:GetClientEntityFromHandle(spectator_h)
                if is_spectator == nil then goto skip end

                if is_spectator == localplayer then
                    spectator_name[ spectators ] = player:GetName() 
                    spectators = spectators + 1
                end   
                ::skip:: 
              end
      end

      if game_rules:GetProp("DT_CSGameRulesProxy", "m_bFreezePeriod") then  spectators = 0 end

      for i = 0, spectators, 1 do
        if spectator_name[ i ] == nil then break end

        if spectator_name[ i ]:len() > 10 then -- nimen pituuden cappays 10 char
          spectator_name[ i ] = spectator_name[ i ]:sub(1, 10)
        end

        g_Render:Text(spectator_name[ i ], Vector2.new(35 + pos_x_sp, screen_size.y + 2 + i * 15 + pos_y_sp), Color.new(1, 1, 1, 1), 12, v_font, true)
      end -- speclist end
	end


		local me = g_EntityList:GetClientEntity(g_EngineClient:GetLocalPlayer()):GetPlayer()
		is_elossa = me:GetProp("DT_BasePlayer", "m_iHealth") > 0
		local screenx = g_EngineClient:GetScreenSize().x / 2
		local screeny = g_EngineClient:GetScreenSize().y / 2
		norm_color = Colors.color:GetColor()
		mid_color = Colors2.color:GetColor()
		local pos_y = slider_y:GetInt()
		local pos_x = slider_x:GetInt()

		local game_rules = g_EntityList:GetGameRules()
		fl_value = g_ClientState.m_choked_commands
		dt_value = exploits.GetCharge()

	if game_rules:GetProp("DT_CSGameRulesProxy", "m_bFreezePeriod") then  return  end
	if not is_elossa then  return  end

	-- cols

		left_c = Color.new(0, 0, 0, 0.5)
		right_c = Color.new(0, 0, 0, 0.5)
		left_a_c = Color.new(0, 0, 0, 0.5)
		right_a_c = Color.new(0, 0, 0, 0.5)

	if g_ClientState.m_choked_commands < OldChoke then --sent
		toDraw0 = toDraw1
		toDraw1 = toDraw2
		toDraw2 = OldChoke
	end
	OldChoke = g_ClientState.m_choked_commands

	-- dangerous yaw indicator
	if ind_on:GetBool() then
		g_Render:BoxFilled(Vector2.new(10 + pos_x,  screeny + pos_y), Vector2.new(200 + pos_x, screeny + 66 + pos_y), frame_box_c)
		g_Render:BoxFilled(Vector2.new(10 + pos_x,  screeny + pos_y), Vector2.new(200 + pos_x, screeny + 18 + pos_y), title_box_c)
		g_Render:Text("    Thugle$$", Vector2.new(52 + pos_x, screeny + 2 + pos_y), Color.new(1.0, 1.0, 1.0, 1), 13, font, true)

		g_Render:Text("Desync", Vector2.new(15 + pos_x, screeny + 20 + pos_y), Color.new(1.0, 1.0, 1.0, 1), 13, font, true)
		g_Render:Text("Choke", Vector2.new(15 + pos_x, screeny + 34 + pos_y), Color.new(1.0, 1.0, 1.0, 1), 13, font, true)
		g_Render:Text("Charge", Vector2.new(15 + pos_x, screeny + 48 + pos_y), Color.new(1.0, 1.0, 1.0, 1), 13, font, true)

		g_Render:Text(string.format('%i', dsy_value), Vector2.new(180 + pos_x, screeny + 20 + pos_y), Color.new(1.0, 1.0, 1.0, 1), 13, font, true)
		g_Render:Text(string.format('%i', toDraw1), Vector2.new(180 + pos_x, screeny + 34 + pos_y), Color.new(1.0, 1.0, 1.0, 1), 13, font, true)
		g_Render:Text(string.format('%i', dt_value), Vector2.new(180 + pos_x, screeny + 48 + pos_y), Color.new(1.0, 1.0, 1.0, 1), 13, font, true)

		-- gradient hell
		g_Render:GradientBoxFilled(Vector2.new(50 + pos_x, screeny + pos_y), Vector2.new(154 + pos_x, screeny + 1 + pos_y), mid_color, mid_color, mid_color, mid_color) -- top mid
		g_Render:GradientBoxFilled(Vector2.new(159 + pos_x, screeny + pos_y), Vector2.new(200 + pos_x, screeny + 1 + pos_y),  norm_color, norm_color, norm_color, norm_color) -- top end
		g_Render:GradientBoxFilled(Vector2.new(10 + pos_x, screeny + pos_y), Vector2.new(54 + pos_x, screeny + 1 + pos_y), norm_color, mid_color, norm_color, mid_color) -- top start fade
		g_Render:GradientBoxFilled(Vector2.new(154 + pos_x, screeny + pos_y), Vector2.new(195 + pos_x, screeny + 1 + pos_y), mid_color, norm_color, mid_color, norm_color) -- top end fade
		g_Render:GradientBoxFilled(Vector2.new(50 + pos_x, screeny + 18 + pos_y), Vector2.new(154 + pos_x, screeny + 19 + pos_y), mid_color, mid_color, mid_color, mid_color) -- below name mid
		g_Render:GradientBoxFilled(Vector2.new(10 + pos_x, screeny + 18 + pos_y), Vector2.new(44 + pos_x, screeny + 19 + pos_y), norm_color,  norm_color,  norm_color, norm_color) -- below name start
		g_Render:GradientBoxFilled(Vector2.new(159 + pos_x, screeny + 18 + pos_y), Vector2.new(200 + pos_x, screeny + 19 + pos_y), norm_color,  norm_color,  norm_color, norm_color) -- below name end
		g_Render:GradientBoxFilled(Vector2.new(10 + pos_x, screeny + 18 + pos_y), Vector2.new(54 + pos_x, screeny + 19 + pos_y), norm_color,mid_color, norm_color,mid_color) -- below name start fade
		g_Render:GradientBoxFilled(Vector2.new(154 + pos_x, screeny + 18 + pos_y), Vector2.new(195 + pos_x, screeny + 19 + pos_y),mid_color, norm_color,mid_color, norm_color ) -- below name end fade
		g_Render:GradientBoxFilled(Vector2.new(50 + pos_x, screeny + 66 + pos_y), Vector2.new(154 + pos_x, screeny + 67 + pos_y),mid_color,mid_color,mid_color,mid_color) -- bottom mid
		g_Render:GradientBoxFilled(Vector2.new(159 + pos_x, screeny + 66 + pos_y), Vector2.new(200 + pos_x, screeny + 67 + pos_y), norm_color,  norm_color,  norm_color, norm_color) -- bottom end
		g_Render:GradientBoxFilled(Vector2.new(10 + pos_x, screeny + 66 + pos_y), Vector2.new(54 + pos_x, screeny + 67 + pos_y), norm_color,mid_color, norm_color,mid_color) -- bottom start fade
		g_Render:GradientBoxFilled(Vector2.new(154 + pos_x, screeny + 66 + pos_y), Vector2.new(195 + pos_x, screeny + 67 + pos_y),mid_color, norm_color,mid_color, norm_color ) -- bottom end fade
		--gradient hell end
		g_Render:BoxFilled(Vector2.new(68 + pos_x,  screeny + 26 + pos_y), Vector2.new(165 + pos_x, screeny + 30 + pos_y), sliders_box_c) -- desync
		g_Render:BoxFilled(Vector2.new(68 + pos_x,  screeny + 40 + pos_y), Vector2.new(165 + pos_x, screeny + 44 + pos_y), sliders_box_c) -- choke
		g_Render:BoxFilled(Vector2.new(68 + pos_x,  screeny + 55 + pos_y), Vector2.new(165 + pos_x, screeny + 59 + pos_y), sliders_box_c) -- charge

		g_Render:BoxFilled(Vector2.new(68 + pos_x,  screeny + 26 + pos_y), Vector2.new(68 + dsy_value * 1.68 + pos_x, screeny + 30 + pos_y), mid_color) -- desync
		g_Render:BoxFilled(Vector2.new(68 + pos_x,  screeny + 40 + pos_y), Vector2.new(68 + fl_value * 6.8 + pos_x, screeny + 44 + pos_y), mid_color) -- choke
		g_Render:BoxFilled(Vector2.new(68 + pos_x,  screeny + 55 + pos_y), Vector2.new(68 + dt_value * 97  + pos_x, screeny + 59 + pos_y), mid_color) -- charge
	-- dangerous yaw indicator end
	end

if keybinds_on:GetBool() and ind_on:GetBool() then
	local text_indicators_fl = function(bind)
		if not bind:IsActive() then return 	end
		g_Render:BoxFilled(Vector2.new(10 + pos_x,  screeny + 67 + pos_y), Vector2.new(200 + pos_x, box_pos), frame_box_c)
	end

	local text_indicators_f = function(bind)
		if not bind:IsActive() then return 	end
		
		local bind_name = bind:GetName()
		local bind_string = string.format(bind_name)
	  
		g_Render:Text("->", Vector2.new(13 + pos_x, text_pos), Color.new(1, 1, 1, 1), 13, font, true)
		g_Render:Text(bind_string, Vector2.new(34 + pos_x, text_pos), Color.new(1, 1, 1, 1), 13, font, true)
	end

		local binds = cheat.GetBinds()
	
		for i = 1, #binds do 
			box_pos = screen_half.y + 71 + pos_y + (i * 15)
			text_indicators_fl(binds[i])
		end

		for i = 1, #binds do 
			text_pos = screen_half.y + 55 + pos_y + (i * 15)
			text_indicators_f(binds[i])
		end
end

	-- Crosshair indicators
	local inverted = antiaim.GetInverterState()
	local aa_mode = ""
	local dt_color = Color.new(0, 0, 0, 1)
	local aa_enabled = g_Config:FindVar("Aimbot", "Anti Aim", "Main", "Enable Anti Aim")
	local aa_yaw_base = g_Config:FindVar("Aimbot", "Anti Aim", "Main", "Yaw Base")
	
	-- halfcircle driveby v2
	local screenx = g_EngineClient:GetScreenSize().x / 2
	local screeny = g_EngineClient:GetScreenSize().y / 2
	local screen_size = g_EngineClient:GetScreenSize()
	local halfcolor = crosshair_ind:GetColor()    
	local inverter_state = antiaim.GetInverterState()

	

	if dt_value == 1 then
		dt_color = Color.new(0, 1, 0, 1)
	else
		dt_color = Color.new(1, 0, 0, 1)
	end

	if inverted then
		left_c = halfcolor
		right_c = Color.new(0, 0, 0, 0.5)
	elseif not inverted then
		left_c = Color.new(0, 0, 0, 0.5)
		right_c = halfcolor
	end

	if aa_manual_right:GetBool() then left_a_c = halfcolor right_a_c = Color.new(0, 0, 0, 0.5) end
	if aa_manual_left:GetBool() then  left_a_c = Color.new(0, 0, 0, 0.5) right_a_c = halfcolor end

	if crosshair_ind:GetInt() == 1 then -- default crosshair ind
		g_Render:BoxFilled(Vector2.new(screenx - 34, screeny + 10), Vector2.new(screenx - 37, screeny - 10), left_c) -- left
		g_Render:BoxFilled(Vector2.new(screenx + 34, screeny + 10), Vector2.new(screenx + 37, screeny - 10), right_c)  -- right
		g_Render:PolyFilled(left_a_c, Vector2.new(screenx + 55, screeny ), Vector2.new(screenx + 40, screeny + 10), Vector2.new(screenx + 40, screeny - 10)) -- left
		g_Render:PolyFilled(right_a_c, Vector2.new(screenx - 55, screeny ), Vector2.new(screenx - 40, screeny + 10), Vector2.new(screenx - 40, screeny - 10)) -- right
	end

	if crosshair_ind:GetInt() == 2 then -- halfcircle crosshair ind
		if aa_enabled:GetBool() then
  
			g_Render:PolyFilled(Color.new(0, 0, 0, 0.5), Vector2.new(screenx, screeny + 71), Vector2.new(screenx + 19, screeny + 69), Vector2.new(screenx + 11, screeny + 79)) -- 1
			g_Render:PolyFilled(Color.new(0, 0, 0, 0.5), Vector2.new(screenx + 20, screeny + 69), Vector2.new(screenx + 39, screeny + 60), Vector2.new(screenx + 35, screeny + 71)) -- 2
			g_Render:PolyFilled(Color.new(0, 0, 0, 0.5), Vector2.new(screenx + 40, screeny + 59), Vector2.new(screenx + 55, screeny + 45), Vector2.new(screenx + 54, screeny + 57)) -- 3
			g_Render:PolyFilled(Color.new(0, 0, 0, 0.5), Vector2.new(screenx + 56, screeny + 44), Vector2.new(screenx + 65, screeny + 25), Vector2.new(screenx + 69, screeny + 37)) -- 4
		  
		  
			g_Render:PolyFilled(Color.new(0, 0, 0, 0.5), Vector2.new(screenx, screeny + 71), Vector2.new(screenx - 19, screeny + 69), Vector2.new(screenx - 11, screeny + 79)) -- 1
			g_Render:PolyFilled(Color.new(0, 0, 0, 0.5), Vector2.new(screenx - 20, screeny + 69), Vector2.new(screenx - 39, screeny + 60), Vector2.new(screenx - 35, screeny + 71)) -- 2
			g_Render:PolyFilled(Color.new(0, 0, 0, 0.5), Vector2.new(screenx - 40, screeny + 59), Vector2.new(screenx - 55, screeny + 45), Vector2.new(screenx - 54, screeny + 57)) -- 3
			g_Render:PolyFilled(Color.new(0, 0, 0, 0.5), Vector2.new(screenx - 56, screeny + 44), Vector2.new(screenx - 65, screeny + 25), Vector2.new(screenx - 69, screeny + 37)) -- 4
		
		 
			  g_Render:PolyFilled(Color.new(0, 0, 0, 0.5), Vector2.new(screenx - 65, screeny + 24), Vector2.new(screenx - 66, screeny + 0), Vector2.new(screenx - 75, screeny + 14)) -- 5
			  g_Render:PolyFilled(Color.new(0, 0, 0, 0.5), Vector2.new(screenx + 65, screeny + 24), Vector2.new(screenx + 66, screeny + 0), Vector2.new(screenx + 75, screeny + 14)) -- 5
		
		  if antiaim.GetInverterState() then
			if dsy_value < 10   then
			  g_Render:PolyFilled(halfcolor, Vector2.new(screenx, screeny + 71), Vector2.new(screenx - 19, screeny + 69), Vector2.new(screenx - 11, screeny + 79)) -- 1
			end
			if dsy_value < 20 and dsy_value > 11 then
			  g_Render:PolyFilled(halfcolor, Vector2.new(screenx - 20, screeny + 69), Vector2.new(screenx - 39, screeny + 60), Vector2.new(screenx - 35, screeny + 71)) -- 2
			end
			if dsy_value < 39 and dsy_value > 11 and dsy_value > 21  then
			  g_Render:PolyFilled(halfcolor, Vector2.new(screenx - 40, screeny + 59), Vector2.new(screenx - 55, screeny + 45), Vector2.new(screenx - 54, screeny + 57)) -- 3
			end
			if dsy_value < 60 and dsy_value > 11 and dsy_value > 21 and dsy_value > 40 then
			  g_Render:PolyFilled(halfcolor, Vector2.new(screenx - 56, screeny + 44), Vector2.new(screenx - 65, screeny + 25), Vector2.new(screenx - 69, screeny + 37)) -- 4
			end
		  else
			if dsy_value < 10 then
			  g_Render:PolyFilled(halfcolor, Vector2.new(screenx, screeny + 71), Vector2.new(screenx + 19, screeny + 69), Vector2.new(screenx + 11, screeny + 79)) -- 1
			end
			if dsy_value < 20 and dsy_value > 11 then
			  g_Render:PolyFilled(halfcolor, Vector2.new(screenx + 20, screeny + 69), Vector2.new(screenx + 39, screeny + 60), Vector2.new(screenx + 35, screeny + 71)) -- 2
			end
			if dsy_value < 39 and dsy_value > 11 and dsy_value > 21 then
			  g_Render:PolyFilled(halfcolor, Vector2.new(screenx + 40, screeny + 59), Vector2.new(screenx + 55, screeny + 45), Vector2.new(screenx + 54, screeny + 57)) -- 3
			end
			if dsy_value < 60 and dsy_value > 11 and dsy_value > 21 and dsy_value > 40 then
			  g_Render:PolyFilled(Chalfcolor, Vector2.new(screenx + 56, screeny + 44), Vector2.new(screenx + 65, screeny + 25), Vector2.new(screenx + 69, screeny + 37)) -- 4
			end
		  end
		
		   -- manual sideways
		   if aa_yaw_base:GetInt() == 3 then -- left
			g_Render:PolyFilled(halfcolor, Vector2.new(screenx - 65, screeny + 24), Vector2.new(screenx - 66, screeny + 0), Vector2.new(screenx - 75, screeny + 14)) -- 5
			 
		  end
		  if aa_yaw_base:GetInt() == 2 then -- right
			g_Render:PolyFilled(halfcolor, Vector2.new(screenx + 65, screeny + 24), Vector2.new(screenx + 66, screeny + 0), Vector2.new(screenx + 75, screeny + 14)) -- 5
		  end
	 end
	end

	
	local fade = math.sin(g_GlobalVars.realtime * 2) * 0.4 + 0.7
	local player = g_EntityList:GetLocalPlayer()
	local health = player:GetProp("m_iHealth")

	if crosshair_ind:GetInt() == 1  then
		
		if not aa_freestand_boolean:GetBool() or aa_manual_left:GetBool() or aa_manual_right:GetBool() then
			if aa_modes:GetInt() == 1 then aa_mode = "smart aa" end 
			if aa_modes:GetInt() == 2 then aa_mode = "low delta" end 
			if aa_modes:GetInt() == 0 then aa_mode = "custom" end 
			if anti_aim_legit_aa:GetBool() and cheat.IsKeyDown(0x45) then aa_mode = "legit aa" end
		end

		if aa_freestand_boolean:GetBool() or health < anti_aim_safe_head_health:GetInt() then aa_mode = "safe head" end -- freestand
		if aa_manual_left:GetBool() then aa_mode = "left aa" end
		if aa_manual_right:GetBool() then aa_mode = "right aa" end

	if lby_base:GetInt() == 1 and dt_value == 0 then aa_mode = "opposite" end

		g_Render:Text("     Thugle$$", Vector2.new(screenx - 50, screeny + 10), Color.new(1.0, 1.0, 1.0, fade), 13, font, true)
		
		g_Render:Text(aa_mode, Vector2.new(screenx - 24, screeny + 30), Color.new(1.0, 1.0, 1.0, 1), 13, font, true)

	if dt_toggled:GetBool() then
		g_Render:Text("DT", Vector2.new(screenx - 6, screeny + 45), dt_color, 13, font, true)
		g_Render:BoxFilled(Vector2.new(screenx - 5, screeny + 60), Vector2.new(screenx - 5 + dt_value * 14, screeny + 62), dt_color)
	end

	if force_onshot:GetBool() then
		g_Render:Text("force onshot", Vector2.new(screenx - 40, screeny + 70), Color.new(1,1,1,1), 13, font, true)
	end
  end


	if crosshair_ind:GetInt() == 2  then

		if not aa_freestand_boolean:GetBool() or aa_manual_left:GetBool() or aa_manual_right:GetBool() then
			if aa_modes:GetInt() == 1 then aa_mode = "smart aa" end 
			if aa_modes:GetInt() == 2 then aa_mode = "low delta" end 
			if aa_modes:GetInt() == 0 then aa_mode = "custom" end 
			if anti_aim_legit_aa:GetBool() and cheat.IsKeyDown(0x45) then aa_mode = "legit aa" end
		end

		if aa_freestand_boolean:GetBool() or health < anti_aim_safe_head_health:GetInt() then aa_mode = "safe head" end -- freestand
		if aa_manual_left:GetBool() then aa_mode = "left aa" end
		if aa_manual_right:GetBool() then aa_mode = "right aa" end

	if lby_base:GetInt() == 1 and dt_value == 0 then aa_mode = "opposite" end

		g_Render:Text("Thugle$$", Vector2.new(screenx - 51, screeny), Color.new(1.0, 1.0, 1.0, fade), 13, font, true)
		
		g_Render:Text(aa_mode, Vector2.new(screenx - 26, screeny + 30), Color.new(1.0, 1.0, 1.0, 1), 13, font, true)

	if dt_toggled:GetBool() then
		g_Render:Text("DT", Vector2.new(screenx - 10, screeny + 15), dt_color, 13, font, true)
		g_Render:BoxFilled(Vector2.new(screenx - 9, screeny + 28), Vector2.new(screenx - 9 + dt_value * 14, screeny + 30), dt_color)
	end

	if force_onshot:GetBool() then
		g_Render:Text("force onshot", Vector2.new(screenx - 40, screeny + 43), Color.new(1,1,1,1), 13, font, true)
	end
  end
end

cheat.RegisterCallback("prediction", function()
	aa_onshot_func()
	dang_antiaims()
end)


cheat.RegisterCallback("pre_prediction", function()
	ragebot_run()
	doubletap_func()
    legit_aa(cmd)

	local local_player = g_EntityList:GetClientEntity(g_EngineClient:GetLocalPlayer()):GetPlayer()
	is_alive = local_player:GetProp("DT_BasePlayer", "m_iHealth") > 0
	if not is_alive then return end
	local active_weapon = local_player:GetActiveWeapon()
	if active_weapon == nil then return end
	local weapon_id = active_weapon:GetWeaponID()
	local players = g_EntityList:GetPlayers()
	local not_scoped = active_weapon:GetProp("m_zoomLevel") == 0

	for _, player in ipairs(players) do
		if not player:IsTeamMate() then
			local user_index = player:EntIndex()
			if weapon_id == 40 and not_scoped then -- scout noscope hc
				ragebot.OverrideHitchance(user_index, s_noscope_hc:GetInt())
			end

			if weapon_id == 11 or weapon_id == 38 and not_scoped then -- auto noscope hc
				ragebot.OverrideHitchance(user_index, a_noscope_hc:GetInt())
			end
		end
	end
end)
end 

local function events(e)
	local event_name = e:GetName()
    if event_name == "round_start" or event_name == "bomb_defused" or event_name == "bomb_exploded" then
        bomb.isRender = false
    end

    if event_name == "bomb_planted" then bomb.isRender = true end
 force_onshot_func(e)
 antiaim_brute(e)
 hurt_function(e)
end

cheat.RegisterCallback("events", events)

cheat.RegisterCallback("draw", function()
    menu_addon()
    bomb:handle()
    Indicators_dangerous()
    draw_hit_related()
    update_menu()
    local local_player = g_EntityList:GetLocalPlayer()
    if not local_player then return end 
    safe_head()
    foce_onshot()

    ideal_tick()
    faster_dt_recharge_func()
    reset_ideal_tick()
    faster_dt_recharge_timer_func()
    reset_min_dmg()
    if leg_fucker_enabled:GetBool() == true then 
        local local_player = g_EntityList:GetLocalPlayer()
        if not local_player then return end
        ffi.cast("float*", ffi_helpers.get_entity_address(local_player:EntIndex()) + 10100)[0] = 0
        g_Config:FindVar("Aimbot", "Anti Aim", "Misc", "Leg Movement"):SetInt(math.random(1,2))
    else 
        g_Config:FindVar("Aimbot", "Anti Aim", "Misc", "Leg Movement"):SetInt(stored_leg_movement)
    end 
    if clan_tag_enabled:GetBool() then 
        clantag_var:SetBool(false)
        local curtime = math.floor(g_GlobalVars.curtime * 5)
            if old_time ~= curtime then
                set_clantag(clant_tag[curtime % #clant_tag+1], clant_tag[curtime % #clant_tag+1])
            end
        old_time = curtime
    end

end)
 
