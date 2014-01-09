
transpose = 0
minorkey = 0
keymapMAJ={}
--define remappings for rows 2,3,4 so they can be used as keyboard
keymapMAJ[1]=36
keymapMAJ[09]=38
keymapMAJ[17]=40
keymapMAJ[25]=41
keymapMAJ[33]=43
keymapMAJ[41]=45
keymapMAJ[49]=47
keymapMAJ[57]=48
keymapMAJ[2]=48
keymapMAJ[10]=50
keymapMAJ[18]=52
keymapMAJ[26]=53
keymapMAJ[34]=55
keymapMAJ[42]=57
keymapMAJ[50]=59
keymapMAJ[58]=60
keymapMAJ[3]=60
keymapMAJ[11]=62
keymapMAJ[19]=64
keymapMAJ[27]=65
keymapMAJ[35]=67
keymapMAJ[43]=69
keymapMAJ[51]=71
keymapMAJ[59]=72
--minor key
keymapmin={}
keymapmin[1]=36
keymapmin[09]=38
keymapmin[17]=39
keymapmin[25]=41
keymapmin[33]=43
keymapmin[41]=44
keymapmin[49]=47
keymapmin[57]=48
keymapmin[2]=48
keymapmin[10]=50
keymapmin[18]=51
keymapmin[26]=53
keymapmin[34]=55
keymapmin[42]=56
keymapmin[50]=59
keymapmin[58]=60
keymapmin[3]=60
keymapmin[11]=62
keymapmin[19]=63
keymapmin[27]=65
keymapmin[35]=67
keymapmin[43]=68
keymapmin[51]=71
keymapmin[59]=72

