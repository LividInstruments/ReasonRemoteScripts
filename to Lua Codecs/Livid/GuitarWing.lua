
pid = "0F" --0Fh = (15), product ID for GuitarWing
scales = {
	Chromatic = {0,1,2,3,4,5,6,7,8,9,10,11},
	DrumPad = {0,1,2,3, 16,17,18,19, 4,5,6,7, 20,21,22,23, 8,9,10,11, 24,25,26,27, 12,13,14,15, 28,29,30,31},
	Major = {0,2,4,5,7,9,11,12},
	Minor = {0,2,3,5,7,8,10,12},
	Dorian = {0,2,3,5,7,9,10,12},
	Mixolydian = {0,2,4,5,7,9,10,12},
	Lydian = {0,2,4,6,7,9,11,12},
	Phrygian = {0,1,3,5,7,8,10,12},
	Locrian = {0,1,3,4,7,8,10,12},
	Diminished = {0,1,3,4,6,7,9,10,12},
	Whole_half = {0,2,3,5,6,8,9,11,12},
	WholeTone = {0,2,4,6,8,10,12},
	MinorBlues = {0,3,5,6,7,10,12},
	MinorPentatonic = {0,3,5,7,10,12},
	MajorPentatonic = {0,2,4,7,9,12},
	HarmonicMinor = {0,2,3,5,7,8,11,12},
	MelodicMinor = {0,2,3,5,7,9,11,12},
	DominantSus = {0,2,5,7,9,10,12},
	SuperLocrian = {0,1,3,4,6,8,10,12},
	NeopolitanMinor = {0,1,3,5,7,8,11,12},
	NeopolitanMajor = {0,1,3,5,7,9,11,12},
	EnigmaticMinor = {0,1,3,6,7,10,11,12},
	Enigmatic = {0,1,4,6,8,10,11,12},
	Composite = {0,1,4,6,7,8,11,12},
	BebopLocrian = {0,2,3,5,6,8,10,11,12},
	BebopDominant = {0,2,4,5,7,9,10,11,12},
	BebopMajor = {0,2,4,5,7,8,9,11,12},
	Bhairav = {0,1,4,5,7,8,11,12},
	HungarianMinor = {0,2,3,6,7,8,11,12},
	MinorGypsy = {0,1,4,5,7,8,10,12},
	Persian = {0,1,4,5,6,8,11,12},
	Hirojoshi = {0,2,3,7,8,12},
	InSen = {0,1,5,7,10,12},
	Iwato = {0,1,5,6,10,12},
	Kumoi = {0,2,3,7,9,12},
	Pelog = {0,1,3,4,7,8,12},
	Spanish = {0,1,3,4,5,6,8,10,12}
}
scalenames = {
			'Major','Minor','Dorian','Mixolydian', 
			'Lydian','Phrygian','Chromatic','DrumPad', 
			'Locrian','Diminished','Whole_half','WholeTone','MinorBlues','MinorPentatonic','MajorPentatonic','HarmonicMinor','MelodicMinor','DominantSus','SuperLocrian','NeopolitanMinor','NeopolitanMajor','EnigmaticMinor','Enigmatic','Composite','BebopLocrian','BebopDominant','BebopMajor','Bhairav','HungarianMinor','MinorGypsy','Persian','Hirojoshi','InSen','Iwato','Kumoi','Pelog','Spanish'
			}
scaleabrvs = {
			Session='SS',Auto='AA',Chromatic='CH',DrumPad='DR',Major='MM',Minor='nn',Dorian='II',Mixolydian='V_',
			Lydian='IV',Phrygian='IH',Locrian='VH',Diminished='d-',Wholehalf='Wh',WholeTone='WT',MinorBlues='mB',
			MinorPentatonic='mP',MajorPentatonic='MP',HarmonicMinor='mH',MelodicMinor='mM',DominantSus='Ds',SuperLocrian='SL',
			NeopolitanMinor='mN',NeopolitanMajor='MN',EnigmaticMinor='mE',Enigmatic='ME',Composite='Cp',BebopLocrian='lB',
			BebopDominant='DB',BebopMajor='MB',Bhairav='Bv',HungarianMinor='mH',MinorGypsy='mG',Persian='Pr',
			Hirojoshi='Hr',InSen='IS',Iwato='Iw',Kumoi='Km',Pelog='Pg',Spanish='Sp'
			}

