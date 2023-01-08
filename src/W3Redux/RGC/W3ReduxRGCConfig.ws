enum EDefaultQuickUse
{
	EDQU_Inventory = 0,
	EDQU_Potions = 1
}

enum ESprintStaminaUsage
{
	ESSU_Never = 0,
	ESSU_Combat = 1,
	ESSU_Always = 2,
}

function RGCConfigIsImmersiveMotionEnabled() : bool
{
	return (bool) theGame.GetInGameConfigWrapper().GetVarValue('w3ReduxRGC', 'virtual_w3ReduxRGCImmersiveMotion');
}

function RGCConfigAlwaysDisplayInventory() : bool
{
	return (bool) theGame.GetInGameConfigWrapper().GetVarValue('w3ReduxRGC', 'virtual_w3ReduxRGCInvAlwaysDisplay');
}

function RGCConfigGetSprintStaminaUsage() : ESprintStaminaUsage
{
	var cfgVal : int;
	cfgVal = StringToInt(theGame.GetInGameConfigWrapper().GetVarValue('w3ReduxRGC', 'virtual_w3ReduxRGCSprintStaminaUsage'));
	switch( cfgVal )
	{
		case 0:
			return ESSU_Never;
		case 1:
			return ESSU_Combat;
		case 2:
			return ESSU_Always;
	}
	return ESSU_Never;
}

function RGCConfigGetDefaultQuickUse() : EDefaultQuickUse
{
	var cfgVal : int;
	cfgVal = StringToInt(theGame.GetInGameConfigWrapper().GetVarValue('w3ReduxRGC', 'virtual_w3ReduxRGCDefaultInventory'));
	switch( cfgVal )
	{
		case 0:
			return EDQU_Inventory;
		case 1:
			return EDQU_Potions;
	}
	return EDQU_Inventory;
}

function RGC_IsQuickItemsInventory() : bool
{
	if((GetWitcherPlayer().RGC_IsInRealtimeEquipCastMode() && RGCConfigGetDefaultQuickUse() == EDQU_Potions) ||
		(!GetWitcherPlayer().RGC_IsInRealtimeEquipCastMode() && RGCConfigGetDefaultQuickUse() == EDQU_Inventory))
	{
		return true;
	}

	return false;
}

function RGC_IsQuickItemsPotions() : bool
{
	if((GetWitcherPlayer().RGC_IsInRealtimeEquipCastMode() && RGCConfigGetDefaultQuickUse() == EDQU_Inventory) ||
		(!GetWitcherPlayer().RGC_IsInRealtimeEquipCastMode() && RGCConfigGetDefaultQuickUse() == EDQU_Potions))
	{
		return true;
	}

	return false;
}