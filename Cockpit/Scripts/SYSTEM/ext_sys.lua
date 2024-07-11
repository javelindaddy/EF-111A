
dofile(LockOn_Options.script_path .. "command_defs.lua")
local dev = GetSelf()
local update_time_step = 0.02
make_default_activity(update_time_step)
local sensor_data = get_base_data()
update = function()
-- upvalues: sensor_data
local aoa = sensor_data:getAngleOfAttack()
local speed = sensor_data:getSelfVelocity()
local sas = sensor_data:getSelfAirspeed()
local tas = sensor_data:getTrueAirSpeed()
local ias = sensor_data:getIndicatedAirSpeed()
local mach = sensor_data:getMachNumber()
local vv = sensor_data:getVerticalVelocity()
local gforce = sensor_data:getVerticalAcceleration()
local balt = sensor_data:getBarometricAltitude()
local ralt = sensor_data:getRadarAltitude()
local pitch = sensor_data:getStickRollPosition() / 100--Parkposition
local roll = sensor_data:getStickPitchPosition() / 100--Parkposition
local rudder = sensor_data:getRudderPosition()  / 100--Parkposition
local throttle = sensor_data:getThrottleLeftPosition()
local gear = sensor_data:getLandingGearHandlePos()
local speedbrake = sensor_data:getSpeedBrakePos()
local rpm = sensor_data:getEngineLeftRPM()
local flaps = sensor_data:getFlapsPos()
local cpy_state = sensor_data:getCanopyState()
local cpy_pos = sensor_data:getCanopyPos()
local wown = sensor_data:getWOW_NoseLandingGear()
local wowl = sensor_data:getWOW_LeftMainLandingGear()
local wowr = sensor_data:getWOW_RightMainLandingGear()
--local Sweep_R = get_aircraft_draw_argument_value(7)--405 AI Onli
--local Sweep_L = get_aircraft_draw_argument_value(7)--404 AI Onli

local NOSE_amortizer = get_aircraft_draw_argument_value(1)--4120
local FOLDED_WING = get_aircraft_draw_argument_value(8)--507/508/404/405
local flaps_R = get_aircraft_draw_argument_value(9)--1003 / 1002
local flaps_L = get_aircraft_draw_argument_value(10)--1001 / 1004
--local roll_R = get_aircraft_draw_argument_value(11)--1013 / 1012
--local roll_L = get_aircraft_draw_argument_value(12)--1010 / 1011
local pitch_R = get_aircraft_draw_argument_value(15)--406 höhe
local pitch_L = get_aircraft_draw_argument_value(16)--450
local rudder_R = get_aircraft_draw_argument_value(17)--1020 seite
--local rudder_L = get_aircraft_draw_argument_value(18)--509
--local Hook = get_aircraft_draw_argument_value(25)--1305
local afterburner_R = get_aircraft_draw_argument_value(28)--435
local afterburner_L = get_aircraft_draw_argument_value(29)--436
--local Pilot_Left_Right = get_aircraft_draw_argument_value(39)--6000
--local Pilot_Up_Down = get_aircraft_draw_argument_value(99)--6001
--local Rio_Left_Right = get_aircraft_draw_argument_value(39)--1605
--local Rio_Up_Down = get_aircraft_draw_argument_value(99)--1607
--local Nozzle_R = get_aircraft_draw_argument_value(89)--433
--local Nozzle_L = get_aircraft_draw_argument_value(90)--434
--local Slats_R = get_aircraft_draw_argument_value(275)--1021
--local Slats_L = get_aircraft_draw_argument_value(274)--1022
local Flex_R = get_aircraft_draw_argument_value(280)--1501
local Flex_L = get_aircraft_draw_argument_value(280)--1500
--local Launch_Bar = get_aircraft_draw_argument_value(0)--85
--local natostrobelight = get_aircraft_draw_argument_value(199)--614/620
------------------------------------------------------
--local Damage_wing_R = get_aircraft_draw_argument_value(215)--571
--local Damage_wing_L = get_aircraft_draw_argument_value(225)--510
--local Damage_pitch_R = get_aircraft_draw_argument_value(368)--531
--local Damage_pitch_L = get_aircraft_draw_argument_value(240)--530
--local BANO_1 = get_aircraft_draw_argument_value(190)--611/612
--local BANO_2 = get_aircraft_draw_argument_value(191)--611/612
--local BANO_0 = get_aircraft_draw_argument_value(192)--613
--local formation_lights = get_aircraft_draw_argument_value(88)--200