sli_start=4
sli_end=12
		
function remote_init(manufacturer, model)
	if model=="GuitarWing" then
		local items={
			{name="Keyboard",input="keyboard"},
			{name="_Scope", output="text"}, --device, e.g. "Thor"
			{name="_Var", output="text"}, --variation, e.g. "Volume" or "Filters"
			
			{name="SliderNote L1", input="value", min=0, max=127, output="value"},
			{name="SliderNote R2", input="value", min=0, max=127, output="value"},
			{name="SliderNote V3", input="value", min=0, max=127, output="value"},
			
			{name="ArrowUp", input="value", min=0, max=127, output="value"},
			{name="ArrowDn", input="value", min=0, max=127, output="value"},
						
			{name="Button 1", input="value", min=0, max=127, output="value"},
			{name="Button 2", input="value", min=0, max=127, output="value"},
			{name="Button 3", input="value", min=0, max=127, output="value"},
			{name="Button 4", input="value", min=0, max=127, output="value"},
			
			{name="SideButton 1", input="value", min=0, max=127, output="value"},
			{name="SideButton 2", input="value", min=0, max=127, output="value"},
			{name="SideButton 3", input="value", min=0, max=127, output="value"},
			{name="SideButton 4", input="value", min=0, max=127, output="value"},
			
			{name="PadNote 1", input="value", min=0, max=127, output="value"},
			{name="PadNote 2", input="value", min=0, max=127, output="value"},
			{name="PadNote 3", input="value", min=0, max=127, output="value"},
			{name="PadNote 4", input="value", min=0, max=127, output="value"},
			
			{name="MotionActive", input="value", min=0, max=127, output="value"},
			
 			{name="SliderCC L1", input="value", min=0, max=127, output="value"},
			{name="SliderCC R2", input="value", min=0, max=127, output="value"},
			{name="SliderCC V3", input="value", min=0, max=127, output="value"},
			{name="PadCC 1", input="value", min=0, max=127, output="value"},
			{name="PadCC 2", input="value", min=0, max=127, output="value"},
			{name="PadCC 3", input="value", min=0, max=127, output="value"},
			{name="PadCC 4", input="value", min=0, max=127, output="value"},
			{name="MotionX", input="value", min=0, max=127, output="value"},
			{name="MotionY", input="value", min=0, max=127, output="value"},
			{name="MotionZ", input="value", min=0, max=127, output="value"}			
			}
		remote.define_items(items)
	end
	if model=="GuitarWing" then
		local inputs={
			--{pattern="90 yy zz", name="Keyboard"},
			--top touch buttons
			{pattern="<100x>? 01 <z000>0", name="SliderNote L1"}, --1
			{pattern="<100x>? 02 <z000>0", name="SliderNote R2"}, --2
			{pattern="<100x>? 03 <z000>0", name="SliderNote V3"}, --3
			{pattern="<100x>? 04 <z000>0", name="MotionActive"}, --4
			{pattern="<100x>? 24 <z000>0", name="PadNote 1"}, --36
			{pattern="<100x>? 25 <z000>0", name="PadNote 2"}, --37
			{pattern="<100x>? 26 <z000>0", name="PadNote 3"}, --38
			{pattern="<100x>? 27 <z000>0", name="PadNote 4"}, --39
			{pattern="<100x>? 28 <z000>0", name="ArrowUp"}, --40
			{pattern="<100x>? 29 <z000>0", name="ArrowDn"}, --41
			{pattern="<100x>? 2A <z000>0", name="Button 1"}, --42
			{pattern="<100x>? 2B <z000>0", name="Button 2"}, --43
			{pattern="<100x>? 2C <z000>0", name="Button 3"}, --44
			{pattern="<100x>? 2D <z000>0", name="Button 4"}, --45
			{pattern="<100x>? 2E <z000>0", name="SideButton 1"}, --46
			{pattern="<100x>? 2F <z000>0", name="SideButton 2"}, --47
			{pattern="<100x>? 30 <z000>0", name="SideButton 3"}, --48
			{pattern="<100x>? 31 <z000>0", name="SideButton 4"}, --49
			
			{pattern="b0 01 <z000>0", name="SliderCC L1"},--1
			{pattern="b0 02 <z000>0", name="SliderCC R2"},--2
			{pattern="b0 03 <z000>0", name="SliderCC V3"},--3
			{pattern="b0 24 <z000>0", name="PadCC 1"},--36
			{pattern="b0 25 <z000>0", name="PadCC 2"},--37
			{pattern="b0 26 <z000>0", name="PadCC 3"},--38
			{pattern="b0 27 <z000>0", name="PadCC 4"},--39
			{pattern="b0 05 <z000>0", name="MotionX"},--5
			{pattern="b0 06 <z000>0", name="MotionY"},--6
			{pattern="b0 07 <z000>0", name="MotionZ"}--7
		}
		remote.define_auto_inputs(inputs)
	end
	if model=="GuitarWing" then
		local outputs={
			--pads
			{pattern="90 24 <00x0>0", name="PadNote 1"}, --blue
			{pattern="90 25 <00x0>0", name="PadNote 2"}, --blue
			{pattern="90 26 <00x0>0", name="PadNote 3"}, --blue
			{pattern="90 27 <00x0>0", name="PadNote 4"}, --blue
			
			{pattern="90 2A xx", name="Button 1", x="127*value"},--green
			{pattern="90 2B xx", name="Button 2", x="127*value"},--green
			{pattern="90 2C xx", name="Button 3", x="127*value"},--green
			{pattern="90 2D xx", name="Button 4", x="127*value"},--green
			
			{pattern="90 28 <000x>0", name="ArrowUp"}, --red
			{pattern="90 29 <000x>0", name="ArrowDn"}, --red
			
			{pattern="90 29 <0x00>0", name="MotionActive"}, --yel
			
			--touch sliders
			{pattern="b0 01 xx", name="SliderCC L1"},
			{pattern="b0 02 xx", name="SliderCC R2"},
			{pattern="b0 03 xx", name="SliderCC V3"}
		}
		remote.define_auto_outputs(outputs)
	end
