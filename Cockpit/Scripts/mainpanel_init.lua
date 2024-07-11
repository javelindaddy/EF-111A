shape_name   	   = "Cockpit_F-111F"
is_EDM			   = true
new_model_format   = true
ambient_light    = {255,255,255}
ambient_color_day_texture    = {72, 100, 160}
ambient_color_night_texture  = {40, 60 ,150}
ambient_color_from_devices   = {50, 50, 40}
ambient_color_from_panels	 = {35, 25, 25}

dusk_border					 = 0.4
draw_pilot					 = false

external_model_canopy_arg	 = 38

use_external_views = false

day_texture_set_value   = 0.0
night_texture_set_value = 0.1

local controllers = LoRegisterPanelControls()
--local RAD_TO_DEG = 57.2958



ThrottleL							= CreateGauge()
ThrottleL.arg_number				= 104
ThrottleL.input						= {0, 100}
ThrottleL.output					= {0, 1}
ThrottleL.controller				= controllers.base_gauge_ThrottleLeftPosition

ThrottleR							= CreateGauge()
ThrottleR.arg_number				= 105
ThrottleR.input						= {0, 100}
ThrottleR.output					= {0, 1}
ThrottleR.controller				= controllers.base_gauge_ThrottleRightPosition

ADIPitch							= CreateGauge()
ADIPitch.arg_number					= 1000
ADIPitch.input						= {-140	, 140}
ADIPitch.output						= {-100	, 100}
ADIPitch.controller					= controllers.base_gauge_Pitch

RadarAlt							= CreateGauge()
RadarAlt.arg_number					= 1001
RadarAlt.input						= {0, 30.48	, 60.96	, 91.44	, 121.92	, 182.88	, 243.84	, 304.8	, 609.6	, 914.4	, 1219.2}
RadarAlt.output						= {0, 0.095	, 0.206	, 0.317	, 0.46	, 0.572	, 0.683	, 0.746	, 0.841	, 0.920	, 1}
RadarAlt.controller					= controllers.base_gauge_RadarAltitude

indispeed							= CreateGauge()
indispeed.arg_number				= 1002
indispeed.input						= {0.0	, 102.889	, 205.778	, 308.667 , 411.556} 
indispeed.output					= {0	, 0.250	, 0.500	, 0.750 , 1}
indispeed.controller				= controllers.base_gauge_IndicatedAirSpeed

--[[
AoAGauge							= CreateGauge() -- High
AoAGauge.arg_number					= 1003
AoAGauge.input						= {-10/RAD_TO_DEG, 10/RAD_TO_DEG, 20/RAD_TO_DEG}
AoAGauge.output						= {-1, 0.5, 1}
AoAGauge.controller					= controllers.base_gauge_AngleOfAttack
--]]

AoAGauge							= CreateGauge() -- Point
AoAGauge.arg_number					= 1004
AoAGauge.input						= {-10/RAD_TO_DEG, 10/RAD_TO_DEG, 20/RAD_TO_DEG}
AoAGauge.output						= {-1, 0.5, 1}
AoAGauge.controller					= controllers.base_gauge_AngleOfAttack

--[[
AoAGauge							= CreateGauge() -- Low
AoAGauge.arg_number					= 1005
AoAGauge.input						= {-10/RAD_TO_DEG, 10/RAD_TO_DEG, 20/RAD_TO_DEG}
AoAGauge.output						= {-1, 0.5, 1}
AoAGauge.controller					= controllers.base_gauge_AngleOfAttack
--]]

need_to_be_closed = false

