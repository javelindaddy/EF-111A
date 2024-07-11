
EF111 =  {
      
		Name 			= 'EF111', 													  	-- AG
		DisplayName		= _('EF-111A'), 												  	-- AG
        Picture 		= "EF111.png",
        Rate 			= "50",
        Shape			= "EF111",		
        WorldID			=  WSTYPE_PLACEHOLDER, 
        
	net_animation ={
		
		22,
		87,
		
	},
		
	shape_table_data 	= 
	{
		{
			file  	 	= 'EF111'; 													  	-- AG
			life  	 	= 22; 														  	-- Lifebar
			vis   	 	= 3; 														  	-- Visibility gain.
			desrt    	= 'su-24mr-oblomok'; 										  	-- Name of destroyed object file name
			fire  	 	= { 300, 2}; 												  	-- Fire on the ground after destoyed: 300sec 2m
			username	= 'EF111'; 													  	-- AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "su-24mr-oblomok";
			file  		= "su-24mr-oblomok";
			fire  		= { 240, 2};
		},
	},
	
	LandRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of LandRWCategories
        TakeOffRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of TakeOffRWCategories
	
	mapclasskey 		= "P0091000027",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER, "Fighters", "Refuelable", "Datalink", "Link16"},
	Categories= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},
	
		M_empty						=	18000,										  	-- kg  with pilot and nose load, F15
		M_nominal					=	30000,										  	-- kg (Empty Plus Full Internal Fuel)
		M_max						=	40000,										  	-- kg (Maximum Take Off Weight)
		M_fuel_max					=	15000,										  	-- kg (Internal Fuel Only)
		H_max						=	18000,										  	-- m  (Maximum Operational Ceiling)
		average_fuel_consumption	=	0.5,
		CAS_min						=	75,											  	-- Minimum CAS speed (m/s) (for AI)
		V_opt						=	180,										  	-- Cruise speed (m/s) (for AI)
		V_take_off					=	100,											-- Take off speed in m/s (for AI)
		V_land						=	91,											  	-- Land speed in m/s (for AI)
		has_afteburner				=	true,
		has_speedbrake				=	false,
		radar_can_see_ground		=	true,

		nose_gear_pos 				                = {4.13786,	-1.80268 ,	0},   		-- Nosegear coord YZX
	    nose_gear_amortizer_direct_stroke   		=  0,  								-- Down from nose_gear_pos
	    nose_gear_amortizer_reversal_stroke  		=  -0.233838,  						-- Up 
	    nose_gear_amortizer_normal_weight_stroke 	=  -0.21,   						-- Down from main_gear_pos
	    nose_gear_wheel_diameter 	                =  0.626, 							-- In m
	
	    main_gear_pos 						 	    = {-3.9622, -2.02038,	1.5}, 		-- Main gear coords YZX
	    main_gear_amortizer_direct_stroke	 	    =   0, 								-- Down from main_gear_pos
	    main_gear_amortizer_reversal_stroke  	    = 	-0.585, 						-- Up 
	    main_gear_amortizer_normal_weight_stroke    =   -0.55,							-- Down from main_gear_pos
	    main_gear_wheel_diameter 				    =   1.1, 							-- In m

		AOA_take_off				=	0.16,											-- AoA in take off (for AI)
		stores_number				=	10,
		bank_angle_max				=	60,												-- Max bank angle (for AI)
		Ny_min						=	-1.5,												-- Min G (for AI)
		Ny_max						=	6,												-- Max G (for AI)
		tand_gear_max				=	2.75,											-- XX  FA18 3.73, 
		V_max_sea_level				=	400,											-- Max speed at sea level in m/s (for AI)
		V_max_h						=	850,											-- Max speed at max altitude in m/s (for AI)
		wing_area					=	61.07,											-- Wing area in m2
		thrust_sum_max				=	15000,											-- Thrust in kgf
		thrust_sum_ab				=	30000,											-- Thrust in kgf
		Vy_max						=	275,											-- Max climb speed in m/s (for AI)
		flaps_maneuver				=	.5,
		Mach_max					=	2.4,											-- Max speed in Mach (for AI)
		range						=	5000,											-- Max range in km (for AI)
		RCS							=	5,												-- Radar Cross Section m2
		Ny_max_e					=	6,												-- Max G (for AI)
		detection_range_max			=	250,
		IR_emission_coeff			=	0.91,											-- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
		IR_emission_coeff_ab		=	4,												-- With afterburner
		tanker_type					=	1,												-- F14=2/S33=4/M29=0/S27=0/F15=1/F16=1/To=0/F18=2/A10A=1/M29K=4/M2000=2/F4=0/F5=0/
		wing_span					=	19,
		wing_type 					= 	1,												-- FIXED_WING = 0/VARIABLE_GEOMETRY = 1/FOLDED_WING = 2/ARIABLE_GEOMETRY_FOLDED = 3
		length						=	23.17,
		height						=	6.1,
		crew_size					=	2,
		engines_count				=	2,
		wing_tip_pos 				= 	{-4.13125,	0.89571,	9.29731},				-- Wingtip coords for visual effects
		
		--EPLRS 					= true,--?
		TACAN_AA					= true,--?
		--launch_bar_connected_arg_value	= 0.815,--0.885,--0.745
		
	mechanimations = {
        Door0 = {
            {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 9.0},},},}, Flags = {"Reversible"},},
            {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
            {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
        },
        FoldableWings = {
            {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 7, "to", 0.5, "in", 15.0}}}}, Flags = {"Reversible"}},
        },
    }, -- end of mechanimations
		
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-10.1225,	0.33541,	-0.777894},
				elevation	=	0,
				diameter	=	1.04193,
				exhaust_length_ab	=	9,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-10.1225,	0.33541,	0.777894},
				elevation	=	0,
				diameter	=	1.04193,
				exhaust_length_ab	=	9,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [2]
		}, -- end of engines_nozzles

		crew_members =
	{
		[1] =
		{
			ejection_seat_name	=	9,
			pilot_name			= 	19,
			drop_canopy_name	=	"su-24-fonar-l",
			pos = 	{5.25,	1.0,	-0.42},
		}, -- end of [1]
		[2] =
		{
			ejection_seat_name	=	9,
			pilot_name			= 	19,
			drop_canopy_name	=	"su-24-fonar-r",
			pos = 	{5.25,	1.0,	0.42},
			}, -- end of [2]
		}, -- end of crew_members

		brakeshute_name	=	4, -- Mig29=3/Su27=4/Su25t=4
		is_tanker	=	false,
		air_refuel_receptacle_pos 	= 	{0.4935,	1.492,	-0.4238}, --YZX

		fires_pos = 
		{
			[1] = 	{-0.095,	-0.798,	0},
			[2] = 	{-1.4,	0.721,	0.797},
			[3] = 	{-0.825,	0.738,	-0.683},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.432,	0.099,	0.483},
			[9] = 	{-5.432,	0.099,	-0.483},
			[10] = 	{-0.14,	0.67,	1.45},
			[11] = 	{-0.14,	0.23,	-1.45},
		}, -- end of fires_pos
		
		effects_presets = {
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/EF111_overwingVapor.lua"},
		},
		
		chaff_flare_dispenser = 
		{
		[1] =
		{
			dir = 	{0,	-1,	0.2},
			pos = 	{-9.96383,	0.421554,	1.51477},
		}, -- end of [1]
		[2] =
		{
			dir = 	{0,	-1,	-0.2},
			pos = 	{-9.96383,	0.421554,	-1.51477},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser

        -- Countermeasures
passivCounterm 		= {
CMDS_Edit 			= true,
SingleChargeTotal 	= 240,
chaff 				= {default = 120, increment = 30, chargeSz = 1},
flare 				= {default = 120, increment = 30, chargeSz = 1}
 },
	
        CanopyGeometry 	= {
            azimuth 	= {-145.0, 145.0},-- pilot view horizontal (AI)
            elevation 	= {-50.0, 90.0}-- pilot view vertical (AI)
        },

Sensors = {
RADAR 	= "AN/APG-73",
OPTIC 	= "Harrier GR_5 FLIR",
RWR 	= "Abstract RWR"
},

laserEquipment =
	{
		laserRangefinder = true,
		laserDesignator  = true,
	},

Countermeasures = {
ECM 			= "AN/ALQ-165"
},

	Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},
	HumanRadio = {
		frequency 		= 127.5,  -- Radio Freq
		editable 		= true,
		minFrequency	= 100.000,
		maxFrequency 	= 156.000,
		modulation 		= MODULATION_AM
	},
 

pylons_enumeration = {14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1,}, --YZX

Pylons =     {
	pylon(1, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 308,
				arg_value = 0,
				DisplayName = "1",
  				use_full_connector_position = true,
				connector = "PYLON_1",
            },
            {
                { CLSID = "MXU-648-TP" ,arg_value = 0.0 },
				{ CLSID = "Fuel_Tank_FT600" ,arg_value = 0.0 },
            }
        ),	
		pylon(2, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 309,
				arg_value = 1,
				DisplayName = "2",
  				use_full_connector_position = true,
				connector = "PYLON_2",
            },
            {
                { CLSID = "Fuel_Tank_FT600" ,arg_value = 0.0 },
            }
        ),
        pylon(3, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 310,
				arg_value = 1,
				DisplayName = "3",
  				use_full_connector_position = true,
				connector = "PYLON_3",
            },
            {
				{ CLSID = "Fuel_Tank_FT600" ,arg_value = 0.0 },								 		 -- Clean
            }
        ),	
        pylon(4, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 311,
				arg_value = 0,
				DisplayName = "4",
  				use_full_connector_position = true,
				connector = "PYLON_4",
            },
            {
				{ CLSID = "MXU-648-TP" ,arg_value = 0.0 },
				{ CLSID = "Fuel_Tank_FT600" ,arg_value = 0.0 },							 		 -- Clean
            }
		),
				pylon(5, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 0,
				arg_value = 0,
				DisplayName = "J1",
  				use_full_connector_position = true,
				connector = "JSS1",
            },
            {
				{ CLSID = "{Band4}" ,arg_value = 0.0 },
				{ CLSID = "{Band56}",arg_value = 1.0 },
				{ CLSID = "{Band7}" ,arg_value = 0.0 },
				{ CLSID = "{Band8}" ,arg_value = 0.0 },
				{ CLSID = "{Band9}" ,arg_value = 0.0 },
            }
		),
		pylon(6, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 0,
				arg_value = 0,
				DisplayName = "J2",
  				use_full_connector_position = true,
				connector = "JSS2",
            },
            {
				{ CLSID = "{Band4}" ,arg_value = 0.0 },
				{ CLSID = "{Band56}",arg_value = 0.0 },
				{ CLSID = "{Band7}" ,arg_value = 0.0 },
				{ CLSID = "{Band8}" ,arg_value = 0.0 },
				{ CLSID = "{Band9}" ,arg_value = 1.0 },
            }
		),
		pylon(7, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 0,
				arg_value = 0,
				DisplayName = "J3",
  				use_full_connector_position = true,
				connector = "JSS3",
            },
            {
				{ CLSID = "{Band4}" ,arg_value = 1.0 },
				{ CLSID = "{Band56}",arg_value = 0.0 },
				{ CLSID = "{Band7}" ,arg_value = 0.0 },
				{ CLSID = "{Band8}" ,arg_value = 0.0 },
				{ CLSID = "{Band9}" ,arg_value = 0.0 },
            }
		),
		pylon(8, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 0,
				arg_value = 0,
				DisplayName = "J4",
  				use_full_connector_position = true,
				connector = "JSS4",
            },
            {
				{ CLSID = "{Band4}" ,arg_value = 0.0 },
				{ CLSID = "{Band56}",arg_value = 0.0 },
				{ CLSID = "{Band7}" ,arg_value = 1.0 },
				{ CLSID = "{Band8}" ,arg_value = 0.0 },
				{ CLSID = "{Band9}" ,arg_value = 0.0 },
            }
		),
		pylon(9, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 0,
				arg_value = 0,
				DisplayName = "J5",
  				use_full_connector_position = true,
				connector = "JSS5",
            },
            {
				{ CLSID = "{Band4}" ,arg_value = 0.0 },
				{ CLSID = "{Band56}",arg_value = 0.0 },
				{ CLSID = "{Band7}" ,arg_value = 0.0 },
				{ CLSID = "{Band8}" ,arg_value = 1.0 },
				{ CLSID = "{Band9}" ,arg_value = 0.0 },
            }
		),
		pylon(10, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 0,
				arg_value = 0,
				DisplayName = "J6",
  				use_full_connector_position = true,
				connector = "JSS6",
            },
            {
				{ CLSID = "{Band4}" ,arg_value = 0.0 },
				{ CLSID = "{Band56}",arg_value = 0.0 },
				{ CLSID = "{Band7}" ,arg_value = 1.0 },
				{ CLSID = "{Band8}" ,arg_value = 0.0 },
				{ CLSID = "{Band9}" ,arg_value = 0.0 },
            }
		),
		pylon(11, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 0,
				arg_value = 0,
				DisplayName = "J7",
  				use_full_connector_position = true,
				connector = "JSS7",
            },
            {
				{ CLSID = "{Band4}" ,arg_value = 0.0 },
				{ CLSID = "{Band56}",arg_value = 0.0 },
				{ CLSID = "{Band7}" ,arg_value = 0.0 },
				{ CLSID = "{Band8}" ,arg_value = 0.0 },
				{ CLSID = "{Band9}" ,arg_value = 1.0 },
            }
		),
		pylon(12, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 0,
				arg_value = 0,
				DisplayName = "J8",
  				use_full_connector_position = true,
				connector = "JSS8",
            },
            {
				{ CLSID = "{Band4}" ,arg_value = 1.0 },
				{ CLSID = "{Band56}",arg_value = 0.0 },
				{ CLSID = "{Band7}" ,arg_value = 0.0 },
				{ CLSID = "{Band8}" ,arg_value = 0.0 },
				{ CLSID = "{Band9}" ,arg_value = 0.0 },
            }
		),
		pylon(13, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 0,
				arg_value = 0,
				DisplayName = "J9",
  				use_full_connector_position = true,
				connector = "JSS9",
            },
            {
				{ CLSID = "{Band4}" ,arg_value = 0.0 },
				{ CLSID = "{Band56}",arg_value = 1.0 },
				{ CLSID = "{Band7}" ,arg_value = 0.0 },
				{ CLSID = "{Band8}" ,arg_value = 0.0 },
				{ CLSID = "{Band9}" ,arg_value = 0.0 },
            }
		
        ),
		pylon(14, 1, 0, 0, 0,
            {
				FiX = 0,
				FiY = 0,
				FiZ = 0,
				arg = 0,
				arg_value = 0,
				DisplayName = "J10",
            },
            {
				{ CLSID = "{Band1}" ,arg_value = 0.0 },
				{ CLSID = "{Band2}",arg_value = 1.0 },
            }
		
        ),
},

	Tasks = {
--      aircraft_task(CAP),
     	aircraft_task(Escort),
--      aircraft_task(FighterSweep),
--		aircraft_task(Intercept),
		aircraft_task(Reconnaissance),
--      aircraft_task(AFAC),
--		aircraft_task(SEAD), -- 29
        aircraft_task(AntishipStrike), -- 30
        aircraft_task(CAS), -- 31
        aircraft_task(GroundAttack), -- 32
        aircraft_task(PinpointStrike), -- 33
        aircraft_task(RunwayAttack), -- 34
    },	
	DefaultTask = aircraft_task(GroundAttack),

	SFM_Data = {
	aerodynamics = -- F15
		{
			Cy0	=	0,
			Mzalfa	=	6,
			Mzalfadt	=	1,
			kjx = 2.95,
			kjz = 0.00125,
			Czbe = -0.016,
			cx_gear = 0.0268,
			cx_flap = 0.06,
			cy_flap = 0.4,
			cx_brk = 0.06,
			table_data = 
			{
			--      M	 Cx0		 Cya		 B		 B4	      Omxmax	Aldop	Cymax
				{0.0,	0.0215,		0.055,		0.08,		0.22,	0.65,	25.0,	1.2 	},
				{0.2,	0.0215,		0.055,		0.08,		0.22,	1.80,	25.0,	1.2     },
				{0.4,	0.0215,		0.055,		0.08,	   	0.22,	3.00,	25.0,	1.2     },
				{0.6,	0.0215,		0.055,		0.05,		0.28,	4.20,	25.0,	1.2     },
				{0.7,	0.0215,		0.055,		0.05,		0.28,	4.20,	23.0,	1.15    },
				{0.8,	0.0215,		0.055,		0.05,		0.28,	4.20,	21.7,	1.1     },
				{0.9,	0.0230,		0.058,		0.09,		0.20,	4.20,	20.1,	1.07    },
				{1.0,	0.0320,		0.062,		0.17,		0.15,	4.20,	18.9,	1.04    },
				{1.1,	0.0430,		0.062,	   	0.235,		0.09,	3.78,	17.4,	1.02    },
				{1.2,	0.0460,		0.062,	   	0.285,		0.08,	2.94,	17.0,	1.00 	},		
				{1.3,	0.0470,		0.06,	   	0.29,		0.10,	2.10,	16.0,	0.92 	},				
				{1.4,	0.0470,		0.056,	   	0.3,		0.136,	1.80,	15.0,	0.80 	},					
				{1.6,	0.0470,		0.052,	   	0.34,		0.21,	1.08,	13.0,	0.7 	},					
				{1.8,	0.0460,		0.042,	   	0.34,		2.43,	0.96,	12.0,	0.55 	},		
				{2.2,	0.0420,		0.037,	   	0.49,		3.5,	0.84,	 10.0,	0.37 	},					
				{2.5,	0.0420,		0.033,		0.6,		4.7,	0.84,	 9.0,	0.3 	},		
				{3.9,	0.0400,		0.023,		0.9,		6.0,	0.84,	 7.0,	0.2		},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			type	=	"TurboJet",
			hMaxEng	=	19.5,
			dcx_eng	=	0.0114,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	6000,
			dpdh_f	=	14000.0,
			table_data = {
			--   M		Pmax		 Pfor
				{0.0,	115000,		212000},
				{0.2,	 94000,		200000},
				{0.4,	 92000,		205000},
				{0.6,	103000,		207000},
				{0.7,	105000,		210000},
				{0.8,	105000,		220000},
				{0.9,	105000,		235000},
				{1.0,	107000,		250000},
				{1.1,	103000,		258000},
				{1.2,	 94000,		268000},
				{1.3,	 84000,		285000},
				{1.4,	 71000,		300000},
				{1.6,	 34000,		318000},
				{1.8,	 19000,		337000},
				{2.2,	 17000,		370000},
				{2.5,	 19000,		390000},
				{3.9,	 82000,		310000},
			}, -- end of table_data
		}, -- end of engine
	},


	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},
	[1]  = {critical_damage = 3,  args = {150}},
	[2]  = {critical_damage = 3,  args = {149}},
	[3]  = {critical_damage = 8,  args = {65}},
	[4]  = {critical_damage = 2,  args = {298}}, --
	[5]  = {critical_damage = 2,  args = {301}}, --
	[7]  = {critical_damage = 2,  args = {249}}, --
	[8]  = {critical_damage = 3,  args = {265}}, --
	[9]  = {critical_damage = 3,  args = {154}}, 
	[10] = {critical_damage = 3,  args = {153}},
	[11] = {critical_damage = 1,  args = {167}},
	[12] = {critical_damage = 1,  args = {161}},
	[13] = {critical_damage = 2,  args = {169}}, --
	[14] = {critical_damage = 2,  args = {163}}, --
	[15] = {critical_damage = 2,  args = {267}}, --
	[16] = {critical_damage = 2,  args = {266}}, --
	[17] = {critical_damage = 2,  args = {168}}, --
	[18] = {critical_damage = 2,  args = {162}}, --
	[20] = {critical_damage = 2,  args = {183}}, --
	[23] = {critical_damage = 5,  args = {223}}, 
	[24] = {critical_damage = 5,  args = {213}},
	[25] = {critical_damage = 2,  args = {226}}, --
	[26] = {critical_damage = 2,  args = {216}}, --
	[29] = {critical_damage = 5,  args = {224}, deps_cells = {23, 25}}, --
	[30] = {critical_damage = 5,  args = {214}, deps_cells = {24, 26}}, --
	[31] = {critical_damage = 2,  args = {227}},
	[32] = {critical_damage = 2,  args = {217}},
	[33] = {critical_damage = 2,  args = {231}},
	[34] = {critical_damage = 2,  args = {221}},
	[35] = {critical_damage = 6,  args = {225}, deps_cells = {23, 29, 25, 37}},
	[36] = {critical_damage = 6,  args = {215}, deps_cells = {24, 30, 26, 38}}, 
	[37] = {critical_damage = 2,  args = {228}}, --
	[38] = {critical_damage = 2,  args = {218}}, --
	[39] = {critical_damage = 2,  args = {225}},
	[40] = {critical_damage = 2,  args = {215}}, --
	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}}, 
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}}, --
	[45] = {critical_damage = 2,  args = {235}}, --
	[46] = {critical_damage = 2,  args = {233}}, --
	[51] = {critical_damage = 2,  args = {240}}, --
	[52] = {critical_damage = 2,  args = {238}}, --
	[53] = {critical_damage = 2,  args = {247}}, 
	[54] = {critical_damage = 2,  args = {247}}, 
	[55] = {critical_damage = 2,  args = {151}}, 
	[56] = {critical_damage = 2,  args = {158}}, --
	[57] = {critical_damage = 2,  args = {157}}, --
	[58] = {critical_damage = 2,  args = {243}}, --
	[59] = {critical_damage = 3,  args = {148}},
	[61] = {critical_damage = 2,  args = {147}},
	[82] = {critical_damage = 2,  args = {152}},
	},
	
	DamageParts = 
	{  
		[1] = "su-24-oblomok-wing-r", -- wing R
		[2] = "su-24-oblomok-wing-l", -- wing L
	},
	

	lights_data = {
        typename = "collection",
        lights = {
			[WOLALIGHT_FORMATION_LIGHTS] = {
				typename = "collection",
				lights = {
					{ typename  = "argumentlight",	argument  = 88, },
				},		-- green bars
			},
            [WOLALIGHT_NAVLIGHTS] = {
                typename = "collection",
                lights = {
                    {
                        typename = "collection",
                        lights = {
                            {
                                -- typename = "argumentlight", argument = 192,
                            },
                            {
                                typename = "argumentlight", argument = 190,
                            },
                            {
                                typename = "argumentlight", argument = 191,
                            },
							{
                                typename = "argumentlight", argument = 192,
                            },
							{
                                typename = "argumentlight", argument = 195,
                            },
							{
                                typename = "argumentlight", argument = 196,
                            },
                        },
                    },
                },
            },
			[WOLALIGHT_STROBES] = {
				typename = "collection",
				lights = {
					-- 0 -- Anti-collision strobe
					{typename = "natostrobelight", argument = 200, period = 2, phase_shift = 0},	-- Anti-collision strobe
					{typename = "natostrobelight", argument = 202, period = 2, phase_shift = 0},	-- Anti-collision strobe
				},		 
			},
            [WOLALIGHT_SPOTS] = {
                typename = "collection",
                lights = {
                    {
                        typename = "argumentlight", argument = 208,
                        exposure = {{0, 0.9, 1.0}}, movable = true,
                    },
					{
                        typename = "argumentlight", argument = 209,
                        exposure = {{0, 0.9, 1.0}}, movable = true,
                    },
					{
                        typename = "argumentlight", argument = 203,
                        exposure = {{0, 0.9, 1.0}}, movable = true,
                    },
                },
            },
            [WOLALIGHT_TAXI_LIGHTS] = {
                typename = "collection",
                lights = {
                    {
                        typename = "argumentlight", argument = 208,
                        exposure = {{0, 0.9, 1.0}}, movable = true,
                    },
					{
                        typename = "argumentlight", argument = 209,
                        exposure = {{0, 0.9, 1.0}}, movable = true,
					},	
                },
            },
        },
    },
}

add_aircraft(EF111) -- AG