end

g_last_input_time=0
g_last_input_item = nil
g_delivered_transpose=0 --for change filter
transpose = 0
shift = 0
root = 36
scalename = 'Major'
scale = scales[scalename]
scale_int = 0;
g_delivered_scale=0 --for change filter
drum_mode = 0;
g_delivered_shift=0 --for change filter
tranup_btn = 0 --transpose up button state up or down
trandn_btn = 0 --transpose down button state up or down
transpose_changed = false
init=1
global_scale = 0
global_transp = 0
scale_from_parse = false

g_is_lcd_enabled = false
--g_lcd_state = string.format("%-16.16s","L C D")
g_lcd_state = "LCD"
--g_delivered_lcd_state = string.format("%-16.16s","#")
g_delivered_lcd_state = "#"
g_delivered_note = 0
g_scope_item_index = 2 -- "_Scope" is item 2 in the table
g_var_item_index = 3 -- "_Var" is item 3 in the table

function remote_process_midi(event)
	ret = remote.match_midi("<100x>? yy zz",event) --find a note on or off
	if(ret~=nil) then
				--could do transpose for pads----------
		--tran_up = remote.match_midi("9? 17 40",event) --find F6
		--tran_dn = remote.match_midi("9? 18 40",event) --find F7
		local shiftbtn = remote.match_midi("<100x>? 7F zz",event) --note 127 - basically comments it out without ditching the variable declare
		--drum_tog = remote.match_midi("9? 13 40",event) --find F2
		--tran_rst = remote.match_midi("9? 14 xx",event) --find F3
		if (shiftbtn) then
			if shiftbtn.z>0 then
				shift = 1 --momentary like a computer's shift key
			else
				shift = 0
			end
		end
		if(tran_up) then
			transpose = transpose+(1-shift)+(shift*12)
			global_transp = transpose
			transpose_changed = true
		end
		if(tran_dn) then
			transpose = transpose-(1-shift)-(shift*12)
			global_transp = transpose
			transpose_changed = true
		end
		if(drum_tog) then
			drum_mode = 1-drum_mode
		end
		--if(tran_rst) then
		--	transpose=0
		--end
		--now handle the pads
		if ret.y>35 and ret.y<68 then
			---if the pads have transposed, then we need to turn off the last note----------------------
			if(transpose_changed == true) then
				local prev_off={ time_stamp = event.time_stamp, item=1, value = ret.x, note = g_delivered_note,velocity = 0 }
				remote.handle_input(prev_off)
				transpose_changed = false
			end
			local padid = ret.y-36
			local scale_len = table.getn(scale)
			local ind = 1+modulo(padid,scale_len)  --modulo using the operator % gave me trouble in reason, so I wrote a custom fcn
			local oct = math.floor(padid/scale_len)
			local addnote = scale[ind]
			local noteout = root+transpose+(12*oct)+addnote
			if (noteout<127 or noteout>0) then
				local msg={ time_stamp = event.time_stamp, item=1, value = ret.x, note = noteout,velocity = ret.z }
				remote.handle_input(msg)
				g_delivered_note = noteout
				return true
				end
			else
			return false
		end
	end
	return false