function remote_init(manufacturer, model)
	if model=="Ohm64" then
		local items={
			{name="Keyboard", input="keyboard"},
			{name="Grid 1", input="button", output="value"},
			{name="Grid 2", input="button", output="value"},
			{name="Grid 3", input="button", output="value"},
			{name="Grid 4", input="button", output="value"},
			{name="Grid 5", input="button", output="value"},
			{name="Grid 6", input="button", output="value"},
			{name="Grid 7", input="button", output="value"},
			{name="Grid 8", input="button", output="value"},
			{name="Grid 33", input="button", output="value"},
			{name="Grid 34", input="button", output="value"},
			{name="Grid 35", input="button", output="value"},
			{name="Grid 36", input="button", output="value"},
			{name="Grid 37", input="button", output="value"},
			{name="Grid 38", input="button", output="value"},
			{name="Grid 39", input="button", output="value"},
			{name="Grid 40", input="button", output="value"},
			{name="Grid 41", input="button", output="value"},
			{name="Grid 42", input="button", output="value"},
			{name="Grid 43", input="button", output="value"},
			{name="Grid 44", input="button", output="value"},
			{name="Grid 45", input="button", output="value"},
			{name="Grid 46", input="button", output="value"},
			{name="Grid 47", input="button", output="value"},
			{name="Grid 48", input="button", output="value"},
			{name="Grid 49", input="button", output="value"},
			{name="Grid 50", input="button", output="value"},
			{name="Grid 51", input="button", output="value"},
			{name="Grid 52", input="button", output="value"},
			{name="Grid 53", input="button", output="value"},
			{name="Grid 54", input="button", output="value"},
			{name="Grid 55", input="button", output="value"},
			{name="Grid 56", input="button", output="value"},
			{name="Grid 57", input="button", output="value"},
			{name="Grid 58", input="button", output="value"},
			{name="Grid 59", input="button", output="value"},
			{name="Grid 60", input="button", output="value"},
			{name="Grid 61", input="button", output="value"},
			--{name="Grid 62", input="button", output="value"},
			--{name="Grid 63", input="button", output="value"},
			--{name="Grid 64", input="button", output="value"},
			{name="Fader 1", input="value", min=0, max=127},
			{name="Fader 2", input="value", min=0, max=127},
			{name="Fader 3", input="value", min=0, max=127},
			{name="Fader 4", input="value", min=0, max=127},
			{name="Fader 5", input="value", min=0, max=127},
			{name="Fader 6", input="value", min=0, max=127},
			{name="Fader 7", input="value", min=0, max=127},
			{name="Fader 8", input="value", min=0, max=127},
			{name="Crossfader", input="value", min=0, max=127},
			{name="Knob 1", input="value", min=0, max=127},
			{name="Knob 2", input="value", min=0, max=127},
			{name="Knob 3", input="value", min=0, max=127},
			{name="Knob 4", input="value", min=0, max=127},
			{name="Knob 5", input="value", min=0, max=127},
			{name="Knob 6", input="value", min=0, max=127},
			{name="Knob 7", input="value", min=0, max=127},
			{name="Knob 8", input="value", min=0, max=127},
			{name="Knob 9", input="value", min=0, max=127},
			{name="Knob 10", input="value", min=0, max=127},
			{name="Knob 11", input="value", min=0, max=127},
			{name="Knob 12", input="value", min=0, max=127},
			{name="Knob 13", input="value", min=0, max=127},
			{name="Knob 14", input="value", min=0, max=127},
			{name="Knob 15", input="value", min=0, max=127},
			{name="Knob 16", input="value", min=0, max=127},
			{name="Fader Button 1", input="button", output="value"},
			{name="Fader Button 2", input="button", output="value"},
			{name="Fader Button 3", input="button", output="value"},
			{name="Fader Button 4", input="button", output="value"},
			{name="Fader Button 5", input="button", output="value"},
			{name="Fader Button 6", input="button", output="value"},
			{name="Fader Button 7", input="button", output="value"},
			{name="Fader Button 8", input="button", output="value"},
			{name="Xfade Button Left", input="button", output="value"},
			{name="Xfade Button Right", input="button", output="value"},
			{name="F1 Button", input="button"},
			{name="F2 Button", input="button"},
			{name="F3 Button", input="button"},
			{name="F4 Button", input="button"},
			{name="F5 Button", input="button"},
			{name="F6 Button", input="button"},
			--{name="BPM Button", input="button", output="value"}
		}
		remote.define_items(items)
	else
		local items={
			{name="Keyboard", input="keyboard"},
			{name="Grid 1", input="button", output="value"},
			{name="Grid 2", input="button", output="value"},
			{name="Grid 3", input="button", output="value"},
			{name="Grid 4", input="button", output="value"},
			{name="Grid 5", input="button", output="value"},
			{name="Grid 6", input="button", output="value"},
			{name="Grid 7", input="button", output="value"},
			{name="Grid 8", input="button", output="value"},
			{name="Grid 33", input="button", output="value"},
			{name="Grid 34", input="button", output="value"},
			{name="Grid 35", input="button", output="value"},
			{name="Grid 36", input="button", output="value"},
			{name="Grid 37", input="button", output="value"},
			{name="Grid 38", input="button", output="value"},
			{name="Grid 39", input="button", output="value"},
			{name="Grid 40", input="button", output="value"},
			{name="Grid 41", input="button", output="value"},
			{name="Grid 42", input="button", output="value"},
			{name="Grid 43", input="button", output="value"},
			{name="Grid 44", input="button", output="value"},
			{name="Grid 45", input="button", output="value"},
			{name="Grid 46", input="button", output="value"},
			{name="Grid 47", input="button", output="value"},
			{name="Grid 48", input="button", output="value"},
			{name="Grid 49", input="button", output="value"},
			{name="Grid 50", input="button", output="value"},
			{name="Grid 51", input="button", output="value"},
			{name="Grid 52", input="button", output="value"},
			{name="Grid 53", input="button", output="value"},
			{name="Grid 54", input="button", output="value"},
			{name="Grid 55", input="button", output="value"},
			{name="Grid 56", input="button", output="value"},
			{name="Grid 57", input="button", output="value"},
			{name="Grid 58", input="button", output="value"},
			{name="Grid 59", input="button", output="value"},
			{name="Grid 60", input="button", output="value"},
			{name="Grid 61", input="button", output="value"},
			--{name="Grid 62", input="button", output="value"},
			--{name="Grid 63", input="button", output="value"},
			--{name="Grid 64", input="button", output="value"},

			{name="Knob 1", input="value", min=0, max=127},
			{name="Knob 2", input="value", min=0, max=127},
			{name="Knob 3", input="value", min=0, max=127},
			{name="Knob 4", input="value", min=0, max=127},
			{name="Knob 5", input="value", min=0, max=127},
			{name="Knob 6", input="value", min=0, max=127},
			{name="Knob 7", input="value", min=0, max=127},
			{name="Knob 8", input="value", min=0, max=127},
			{name="Fader 1", input="value", min=0, max=127},
			{name="Fader 2", input="value", min=0, max=127},
			{name="F1 Button", input="button"},
			{name="F2 Button", input="button"},
			{name="F3 Button", input="button"},
			{name="F4 Button", input="button"},
			{name="F5 Button", input="button"},
			{name="F6 Button", input="button"},
			--{name="BPM Button", input="button", output="value"}
		}
		remote.define_items(items)
	end
	if model=="Ohm64" then
		local inputs={
			{pattern="<100x>? 00 <z000>0", name="Grid 1"},
			{pattern="<100x>? 08 <z000>0", name="Grid 2"},
			{pattern="<100x>? 10 <z000>0", name="Grid 3"},
			{pattern="<100x>? 18 <z000>0", name="Grid 4"},
			{pattern="<100x>? 20 <z000>0", name="Grid 5"},
			{pattern="<100x>? 28 <z000>0", name="Grid 6"},
			{pattern="<100x>? 30 <z000>0", name="Grid 7"},
			{pattern="<100x>? 38 <z000>0", name="Grid 8"},
			{pattern="<100x>? 04 <z000>0", name="Grid 33"},
			{pattern="<100x>? 0C <z000>0", name="Grid 34"},
			{pattern="<100x>? 14 <z000>0", name="Grid 35"},
			{pattern="<100x>? 1C <z000>0", name="Grid 36"},
			{pattern="<100x>? 24 <z000>0", name="Grid 37"},
			{pattern="<100x>? 2C <z000>0", name="Grid 38"},
			{pattern="<100x>? 34 <z000>0", name="Grid 39"},
			{pattern="<100x>? 3C <z000>0", name="Grid 40"},
			{pattern="<100x>? 05 <z000>0", name="Grid 41"},
			{pattern="<100x>? 0D <z000>0", name="Grid 42"},
			{pattern="<100x>? 15 <z000>0", name="Grid 43"},
			{pattern="<100x>? 1D <z000>0", name="Grid 44"},
			{pattern="<100x>? 25 <z000>0", name="Grid 45"},
			{pattern="<100x>? 2D <z000>0", name="Grid 46"},
			{pattern="<100x>? 35 <z000>0", name="Grid 47"},
			{pattern="<100x>? 3D <z000>0", name="Grid 48"},
			{pattern="<100x>? 06 <z000>0", name="Grid 49"},
			{pattern="<100x>? 0E <z000>0", name="Grid 50"},
			{pattern="<100x>? 16 <z000>0", name="Grid 51"},
			{pattern="<100x>? 1E <z000>0", name="Grid 52"},
			{pattern="<100x>? 26 <z000>0", name="Grid 53"},
			{pattern="<100x>? 2E <z000>0", name="Grid 54"},
			{pattern="<100x>? 36 <z000>0", name="Grid 55"},
			{pattern="<100x>? 3E <z000>0", name="Grid 56"},
			{pattern="<100x>? 07 <z000>0", name="Grid 57"},
			{pattern="<100x>? 0F <z000>0", name="Grid 58"},
			{pattern="<100x>? 17 <z000>0", name="Grid 59"},
			{pattern="<100x>? 1F <z000>0", name="Grid 60"},
			{pattern="<100x>? 27 <z000>0", name="Grid 61"},
			--{pattern="<100x>? 2F <z000>0", name="Grid 62"},
			--{pattern="<100x>? 37 <z000>0", name="Grid 63"},
			--{pattern="<100x>? 3F <z000>0", name="Grid 64"},

			{pattern="b? 17 xx", name="Fader 1"},
			{pattern="b? 16 xx", name="Fader 2"},
			{pattern="b? 0f xx", name="Fader 3"},
			{pattern="b? 0e xx", name="Fader 4"},
			{pattern="b? 05 xx", name="Fader 5"},
			{pattern="b? 07 xx", name="Fader 6"},
			{pattern="b? 06 xx", name="Fader 7"},
			{pattern="b? 04 xx", name="Fader 8"},
			{pattern="b? 11 xx", name="Knob 1"},
			{pattern="b? 10 xx", name="Knob 2"},
			{pattern="b? 09 xx", name="Knob 3"},
			{pattern="b? 08 xx", name="Knob 4"},
			{pattern="b? 13 xx", name="Knob 5"},
			{pattern="b? 12 xx", name="Knob 6"},
			{pattern="b? 0b xx", name="Knob 7"},
			{pattern="b? 0a xx", name="Knob 8"},
			{pattern="b? 15 xx", name="Knob 9"},
			{pattern="b? 14 xx", name="Knob 10"},
			{pattern="b? 0d xx", name="Knob 11"},
			{pattern="b? 0c xx", name="Knob 12"},
			{pattern="b? 03 xx", name="Knob 13"},
			{pattern="b? 01 xx", name="Knob 14"},
			{pattern="b? 00 xx", name="Knob 15"},
			{pattern="b? 02 xx", name="Knob 16"},
			{pattern="b? 18 xx", name="Crossfader"},
			{pattern="<100x>? 41 <z000>0", name="Fader Button 1"},
			{pattern="<100x>? 49 <z000>0", name="Fader Button 2"},
			{pattern="<100x>? 42 <z000>0", name="Fader Button 3"},
			{pattern="<100x>? 4a <z000>0", name="Fader Button 4"},
			{pattern="<100x>? 43 <z000>0", name="Fader Button 5"},
			{pattern="<100x>? 4b <z000>0", name="Fader Button 6"},
			{pattern="<100x>? 44 <z000>0", name="Fader Button 7"},
			{pattern="<100x>? 4c <z000>0", name="Fader Button 8"},
			{pattern="<100x>? 40 <z000>0", name="Xfade Button Left"},
			{pattern="<100x>? 48 <z000>0", name="Xfade Button Right"},
			{pattern="<100x>? 4d <z000>0", name="F1 Button"},
			{pattern="<100x>? 4e <z000>0", name="F2 Button"},
			{pattern="<100x>? 4f <z000>0", name="F3 Button"},
			{pattern="<100x>? 45 <z000>0", name="F4 Button"},
			{pattern="<100x>? 46 <z000>0", name="F5 Button"},
			{pattern="<100x>? 47 <z000>0", name="F6 Button"},
			--{pattern="<100x>? 57 <z000>0", name="BPM Button"}
		}
		remote.define_auto_inputs(inputs)
	else
		local inputs={
			{pattern="<100x>? 00 <z000>0", name="Grid 1"},
			{pattern="<100x>? 08 <z000>0", name="Grid 2"},
			{pattern="<100x>? 10 <z000>0", name="Grid 3"},
			{pattern="<100x>? 18 <z000>0", name="Grid 4"},
			{pattern="<100x>? 20 <z000>0", name="Grid 5"},
			{pattern="<100x>? 28 <z000>0", name="Grid 6"},
			{pattern="<100x>? 30 <z000>0", name="Grid 7"},
			{pattern="<100x>? 38 <z000>0", name="Grid 8"},
			--[[{pattern="<100x>? 01 <z000>0", name="Grid 9"},
			{pattern="<100x>? 09 <z000>0", name="Grid 10"},
			{pattern="<100x>? 11 <z000>0", name="Grid 11"},
			{pattern="<100x>? 19 <z000>0", name="Grid 12"},
			{pattern="<100x>? 21 <z000>0", name="Grid 13"},
			{pattern="<100x>? 29 <z000>0", name="Grid 14"},
			{pattern="<100x>? 31 <z000>0", name="Grid 15"},
			{pattern="<100x>? 39 <z000>0", name="Grid 16"},
			{pattern="<100x>? 02 <z000>0", name="Grid 17"},
			{pattern="<100x>? 0A <z000>0", name="Grid 18"},
			{pattern="<100x>? 12 <z000>0", name="Grid 19"},
			{pattern="<100x>? 1A <z000>0", name="Grid 20"},
			{pattern="<100x>? 22 <z000>0", name="Grid 21"},
			{pattern="<100x>? 2A <z000>0", name="Grid 22"},
			{pattern="<100x>? 32 <z000>0", name="Grid 23"},
			{pattern="<100x>? 3A <z000>0", name="Grid 24"},
			{pattern="<100x>? 03 <z000>0", name="Grid 25"},
			{pattern="<100x>? 0B <z000>0", name="Grid 26"},
			{pattern="<100x>? 13 <z000>0", name="Grid 27"},
			{pattern="<100x>? 1B <z000>0", name="Grid 28"},
			{pattern="<100x>? 23 <z000>0", name="Grid 29"},
			{pattern="<100x>? 2B <z000>0", name="Grid 30"},
			{pattern="<100x>? 33 <z000>0", name="Grid 31"},
			{pattern="<100x>? 3B <z000>0", name="Grid 32"},]]--
			{pattern="<100x>? 04 <z000>0", name="Grid 33"},
			{pattern="<100x>? 0C <z000>0", name="Grid 34"},
			{pattern="<100x>? 14 <z000>0", name="Grid 35"},
			{pattern="<100x>? 1C <z000>0", name="Grid 36"},
			{pattern="<100x>? 24 <z000>0", name="Grid 37"},
			{pattern="<100x>? 2C <z000>0", name="Grid 38"},
			{pattern="<100x>? 34 <z000>0", name="Grid 39"},
			{pattern="<100x>? 3C <z000>0", name="Grid 40"},
			{pattern="<100x>? 05 <z000>0", name="Grid 41"},
			{pattern="<100x>? 0D <z000>0", name="Grid 42"},
			{pattern="<100x>? 15 <z000>0", name="Grid 43"},
			{pattern="<100x>? 1D <z000>0", name="Grid 44"},
			{pattern="<100x>? 25 <z000>0", name="Grid 45"},
			{pattern="<100x>? 2D <z000>0", name="Grid 46"},
			{pattern="<100x>? 35 <z000>0", name="Grid 47"},
			{pattern="<100x>? 3D <z000>0", name="Grid 48"},
			{pattern="<100x>? 06 <z000>0", name="Grid 49"},
			{pattern="<100x>? 0E <z000>0", name="Grid 50"},
			{pattern="<100x>? 16 <z000>0", name="Grid 51"},
			{pattern="<100x>? 1E <z000>0", name="Grid 52"},
			{pattern="<100x>? 26 <z000>0", name="Grid 53"},
			{pattern="<100x>? 2E <z000>0", name="Grid 54"},
			{pattern="<100x>? 36 <z000>0", name="Grid 55"},
			{pattern="<100x>? 3E <z000>0", name="Grid 56"},
			{pattern="<100x>? 07 <z000>0", name="Grid 57"},
			{pattern="<100x>? 0F <z000>0", name="Grid 58"},
			{pattern="<100x>? 17 <z000>0", name="Grid 59"},
			{pattern="<100x>? 1F <z000>0", name="Grid 60"},
			{pattern="<100x>? 27 <z000>0", name="Grid 61"},
			--{pattern="<100x>? 2F <z000>0", name="Grid 62"},
			--{pattern="<100x>? 37 <z000>0", name="Grid 63"},
			--{pattern="<100x>? 3F <z000>0", name="Grid 64"},

			{pattern="b? 03 xx", name="Knob 1"},
			{pattern="b? 02 xx", name="Knob 2"},
			{pattern="b? 01 xx", name="Knob 3"},
			{pattern="b? 00 xx", name="Knob 4"},
			{pattern="b? 05 xx", name="Knob 5"},
			{pattern="b? 04 xx", name="Knob 6"},
			{pattern="b? 06 xx", name="Knob 7"},
			{pattern="b? 07 xx", name="Knob 8"},		
			{pattern="b? 09 xx", name="Fader 1"},
			{pattern="b? 08 xx", name="Fader 2"},
			{pattern="<100x>? 45 <z000>0", name="F1 Button"},
			{pattern="<100x>? 46 <z000>0", name="F2 Button"},
			{pattern="<100x>? 42 <z000>0", name="F3 Button"},
			{pattern="<100x>? 43 <z000>0", name="F4 Button"},
			{pattern="<100x>? 47 <z000>0", name="F5 Button"},
			{pattern="<100x>? 44 <z000>0", name="F6 Button"},
			--{pattern="<100x>? 40 <z000>0", name="BPM Button"}
		}
		remote.define_auto_inputs(inputs)
	end

	if model=="Ohm64" then
		local outputs={
			{pattern="9? 00 xx", name="Grid 1"},
			{pattern="9? 08 xx", name="Grid 2"},
			{pattern="9? 10 xx", name="Grid 3"},
			{pattern="9? 18 xx", name="Grid 4"},
			{pattern="9? 20 xx", name="Grid 5"},
			{pattern="9? 28 xx", name="Grid 6"},
			{pattern="9? 30 xx", name="Grid 7"},
			{pattern="9? 38 xx", name="Grid 8"},
			--[[
			{pattern="9? 01 xx", name="Grid 9"},
			{pattern="9? 09 xx", name="Grid 10"},
			{pattern="9? 11 xx", name="Grid 11"},
			{pattern="9? 19 xx", name="Grid 12"},
			{pattern="9? 21 xx", name="Grid 13"},
			{pattern="9? 29 xx", name="Grid 14"},
			{pattern="9? 31 xx", name="Grid 15"},
			{pattern="9? 39 xx", name="Grid 16"},
			{pattern="9? 02 xx", name="Grid 17"},
			{pattern="9? 0A xx", name="Grid 18"},
			{pattern="9? 12 xx", name="Grid 19"},
			{pattern="9? 1A xx", name="Grid 20"},
			{pattern="9? 22 xx", name="Grid 21"},
			{pattern="9? 2A xx", name="Grid 22"},
			{pattern="9? 32 xx", name="Grid 23"},
			{pattern="9? 3A xx", name="Grid 24"},
			{pattern="9? 03 xx", name="Grid 25"},
			{pattern="9? 0B xx", name="Grid 26"},
			{pattern="9? 13 xx", name="Grid 27"},
			{pattern="9? 1B xx", name="Grid 28"},
			{pattern="9? 23 xx", name="Grid 29"},
			{pattern="9? 2B xx", name="Grid 30"},
			{pattern="9? 33 xx", name="Grid 31"},
			{pattern="9? 3B xx", name="Grid 32"},--]]
			{pattern="9? 04 xx", name="Grid 33"},
			{pattern="9? 0C xx", name="Grid 34"},
			{pattern="9? 14 xx", name="Grid 35"},
			{pattern="9? 1C xx", name="Grid 36"},
			{pattern="9? 24 xx", name="Grid 37"},
			{pattern="9? 2C xx", name="Grid 38"},
			{pattern="9? 34 xx", name="Grid 39"},
			{pattern="9? 3C xx", name="Grid 40"},
			{pattern="9? 05 xx", name="Grid 41"},
			{pattern="9? 0D xx", name="Grid 42"},
			{pattern="9? 15 xx", name="Grid 43"},
			{pattern="9? 1D xx", name="Grid 44"},
			{pattern="9? 25 xx", name="Grid 45"},
			{pattern="9? 2D xx", name="Grid 46"},
			{pattern="9? 35 xx", name="Grid 47"},
			{pattern="9? 3D xx", name="Grid 48"},
			{pattern="9? 06 xx", name="Grid 49"},
			{pattern="9? 0E xx", name="Grid 50"},
			{pattern="9? 16 xx", name="Grid 51"},
			{pattern="9? 1E xx", name="Grid 52"},
			{pattern="9? 26 xx", name="Grid 53"},
			{pattern="9? 2E xx", name="Grid 54"},
			{pattern="9? 36 xx", name="Grid 55"},
			{pattern="9? 3E xx", name="Grid 56"},
			{pattern="9? 07 xx", name="Grid 57"},
			{pattern="9? 0F xx", name="Grid 58"},
			{pattern="9? 17 xx", name="Grid 59"},
			{pattern="9? 1F xx", name="Grid 60"},
			{pattern="9? 27 xx", name="Grid 61"},
			--{pattern="9? 2F xx", name="Grid 62"},
			--{pattern="9? 37 xx", name="Grid 63"},
			--{pattern="9? 3F xx", name="Grid 64"},
			
			{pattern="90 41 xx", name="Fader Button 1"},
			{pattern="90 49 xx", name="Fader Button 2"},
			{pattern="90 42 xx", name="Fader Button 3"},
			{pattern="90 4A xx", name="Fader Button 4"},
			{pattern="90 43 xx", name="Fader Button 5"},
			{pattern="90 4B xx", name="Fader Button 6"},
			{pattern="90 44 xx", name="Fader Button 7"},
			{pattern="90 4C xx", name="Fader Button 8"},
			{pattern="90 40 xx", name="Xfade Button Left"},
			{pattern="90 48 xx", name="Xfade Button Right"},
			--{pattern="90 57 xx", name="BPM Button"}
		}
		remote.define_auto_outputs(outputs)
	else
		local outputs={
			{pattern="9? 00 xx", name="Grid 1"},
			{pattern="9? 08 xx", name="Grid 2"},
			{pattern="9? 10 xx", name="Grid 3"},
			{pattern="9? 18 xx", name="Grid 4"},
			{pattern="9? 20 xx", name="Grid 5"},
			{pattern="9? 28 xx", name="Grid 6"},
			{pattern="9? 30 xx", name="Grid 7"},
			{pattern="9? 38 xx", name="Grid 8"},
			--[[{pattern="9? 01 xx", name="Grid 9"},
			{pattern="9? 09 xx", name="Grid 10"},
			{pattern="9? 11 xx", name="Grid 11"},
			{pattern="9? 19 xx", name="Grid 12"},
			{pattern="9? 21 xx", name="Grid 13"},
			{pattern="9? 29 xx", name="Grid 14"},
			{pattern="9? 31 xx", name="Grid 15"},
			{pattern="9? 39 xx", name="Grid 16"},
			{pattern="9? 02 xx", name="Grid 17"},
			{pattern="9? 0A xx", name="Grid 18"},
			{pattern="9? 12 xx", name="Grid 19"},
			{pattern="9? 1A xx", name="Grid 20"},
			{pattern="9? 22 xx", name="Grid 21"},
			{pattern="9? 2A xx", name="Grid 22"},
			{pattern="9? 32 xx", name="Grid 23"},
			{pattern="9? 3A xx", name="Grid 24"},
			{pattern="9? 03 xx", name="Grid 25"},
			{pattern="9? 0B xx", name="Grid 26"},
			{pattern="9? 13 xx", name="Grid 27"},
			{pattern="9? 1B xx", name="Grid 28"},
			{pattern="9? 23 xx", name="Grid 29"},
			{pattern="9? 2B xx", name="Grid 30"},
			{pattern="9? 33 xx", name="Grid 31"},
			{pattern="9? 3B xx", name="Grid 32"},]]--
			{pattern="9? 04 xx", name="Grid 33"},
			{pattern="9? 0C xx", name="Grid 34"},
			{pattern="9? 14 xx", name="Grid 35"},
			{pattern="9? 1C xx", name="Grid 36"},
			{pattern="9? 24 xx", name="Grid 37"},
			{pattern="9? 2C xx", name="Grid 38"},
			{pattern="9? 34 xx", name="Grid 39"},
			{pattern="9? 3C xx", name="Grid 40"},
			{pattern="9? 05 xx", name="Grid 41"},
			{pattern="9? 0D xx", name="Grid 42"},
			{pattern="9? 15 xx", name="Grid 43"},
			{pattern="9? 1D xx", name="Grid 44"},
			{pattern="9? 25 xx", name="Grid 45"},
			{pattern="9? 2D xx", name="Grid 46"},
			{pattern="9? 35 xx", name="Grid 47"},
			{pattern="9? 3D xx", name="Grid 48"},
			{pattern="9? 06 xx", name="Grid 49"},
			{pattern="9? 0E xx", name="Grid 50"},
			{pattern="9? 16 xx", name="Grid 51"},
			{pattern="9? 1E xx", name="Grid 52"},
			{pattern="9? 26 xx", name="Grid 53"},
			{pattern="9? 2E xx", name="Grid 54"},
			{pattern="9? 36 xx", name="Grid 55"},
			{pattern="9? 3E xx", name="Grid 56"},
			{pattern="9? 07 xx", name="Grid 57"},
			{pattern="9? 0F xx", name="Grid 58"},
			{pattern="9? 17 xx", name="Grid 59"},
			{pattern="9? 1F xx", name="Grid 60"},
			{pattern="9? 27 xx", name="Grid 61"},
			--{pattern="9? 2F xx", name="Grid 62"},
			--{pattern="9? 37 xx", name="Grid 63"},
			--{pattern="9? 3F xx", name="Grid 64"},
		}
		remote.define_auto_outputs(outputs)
	end