--[[ available functions 

 --base_gauge_RadarAltitude
 --base_gauge_BarometricAltitude
 --base_gauge_AngleOfAttack
 --base_gauge_AngleOfSlide
 --base_gauge_VerticalVelocity
 --base_gauge_TrueAirSpeed
 --base_gauge_IndicatedAirSpeed
 --base_gauge_MachNumber
 --base_gauge_VerticalAcceleration --Ny
 --base_gauge_HorizontalAcceleration --Nx
 --base_gauge_LateralAcceleration --Nz
 --base_gauge_RateOfRoll
 --base_gauge_RateOfYaw
 --base_gauge_RateOfPitch
 --base_gauge_Roll
 --base_gauge_MagneticHeading
 --base_gauge_Pitch
 --base_gauge_Heading
 --base_gauge_EngineLeftFuelConsumption
 --base_gauge_EngineRightFuelConsumption
 --base_gauge_EngineLeftTemperatureBeforeTurbine
 --base_gauge_EngineRightTemperatureBeforeTurbine
 --base_gauge_EngineLeftRPM
 --base_gauge_EngineRightRPM
 --base_gauge_WOW_RightMainLandingGear
 --base_gauge_WOW_LeftMainLandingGear
 --base_gauge_WOW_NoseLandingGear
 --base_gauge_RightMainLandingGearDown
 --base_gauge_LeftMainLandingGearDown
 --base_gauge_NoseLandingGearDown
 --base_gauge_RightMainLandingGearUp
 --base_gauge_LeftMainLandingGearUp
 --base_gauge_NoseLandingGearUp
 --base_gauge_LandingGearHandlePos
 --base_gauge_StickRollPosition
 --base_gauge_StickPitchPosition
 --base_gauge_RudderPosition
 --base_gauge_ThrottleLeftPosition
 --base_gauge_ThrottleRightPosition
 --base_gauge_HelicopterCollective
 --base_gauge_HelicopterCorrection
 --base_gauge_CanopyPos
 --base_gauge_CanopyState
 --base_gauge_FlapsRetracted
 --base_gauge_SpeedBrakePos
 --base_gauge_FlapsPos
 --base_gauge_TotalFuelWeight

--]]

--[[
mirrors_data = 
{
    center_point 	= {-0.6,-0.40,0.00},
    width 		 	= 0.8,
    aspect 		 	= 1.7, 
	rotation 	 	= math.rad(-20);
	animation_speed = 2.0;
	near_clip 		= 0.1;
	middle_clip		= 10;
	far_clip		= 60000;
}

mirrors_draw                    = CreateGauge()
mirrors_draw.arg_number    		= 16
mirrors_draw.input   			= {0,1}
mirrors_draw.output   			= {1,0}
mirrors_draw.controller         = controllers.mirrors_draw
--]]

--[[
truespeed							= CreateGauge()
truespeed.arg_number				= 1003
truespeed.input						= {0.0	, 147.185	, 294.370	, 411.556} 
truespeed.output					= {0	, 0.333	, 0.666	, 1}
truespeed.controller				= controllers.base_gauge_TrueAirSpeed

machpeed							= CreateGauge()
machspeed.arg_number				= 1004
machspeed.input						= {0.0	, 205.666	, 411.333	, 617.400} 
machspeed.output					= {0	, 0.333	, 0.6666	, 1}
machspeed.controller				= controllers.base_gauge_MachNumber

fuselfuel							= CreateGauge()
fuselfuel.arg_number				= 1005
fuselfuel.input						= {0, 100}
fuselfuel.output					= {0, 1}
fuselfuel.controller				= controllers.base_gauge_TotalFuelWeight

flapsretr							= CreateGauge()
flapsretr.arg_number				= 1006
flapsretr.input						= {0, 100}
flapsretr.output					= {0, 1}
flapsretr.controller				= controllers.base_gauge_FlapsPos

speedbrke							= CreateGauge()
speedbrke.arg_number				= 1007
speedbrke.input						= {0, 100}
speedbrke.output					= {0, 1}
speedbrke.controller				= controllers.base_gauge_SpeedBrakePos

LEngTIT								= CreateGauge()
LEngTIT.arg_number					= 1008
LEngTIT.input						= {0, 100}
LEngTIT.output						= {0, 1}
LEngTIT.controller					= controllers.base_gauge_EngineLeftTemperatureBeforeTurbine

REngTIT								= CreateGauge()
REngTIT.arg_number					= 1009
REngTIT.input						= {0, 100}
REngTIT.output						= {0, 1}
REngTIT.controller					= base_gauge_EngineRightTemperatureBeforeTurbine

EngLFuel							= CreateGauge()
EngLFuel.arg_number					= 1010
EngLFuel.input						= {0, 100}
EngLFuel.output						= {0, 1}
EngLFuel.controller					= base_gauge_EngineLeftFuelConsumption

EngRFuel							= CreateGauge()
EngRFuel.arg_number					= 1011
EngRFuel.input						= {0, 100}
EngRFuel.output						= {0, 1}
EngRFuel.controller					= base_gauge_EngineRightFuelConsumption
--]]