end

colors = {"02","04","08","10","20","40","7F"}

lcd_events={}
function remote_deliver_midi(maxbytes,port)
	if(port==1) then
		local gw_events={}
		--initialize colors:
		if init==1 then
			local firstcolors={
				--pads blue
				remote.make_midi("90 24 30"),
				remote.make_midi("90 25 30"),
				remote.make_midi("90 26 30"),
				remote.make_midi("90 27 30"),
				--buttons green
				remote.make_midi("90 2A 7F"),
				remote.make_midi("90 2B 7F"),
				remote.make_midi("90 2C 7F"),
				remote.make_midi("90 2D 7F"),
				--arrows red
				remote.make_midi("90 28 10"),
				remote.make_midi("90 29 10"),
				--motion active cyan
				remote.make_midi("90 04 04"),
			}
			local first_len = table.getn(firstcolors)
			for i=1,first_len,1 do
				table.insert(gw_events,firstcolors[i])
			end	
			init=0
		end
	
		return gw_events --send out a bunch of MIDI to the GW
	end --end port==1
	if(port==2) then
		local le = lcd_events
		lcd_events = {}
		return le
	end
end

function remote_on_auto_input(item_index)
	g_last_input_time = remote.get_time_ms()
	g_last_input_item = item_index
end

--we'll fetch the items that have changed in Remote----------------------------------------
g_scopetext = "none"
g_scopetext_prev = "none"
g_vartext = "none"
g_vartext_prev = "none"
g_lcd_index = -1

function remote_set_state(changed_items)
	--look for the _Scope constant. Kong reports "KONG". Could use for a variety of things
	if remote.is_item_enabled(g_scope_item_index) then
		local scope_text = remote.get_item_text_value(g_scope_item_index)
		g_scopetext = scope_text
	else
		g_scopetext = ""
	end
	
	if remote.is_item_enabled(g_var_item_index) then
		local var_text = remote.get_item_text_value(g_var_item_index)
		g_vartext = var_text
	else
		g_vartext = ""
	end
	
	if(g_last_input_item~=nil) then
		if remote.is_item_enabled(g_last_input_item) then
			local feedback_text = remote.get_item_name_and_value(g_last_input_item)
			if string.len(feedback_text)>0 then
				g_feedback_enabled = true
				--g_lcd_state = string.format("%-16.16s",feedback_text)
				g_lcd_state = feedback_text
				g_lcd_index = g_last_input_item
			end
		end
	end
end

--make a message to send to livid LCD----------------------------------------
function make_lcd_midi_message(text)
	local event = remote.make_midi("f0 00 01 61 00") --header for Livid LCD, product ID 0
	start=6
	stop=6+string.len(text)-1
	for i = start,stop do
		sourcePos = i-start+1
		event[i] = string.byte(text,sourcePos)
	end
	event[stop+1] = 247         -- hex f7
	return event
