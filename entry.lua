self_ID = "EF111"
declare_plugin(self_ID,
{
image     	 = "FC3.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("EF111"),
developerName = _("Javelindaddy"),

fileMenuName = _("EF111"),
update_id        = "EF111",
version		 = "Version 0.5",
state		 = "installed",
info		 = _("Currently under development"),

Skins	=
	{
		{
		    name	    = _("EF111"),
			dir		    = "Theme"
		},
	},
Missions =
	{
		{
			name		= _("EF111"),
			dir			= "Missions",
  		},
	},
LogBook =
	{
		{
			name		= _("EF111"),
			type		= "EF111",
		},
	},	
	
})

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures/EF111")
mount_vfs_texture_path  (current_mod_path.."/Textures/Devrim_SU-25T_EnglishCockpitMod_v1.6")
mount_vfs_texture_path	(current_mod_path.."/Theme/ME")
--mount_vfs_texture_path  (current_mod_path.."/Textures/F111Pit")
mount_vfs_sound_path    (current_mod_path.."/Sounds")
make_view_settings('EF111', ViewSettings, SnapViews)
dofile(current_mod_path..'/EF111.lua')
dofile(current_mod_path.."/Weapons/Loadout.lua")
local cfg_path =current_mod_path.."/FM/F15/config.lua"
dofile(cfg_path)
plugin_done()
