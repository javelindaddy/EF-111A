local parameters = {
	fighter = false,
	radar = true,
	ECM = true,
	refueling = true
}
return utils.verifyChunk(utils.loadfileIn('Scripts/UI/RadioCommandDialogPanel/Config/LockOnAirplane.lua', getfenv()))(parameters)