end

g_delivered_minorkey=0
g_delivered_transpose=0
shift = 0
function remote_process_midi(event)
	ret=remote.match_midi("<100x>? yy zz",event) --find a note on or off
	local bpm=remote.match_midi("<100x>? 57 zz",event) --find bpm btn
	transposereset=remote.match_midi("9? 2F 40",event) --find grid 62
	transposeup=remote.match_midi("9? 3F 40",event) --find grid 63
	transposedn=remote.match_midi("9? 37 40",event) --find grid 64
	if (bpm) then
		if bpm.z>0 then
			shift = 1 --like a computer's shift key
			minorkey = 1-minorkey --also acts as a toggle for minor or major key
		else
			shift = 0
		end
	end
	if(transposeup) then
		--if BPM key is down, make it transpose an octave rather than a step
		transpose=transpose+(1-shift)+(shift*12)
	end
	if(transposedn) then
		transpose=transpose-(1-shift)-(shift*12)
	end
	if(transposereset) then
		transpose=0
	end

	if ret~=nil then
		--remote.trace("\nIN"..ret.x.." "..ret.y.." "..ret.z)
		if (keymapMAJ[ret.y]~=nil) then --if this note in the "keymapMAJ" table then we need to remap it
			--remote.trace("\nmatch".." "..ret.x.." "..keymapMAJ[ret.y])
			local noteout = -1
			local ignore = 0
			if(minorkey==0) then
				noteout = transpose+keymapMAJ[ret.y] --remap the note according to keymapMAJ table
				if noteout>127 or noteout<0 then 
					ignore=1
				end
			else
				noteout = transpose+keymapmin[ret.y] --remap the note according to keymapmin table
				if noteout>127 or noteout<0 then 
					ignore=1
				end
			end
			if(ignore==0) then
				local msg={ time_stamp=event.time_stamp, item=1, value=ret.x, note=noteout,velocity=ret.z }
				remote.handle_input(msg)
				--remote.trace("\nnoteout "..noteout.." "..ret.x.." "..ret.z);
			end
			return true
			end
		
		else
		return false
	end
	return false
