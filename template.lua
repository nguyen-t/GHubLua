-- Keyboard scan codes as described by the reference
KBD = {
	ESC = 0x001,
	F1 = 0x03b, F2 = 0x03c, F3 = 0x03d,
	F4 = 0x03e, F5 = 0x03f, F6 = 0x040,
	F7 = 0x041, F8 = 0x042, F9 = 0x043,
	F10 = 0x044, F11 = 0x057, F12 = 0x058,
	F13 = 0x064, F14 = 0x065, F15 = 0x066,
	F16 = 0x067, F17 = 0x068, F18 = 0x069,
	F19 = 0x06a, F20 = 0x06b, F21 = 0x06c,
	F22 = 0x06d, F23 = 0x06e, F24 = 0x076,
	PRTSCR = 0x137, SCRLCK = 0x046, PAUSE  = 0x146,
	TILDE  = 0x029,
	KEY_1 = 0x002, KEY_2 = 0x003, KEY_3 = 0x004,
	KEY_4 = 0x005, KEY_5 = 0x006, KEY_6 = 0x007,
	KEY_7 = 0x008, KEY_8 = 0x009, KEY_9 = 0x00a, KEY_0 = 0x00b,
	MINUS = 0x00c, EQUAL = 0x00d, BKSP = 0x00e,
	TAB = 0x00f,
	KEY_Q = 0x010, KEY_W = 0x011, KEY_E = 0x012,
	KEY_R = 0x013, KEY_T = 0x014, KEY_Y = 0x015,
	KEY_U = 0x016, KEY_I = 0x017, KEY_O = 0x018, KEY_P = 0x019,
	LBRACKET = 0x01a, RBRACKET = 0x01b, BKSLASH = 0x02b, CAPSLOCK = 0x03a,
	KEY_A = 0x01e, KEY_S = 0x01f, KEY_D = 0x020,
	KEY_F = 0x021, KEY_G = 0x022, KEY_H = 0x023,
	KEY_J = 0x024, KEY_K = 0x025, KEY_L = 0x026,
	SEMICOLON = 0x027, QUOTE = 0x028, KEY_ENTER = 0x1c,
	LSHIFT = 0x02a, NON_US_SLASH = 0x056,
	KEY_Z = 0x02c, KEY_X = 0x02d, KEY_C = 0x02e,
	KEY_V = 0x02f, KEY_B = 0x030, KEY_N = 0x031,
	KEY_M = 0x032,
	KEY_COMMA = 0x033, KEY_PERIOD = 0x034, FWSLASH = 0x035,
	RSHIFT = 0x036, LCTRL = 0x01d, LGUI = 0x15b,
	LALT = 0x038, SPACE = 0x039, RALT = 0x138,
	RGUI = 0x15c, APPKEY = 0x15d, INS = 0x152,
	HOME = 0x147, PGUP = 0x149, DEL = 0x153,
	END = 0x14f, PGDN = 0x151,
	KEY_UP = 0x148, KEY_LEFT = 0x14b, KEY_DOWN = 0x150, KEY_RIGHT = 0x14d,
	NUM_LOCK = 0x045, NUM_SLASH = 0x135, NUM_MINUS = 0x04a,
	NUM_7 = 0x047, NUM_8 = 0x048, NUM_9 = 0x049,
	NUM_PLUS = 0x04e, 
	NUM_4 = 0x04b, NUM_5 = 0x04c, NUM_6 = 0x04d,
	NUM_1 = 0x04f, NUM_2 = 0x050, NUM_3 = 0x051,
	NUM_ENTER = 0x11c,
	NUM_0 = 0x052,
	NUM_PERIOD = 0x053
}

-- Mouse scan codes, add more if necessary
MOUSE = {
	LEFT_CLICK   = 1,
	MIDDLE_CLICK = 2,
	RIGHT_CLICK  = 3,
	X1           = 4,
	X2           = 5,
	X3           = 6
}

-- For easier event handling
function OnEvent(event, arg)
	--EnablePrimaryMouseButtonEvents(true)

	if event == "PROFILE_ACTIVATED" and OnProfileActive then
		OnProfileActive()
	elseif event == "PROFILE_DEACTIVATED" and OnProfileInActive then
		OnProfileInactive()
	elseif event == "G_PRESSED" and OnGPress then
		OnGPress(arg)
	elseif event == "G_RELEASED" and OnGRelease then
		OnGRelease(arg)
	elseif event == "M_PRESSED" and OnMPress then
		OnMPress(arg)
	elseif event == "M_RELEASED" and OnMRelease then
		OnMRelease(arg)
	elseif event == "MOUSE_BUTTON_PRESSED" and OnMousePress then
		OnMousePress(arg)
	elseif event == "MOUSE_BUTTON_RELEASED" and OnMouseRelease then
		OnMouseRelease(arg)
	end
end