end

function set_scale(index)	
	scale_int = index
	scalename = scalenames[1+scale_int]
	scale = scales[scalename]
end

function exists(f, l) -- find element v of l satisfying f(v)
  for _, v in ipairs(l) do
    if v==f then
      return true
    end
  end
  return nil
end

--for some Reason (pun intended) I need to define a modulo function. just using the % operator was throwing errors :(
function modulo(a,b)
	local mo = a-math.floor(a/b)*b
	return mo
end

function remote_probe(manufacturer,model)
	if model=="GuitarWing" then
		return {
			request="f0 7e 7f 06 01 f7",
			response="f0 7e 00 06 02 00 01 61 01 00 "..pid.." ?? ?? ?? ?? ?? f7"
		}
	end
end

--UTILITY: make a subtable of a table:
function table_slice (values,i1,i2)
	local res = {}
	local n = table.getn(values) --#values returns length of list
	-- default values for range
	i1 = i1 or 1
	i2 = i2 or n
	if i2 < 0 then
		i2 = n + i2 + 1
	elseif i2 > n then
		i2 = n
	end
	if i1 < 1 then
		i1 = n + i1 + 1
		i2 = n
	end
	if i1 > n then
		return {}
	end
	local k = 1
	for i = i1,i2 do
		res[k] = values[i]
		k = k + 1
	end
	return res
end

function remote_prepare_for_use()
	g_delivered_lcd_state = string.format("%-16.16s","Livid Guitar Wing")
	local retEvents={
		remote.make_midi("F0 00 01 61 "..pid.." 06 F7"), 
		--default settings for GuitarWing
		--remote.make_midi("F0 00 01 61 0C 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 F7"),
		--send all local off on settings ch 16  191,122,64 
		--remote.make_midi("bF 7A 40")
	}
	init=1
	return retEvents
end

--UTILITY: this function is called when we need to update a slider LCD
function update_slider(item)
	local thetext = remote.get_item_name_and_value(item)
	local textarray = {}
	local p_path = ""
	local v_path = ""
	local p_text = ""
	local v_text = ""
	--local tlcd_event = make_lcd_midi_message("item "..item.." text "..thetext.." len "..#thetext )
	--table.insert(lcd_events,tlcd_event)
	if(thetext>0) then
		--strip any percent symbols
		local pctsearch = string.find(thetext, '%%')
		if(pctsearch~=nil) then
			thetext = string.sub(thetext,1,pctsearch-1).." pct"
		end
		local wordcount = 1
		--make a table of words so we can break the track name_and_value into "name" and "value"
		for j in string.gmatch(thetext, "%S+") do
			textarray[wordcount] = j
			wordcount = wordcount+1
		end
		wordcount = wordcount-1 --because wordcount is really an index starting at 1, to get the true count, we subtract 1
		p_path = "/Reason/GWing/0/Fader_"..(item-sli_start).."/lcd_name " -- "sli_start" (-4) because the sliders start at index 3 in table items, but we start our OSC Slider names at 0.
		v_path = "/Reason/GWing/0/Fader_"..(item-sli_start).."/lcd_value "
		if(wordcount>2) then
			p_text = string.format( table.concat( table_slice(textarray,1,-3)," " ) ) --from first element to 3rd to last element (everything but last 2 elements)
			v_text = string.format( table.concat( table_slice(textarray,-2)," " ) ) --last 2 elements
		else
			p_text = string.format(textarray[1]) --1st element, like "Mode"
			v_text = string.format(textarray[2]) --2nd elemnt, like "10%" (with % stripped out)
		end
		local p_lcd_event = make_lcd_midi_message(p_path..p_text)
		local v_lcd_event = make_lcd_midi_message(v_path..v_text)
		table.insert(lcd_events,p_lcd_event) --put the lcd_text (e.g. "Drum 1" or "Filter Freq" into the table of midi events 
		table.insert(lcd_events,v_lcd_event) --put the lcd_text (e.g. "Tone 16" or "220 hz" into the table of midi events 	
	end
end