end

function remote_deliver_midi()
	local ret_events={}
	local upevent={}
	local dnevent={}
	local minorevent={}
	if g_delivered_transpose~=transpose then
		if transpose>0 then
			upevent = remote.make_midi("90 3F 40")
			table.insert(ret_events,upevent)
			dnevent = remote.make_midi("90 37 00")
			table.insert(ret_events,dnevent)
		elseif transpose<0 then
			upevent = remote.make_midi("90 3F 00")
			table.insert(ret_events,upevent)
			dnevent = remote.make_midi("90 37 40")
			table.insert(ret_events,dnevent)
		elseif transpose==0 then
			upevent = remote.make_midi("90 3F 00")
			table.insert(ret_events,upevent)
			dnevent = remote.make_midi("90 37 00")
			table.insert(ret_events,dnevent)
		end
		g_delivered_transpose=transpose
	end
	if g_delivered_minorkey~=minorkey then
		if minorkey>0 then
			minorevent = remote.make_midi("90 57 40")
			table.insert(ret_events,minorevent)
		else	
			minorevent = remote.make_midi("90 57 00")
			table.insert(ret_events,minorevent)
		end
	g_delivered_minorkey=minorkey
	end
	return ret_events
end

function remote_probe(manufacturer,model)
	if model=="Ohm64" then
		return {
			request="f0 7e 7f 06 01 f7",
			response="f0 7e 00 06 02 00 01 61 01 00 02 ?? ?? ?? ?? ?? f7"
		}
	else
		return {
			request="f0 7e 7f 06 01 f7",
			response="f0 7e ?? 06 02 00 01 61 01 00 03 00 ?? ?? ?? ?? F7"
		}
	end