------------------------------------------------------
-- Katapultstart TASTE ( U )
-- Lua ==> launch_bar_connected_arg_value	= 0.85,
------------------------------------------------------
local FOLDED = 0
	if flaps_R > 0 and FOLDED_WING < 0 then
		FOLDED = 1
	end
	if FOLDED_WING > 0 then
		FOLDED = 2
	end
	if FOLDED == 1 and mach < 2.0 then
		set_aircraft_draw_argument_value(7, mach * 0 )
		set_aircraft_draw_argument_value(7, mach * 0 ) 
		set_aircraft_draw_argument_value(13, Slats_R ) --275
		set_aircraft_draw_argument_value(14, Slats_L ) --274
	end
	if FOLDED == 0 and mach <= 0.45 then
		set_aircraft_draw_argument_value(7, mach * 0 )
		set_aircraft_draw_argument_value(7, mach * 0 )
		set_aircraft_draw_argument_value(13, Slats_R ) --275
		set_aircraft_draw_argument_value(14, Slats_L ) --274
	end
	if FOLDED == 0 and mach > 0.45 then
		set_aircraft_draw_argument_value(7,  20/9*mach - 1 )
		set_aircraft_draw_argument_value(7, 20/9*mach - 1 )  
		set_aircraft_draw_argument_value(13, 0 ) --275
		set_aircraft_draw_argument_value(14, 0 ) --274
	end
	if FOLDED == 2 then
		set_aircraft_draw_argument_value(7, FOLDED_WING ) --8
		set_aircraft_draw_argument_value(7, FOLDED_WING ) --8
		set_aircraft_draw_argument_value(7, FOLDED_WING ) --8
  		set_aircraft_draw_argument_value(7, FOLDED_WING ) --8
  		set_aircraft_draw_argument_value(13, 0 ) --275
		set_aircraft_draw_argument_value(14, 0 ) --274
	end
------------------------------------------------------------
--[[
local FOLDED = 0
	if flaps_R > 0 and FOLDED_WING < 0 then
		FOLDED = 1
	end
	if FOLDED_WING > 0 then
		FOLDED = 2
	end	
	if FOLDED == 1 then
		set_aircraft_draw_argument_value(7)
		set_aircraft_draw_argument_value(7) 
		set_aircraft_draw_argument_value(13, Slats_R ) --275
		set_aircraft_draw_argument_value(14, Slats_L ) --274
	end
	if FOLDED == 0 then
		set_aircraft_draw_argument_value(7)
		set_aircraft_draw_argument_value(7)
		set_aircraft_draw_argument_value(13, Slats_R ) --275
		set_aircraft_draw_argument_value(14, Slats_L ) --274
	end
	if FOLDED == 0 then
		set_aircraft_draw_argument_value(7)
		set_aircraft_draw_argument_value(7)  
		set_aircraft_draw_argument_value(13, 0 ) --275
		set_aircraft_draw_argument_value(14, 0 ) --274
	end
	if FOLDED == 2 then
		set_aircraft_draw_argument_value(7, FOLDED_WING ) --8
		set_aircraft_draw_argument_value(7, FOLDED_WING ) --8
		set_aircraft_draw_argument_value(7, FOLDED_WING ) --8
  		set_aircraft_draw_argument_value(7, FOLDED_WING ) --8
  		set_aircraft_draw_argument_value(13, 0 ) --275
		set_aircraft_draw_argument_value(14, 0 ) --274
	end	
--]]
------------------------------------------------------
if NOSE_amortizer  then
  set_aircraft_draw_argument_value(1, NOSE_amortizer ) --1
end
------------------------------------------------------
if flaps > 0 then
  set_aircraft_draw_argument_value(13, flaps * 2)
  set_aircraft_draw_argument_value(14, flaps * 2)
end
------------------------------------------------------
if speedbrake > 0 and mach < .41 then
  set_aircraft_draw_argument_value(120, speedbrake * 2)
  set_aircraft_draw_argument_value(123, speedbrake * 2)
end
------------------------------------------------------
if Flex_R  then
  set_aircraft_draw_argument_value(280, Flex_R ) --280
end

if Flex_L  then
  set_aircraft_draw_argument_value(280, Flex_L ) --280
end
------------------------------------------------------

  




--[[
if Launch_Bar  then
  set_aircraft_draw_argument_value(85, Launsch_Bar * 0.5 ) --25
end
]]
------------------------------------------------------
--[[
external_args =
{

	CONTROL_TopSpeedBrake = 400,
    CONTROL_BottomLeftSpeedBrake = 401,
    CONTROL_BottomRightSpeedBrake = 402,
	WINGS_LeftSweep = 404,
	WINGS_RightSweep = 405,
	CONTROL_RightStabilator = 406,
	ENGINE_LeftNozzle = 434,
    ENGINE_RightNozzle = 433,
    ENGINE_RightAB = 435,
    ENGINE_LeftAB = 436,
	CONTROL_LeftStabilator = 450,
	WINGS_LeftOverSweep = 507,
    WINGS_RightOverSweep = 508,
	CONTROL_LeftRudder = 509,
	CONTROL_LeftMainFlaps = 1001,
	CONTROL_RightAuxFlaps = 1002,
	CONTROL_RightMainFlaps = 1003,
	CONTROL_LeftAuxFlaps = 1004,
    CONTROL_LeftOuterSpoiler = 1010,
    CONTROL_LeftInnerSpoiler = 1011,
    CONTROL_RightInnerSpoiler = 1012,
    CONTROL_RightOuterSpoiler = 1013,	
    CONTROL_RightRudder = 1020,
    CONTROL_RightOuterSlats = 1021,
	CONTROL_LeftOuterSlats = 1022,
    GEARHOOK_Visual = 1305,
    WINGS_LeftFlex = 1500,
    WINGS_RightFlex = 1501,

}
]]



end

need_to_be_closed = false