end

function remote_prepare_for_use() 
	if model=="Ohm64" then
		return {
			--remote.make_midi("F0 00 01 61 02 06 F7")
			remote.make_midi("F0 00 01 61 02 04 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F F7"),
			remote.make_midi("F0 00 01 61 02 08 04 F7"),
			remote.make_midi("F0 00 01 61 02 09 77 01 7F F7"),
			remote.make_midi("F0 00 01 61 02 0A 00 00 01 00 02 00 03 00 04 00 05 00 06 00 07 00 08 00 09 00 0A 00 0B 00 0C 00 0D 00 0E 00 0F 00 10 00 11 00 12 00 13 00 14 00 15 00 16 00 17 00 18 00 F7"),
			remote.make_midi("F0 00 01 61 02 0B 00 00 01 00 02 00 03 00 04 00 05 00 06 00 07 00 08 00 09 00 0A 00 0B 00 0C 00 0D 00 0E 00 0F 00 10 00 11 00 12 00 13 00 14 00 15 00 16 00 17 00 18 00 19 00 1A 00 1B 00 1C 00 1D 00 1E 00 1F 00 20 00 21 00 22 00 23 00 24 00 25 00 26 00 27 00 28 00 29 00 2A 00 2B 00 2C 00 2D 00 2E 00 2F 00 30 00 31 00 32 00 33 00 34 00 35 00 36 00 37 00 38 00 39 00 3A 00 3B 00 3C 00 3D 00 3E 00 3F 00 40 00 41 00 42 00 43 00 44 00 45 00 46 00 47 00 48 00 49 00 4A 00 4B 00 4C 00 4D 00 4E 00 4F 00 50 00 51 00 52 00 53 00 54 00 55 00 56 00 57 00 F7"),
			remote.make_midi("F0 00 01 61 02 0C 00 F7"),
			remote.make_midi("F0 00 01 61 02 0D 01 F7"),
			remote.make_midi("F0 00 01 61 02 0F 00 F7")
		}
	else
		return {
			--remote.make_midi("F0 00 01 61 03 06 F7")
			remote.make_midi("F0 00 01 61 03 04 00 00 00 00 00 00 00 00 00 00 F7"),
			remote.make_midi("F0 00 01 61 03 08 04 F7"),
			remote.make_midi("F0 00 01 61 03 09 77 01 7F F7"),
			remote.make_midi("F0 00 01 61 03 0A 00 00 01 00 02 00 03 00 04 00 05 00 06 00 07 00 08 00 09 00 F7"),
			remote.make_midi("F0 00 01 61 03 0B 00 00 01 00 02 00 03 00 04 00 05 00 06 00 07 00 08 00 09 00 0A 00 0B 00 0C 00 0D 00 0E 00 0F 00 10 00 11 00 12 00 13 00 14 00 15 00 16 00 17 00 18 00 19 00 1A 00 1B 00 1C 00 1D 00 1E 00 1F 00 20 00 21 00 22 00 23 00 24 00 25 00 26 00 27 00 28 00 29 00 2A 00 2B 00 2C 00 2D 00 2E 00 2F 00 30 00 31 00 32 00 33 00 34 00 35 00 36 00 37 00 38 00 39 00 3A 00 3B 00 3C 00 3D 00 3E 00 3F 00 40 00 41 00 42 00 43 00 44 00 45 00 46 00 47 00 F7"),
			remote.make_midi("F0 00 01 61 03 0C 00 F7"),
			remote.make_midi("F0 00 01 61 03 0D 01 F7")
		}
	end
end