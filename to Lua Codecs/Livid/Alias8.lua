tablecount = 0
dial_start = 5
dial_end = 260
btn_start = 261
btn_end = 516
fader_start = 517
fader_end = 661
mom_start = 662
mom_end = 789

function remote_init(manufacturer, model)
	if model=="Alias8" then
		local items={
			{name="Keyboard",input="keyboard"},
			{name="_Scope", output="text"}, --device, e.g. "Thor"
			{name="_Var", output="text"}, --variation, e.g. "Volume" or "Filters"
			{name="Encoder", input="delta"},
		}
		--make items for each element for each channel. I do this is sep. ch. loops to make it easier to keep track of index, i.e., dials are >=5 and <=260
		tablecount = 0
		dial_start = 5
		for ch=1,16 do --items 5 to 260 
			for i=1,16 do 
				local newdial = {name="Dial "..i.."_"..ch, input="value", min=0,max=127,output="value"}
				table.insert(items,newdial)
				tablecount = tablecount+1
			end
		end
		dial_end = dial_start+(tablecount-1)
		btn_start = dial_end+1
		tablecount = 0
		for ch=1,16 do --items 261 to 516
			for i=1,16 do 
				local newbtn = {name="Button "..i.."_"..ch, input="button", min=0, max=127, output="value"}
				table.insert(items,newbtn)
				tablecount = tablecount+1
			end
		end
		btn_end = btn_start+(tablecount-1)
		fader_start = btn_end+1
		tablecount=0
		for ch=1,16 do --items 517 to 661
			for i=1,9 do 
				local newfader = {name="Fader "..i.."_"..ch, input="value", min=0,max=127,output="value"}
				table.insert(items,newfader)
				tablecount = tablecount+1
			end
		end
		fader_end = fader_start+(tablecount-1)
		mom_start = fader_end+1
		tablecount=0
		for ch=1,16 do  --itmes 662 to 789
			for i=1,8 do 
				local newmom = {name="Momentary "..i.."_"..ch, input="button", min=0, max=127, output="value"}
				table.insert(items,newmom)
				tablecount = tablecount+1
			end
		end
		mom_end = mom_start+(tablecount-1)
		remote.define_items(items)
	end
	if model=="Alias8" then
		local inputs={
			{pattern="b? 2A <???y>?", name="Encoder", value="(1-2*y)"},
		}
		for ch=1,16 do
			local cc_hex = string.format("%x",175+ch) --b0 to bf
			local chhex = string.format("%x",ch-1) --0 to f
			for i=1,16 do
				local hex = string.format("%x",i)
				if string.len(hex)==1 then --make sure there is a leading 0 for the hex string
					hex = "0"..hex
				end
				local newdial = {pattern=cc_hex.." "..hex.." xx", name="Dial "..i.."_"..ch}
				table.insert(inputs,newdial)
			end
			for i=1,9 do
				local ccnum = i+16 --midi for faders starts at cc# 17
				local hex = string.format("%x",ccnum)
				if string.len(hex)==1 then
					hex = "0"..hex
				end
				local newfader = {pattern=cc_hex.." "..hex.." xx", name="Fader "..i.."_"..ch}
				table.insert(inputs,newfader)
			end
			for i=1,16 do
				local ntnum = i-1
				local hex = string.format("%x",ntnum)
				if string.len(hex)==1 then
					hex = "0"..hex
				end
				local newbtn = {pattern="<100x>"..chhex.." "..hex.." <z000>0", name="Button "..i.."_"..ch}
				table.insert(inputs,newbtn)
			end
			for i=1,8 do
				local ccnum = i+80 --momentary buttons start at cc 81, a fairly arbitrary choice.
				local hex = string.format("%x",ccnum)
				if string.len(hex)==1 then
					hex = "0"..hex
				end
				local bindex = i+8
				local newmom = {pattern=cc_hex.." "..hex.." <???y>?", name="Momentary "..i.."_"..ch, value="1"}
				table.insert(inputs,newmom)
			end
		end
		--[[]]--
		remote.define_auto_inputs(inputs)
	end
	if model=="Alias8" then
		local outputs={}
		for ch=1,16 do
			local cc_hex = string.format("%x",175+ch) --b0 to bf
			local chhex = string.format("%x",ch-1) --0 to f
			--the 16 dials
			for i=1,16 do
				local hex = string.format("%x",i)
				if string.len(hex)==1 then --make sure there is a leading 0 for the hex string
					hex = "0"..hex
				end
				local newdial = {pattern=cc_hex.." "..hex.." xx", name="Dial "..i.."_"..ch}
				table.insert(outputs,newdial)
			end
			--the 9 faders
			for i=1,9 do
				local ccnum = i+16
				local hex = string.format("%x",ccnum)
				if string.len(hex)==1 then --make sure there is a leading 0 for the hex string
					hex = "0"..hex
				end
				local newfader = {pattern=cc_hex.." "..hex.." xx", name="Fader "..i.."_"..ch}
				table.insert(outputs,newfader)
			end
			--Top row of green Button buttons
			for i=1,8 do
				ntnum = i-1
				local hex = string.format("%x",ntnum) --minus 1 since button notes start at 0
				if string.len(hex)==1 then --make sure there is a leading 0 for the hex string
					hex = "0"..hex
				end
				local newbtn = {pattern="9"..chhex.." "..hex.." xx", name="Button "..i.."_"..ch, x="127*value"} --green
				table.insert(outputs,newbtn)
			end
			--Bottom row of Yellow Button buttons
			for i=9,16 do
				ntnum = i-1
				local hex = string.format("%x",ntnum)
				if string.len(hex)==1 then --make sure there is a leading 0 for the hex string
					hex = "0"..hex
				end
				local newbtn = {pattern="9"..chhex.." "..hex.." <0x00>0", name="Button "..i.."_"..ch} --yellow
				table.insert(outputs,newbtn)
			end
			--Momentary buttons as cc's for Alias8cv Rack Extension
			for i=1,8 do
				local ccnum = i+80
				local hex = string.format("%x",ccnum)
				if string.len(hex)==1 then --make sure there is a leading 0 for the hex string
					hex = "0"..hex
				end
				local bindex = i+8
				local newmom = {pattern=cc_hex.." "..hex.." <0x00>0", name="Momentary "..i.."_"..ch} --yellow
				table.insert(outputs,newmom)
			end
		end
		remote.define_auto_outputs(outputs)
	end
end

function remote_probe(manufacturer,model)
	if model=="Alias8" then
		return {
			request="f0 7e 7f 06 00 f7",
			response="f0 7e 00 06 02 00 00 61 00 00 0b ?? ?? ?? ?? ?? f7"
		}
	end
end

function remote_prepare_for_use() 
	return {
			remote.make_midi("F0 00 00 61 0b 06 F7"), --factory reset sysex
			remote.make_midi("f0 00 01 61 0b 11 02 00 f7"), --set encoder to relative
			--remote.make_midi("F0 00 00 61 0B 0B 00 00 00 00 02 00 03 00 04 00 05 00 06 00 07 00 51 00 52 00 53 00 54 00 55 00 56 00 57 00 58 00 F7") --set bottom buttons to ccs
		}
end

--we'll fetch the items for lcd and scope parsing

g_last_input_time= 0
g_last_input_item = nil
g_scopetext = "none"
g_scopetext_prev = "none"
g_scope_item_index = 2 -- "_Scope" is the second item in the remote.define(items)
g_var_item_index = 3 -- "_Var" is item 3 in the table
g_vartext = "none" --variation name
g_vartext_prev = "none"
g_lcd_index = -1
g_lcd_state = "LCD"
g_delivered_lcd_state = "#"

function remote_on_auto_input(item_index)
	g_last_input_time = remote.get_time_ms()
	g_last_input_item = item_index
end

function remote_set_state(changed_items)
	--look for the _Scope constant. Alias8cv reports "Alias8".
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
			local feedback_text=remote.get_item_name_and_value(g_last_input_item)
			if string.len(feedback_text)>0 then
				g_feedback_enabled = true
				--g_lcd_state=string.format("%-16.16s",feedback_text)
				g_lcd_state = feedback_text
				g_lcd_index = g_last_input_item
			end
		end
	end
end

--sysex used to reprogram the Alias8 when the Alias8cv Rack Extension is selected, then back again if not A8cv: we need to make some buttons send cc instead of notes for momentary action.
sysex_aliascv_btns = "F0 00 01 61 0B 0B 00 00 01 00 02 00 03 00 04 00 05 00 06 00 07 00 51 01 52 01 53 01 54 01 55 01 56 01 57 01 58 01 F7"
sysex_def_btns =     "F0 00 01 61 0B 0B 00 00 01 00 02 00 03 00 04 00 05 00 06 00 07 00 08 00 09 00 0a 00 0b 00 0c 00 0d 00 0e 00 0f 00 F7"
sysex_aliascv_ccleds = "f0 00 01 61 0b 24 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 08 0c 09 0d 0a 0e 0b 0f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f f7"
sysex_def_ccleds =     "f0 00 01 61 0b 24 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f f7"
sysex_aliascv_ntleds = "f0 00 01 61 0b 23 00 04 01 05 02 06 03 07 7f 7f 7f 7f 7f 7f 7f 7f 10 11 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f f7"
sysex_def_ntleds =     "f0 00 01 61 0b 23 00 04 01 05 02 06 03 07 08 0c 09 0d 0a 0e 0b 0f 10 11 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f f7"
reprog = false
ctltype = ""
offset = 0 --index offset used to find out if it's Knob_1 or Knob_2
varch = 0 --variation# i.e. channel
varch_prev = -1 --for change filter
lcd_events={}
ctlcount = 0

function remote_deliver_midi(maxbytes,port)
	local ret_events={}
	if(port==1) then
		--if vartext from _Var item in remotemap has changed	-----------------
		if g_vartext_prev~=g_vartext then
			--Let the LCD know what the variation is
			local vartext = remote.get_item_text_value(g_var_item_index)
			local var_event = make_lcd_midi_message("/Reason/Alias8/0/glob/Var/lcd_name "..vartext)
			table.insert(ret_events,var_event)
			g_vartext_prev = g_vartext
			isvarchange = true
		end
		if g_scopetext_prev~=g_scopetext then
			--Let the LCD know what the device is
			local const_event = make_lcd_midi_message("/Reason/Alias8/0/info/Device/lcd_name "..g_scopetext)
			table.insert(lcd_events,const_event)
			--report SCOPE over sysex, mostly for testing
			--local const_event=make_lcd_midi_message("SCOPE "..g_scopetext)
			table.insert(lcd_events,const_event)
			table.insert(ret_events,const_event)
			--if we've landed on Alias8cv RackExtension _Scope reports "Alias8cv" and we reprogram the bottom row of buttons
			if(g_scopetext=="Alias8cv") then
				local makebtns = remote.make_midi(sysex_aliascv_btns)
				table.insert(ret_events,makebtns)
				local makeccled = remote.make_midi(sysex_aliascv_ccleds)
				table.insert(ret_events,makeccled)
				local makentled = remote.make_midi(sysex_aliascv_ntleds)
				table.insert(ret_events,makentled)
				reprog = true
			elseif(reprog == true) then
				local makebtns = remote.make_midi(sysex_def_btns)
				table.insert(ret_events,makebtns)
				local makeccled = remote.make_midi(sysex_def_ccleds)
				table.insert(ret_events,makeccled)
				local makentled = remote.make_midi(sysex_def_ntleds)
				table.insert(ret_events,makentled)
				doreprog=false
			end
			g_scopetext_prev = g_scopetext
		end

		--make some abbreviations here:
		i=g_lcd_index
		isdial=i>=dial_start and i<=dial_end
		isbtn=i>=btn_start and i<=btn_end
		isfader=i>=fader_start and i<=fader_end
		ismom=i>=mom_start and i<=mom_end
		ctltype = "none"
		if(isdial) then 
			ctltype = "Dial"
			offset = dial_start
			ctlcount = 16
			varch = math.floor((i-dial_start)/ctlcount)
		elseif(isbtn) then 
			ctltype = "Button"
			offset = btn_start
			ctlcount = 16
			varch = math.floor((i-btn_start)/ctlcount)
		elseif(isfader) then 
			ctltype = "Fader"
			offset = fader_start
			ctlcount = 9
			varch = math.floor((i-fader_start)/ctlcount)
		elseif(ismom) then 
			ctltype = "Momentary"
			offset = mom_start
			ctlcount = 8
			varch = math.floor((i-mom_start)/ctlcount)
		end
		if(ctltype~="none") then
			--we'll make the parameter/value/unit list into two arrays for our LCD, then send a long string to LCD
			update_ctl(g_lcd_index,ctltype)	
		end
		if(cur_channel_prev~=cur_channel) then
			local vartext = "Variation "..cur_channel
			local var_event = make_lcd_midi_message("/Reason/Alias8/0/glob/Var/lcd_name "..vartext)
			table.insert(lcd_events,var_event)
			cur_channel_prev = cur_channel
		end
		
		local new_text = g_lcd_state
		if g_delivered_lcd_state~=new_text then
			g_delivered_lcd_state = new_text
			istracktext = string.find(new_text,"Track") == 1 --The word "track" is the first word
			if istracktext==true then
				local track_event = make_lcd_midi_message("/Reason/Alias8/0/glob/Track/lcd_name "..new_text)
				table.insert(lcd_events,track_event)
			end
		end
		return ret_events
	end --end port==1
	
	if(port==2) then
		local le = lcd_events
		lcd_events = {}
		return le
	end
end

cur_channel = 1
cur_channel_prev = 0
function remote_process_midi(event)
	--Alias8 notifys us
	ch_notify = remote.match_midi("F0 00 01 61 0B 71 xx F7",event)
	if(ch_notify~=nil) then
		cur_channel = 1+ch_notify.x
	end
	
end

function make_lcd_midi_message(text)
	local event=remote.make_midi("f0 00 00 61 00") --header for Livid LCD, product ID 0
	start=6
	stop=6+string.len(text)-1
	for i=start,stop do
		sourcePos=i-start+1
		event[i] = string.byte(text,sourcePos)
	end
	event[stop+1] = 247  -- hex f7
	return event
end

--UTILITY: this function is called when we need to update a fader LCD
--ctltype should be symbols such as 'Fader', 'Button', 'Dial', etc. 
v_text_prev = "none"
function update_ctl(item,ctltype)
	local thetext = remote.get_item_name_and_value(item)
	local textarray = {}
	local p_path = ""
	local v_path = ""
	local p_text = ""
	local v_text = ""
	--local tlcd_event = make_lcd_midi_message("item "..item.." text "..thetext.." len "..#thetext )
	--table.insert(lcd_events,tlcd_event)
	if(#thetext>0) then
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
		ctlindex = modulo( (item-offset),ctlcount)
		p_path = "/Reason/Alias8/0/"..ctltype.."_"..(ctlindex).."/lcd_name " -- "offset" (-5, for example) because the faders start at index 5 in table items, but we start our OSC Fader names at 0.
		v_path = "/Reason/Alias8/0/"..ctltype.."_"..(ctlindex).."/lcd_value "
		if(wordcount>2) then
			p_text = string.format( table.concat( table_slice(textarray,1,-3)," " ) ) --from first element to 3rd to last element (everything but last 2 elements)
			v_text = string.format( table.concat( table_slice(textarray,-2)," " ) ) --last 2 elements
		else
			p_text = string.format(textarray[1]) --1st element, like "Mode"
			v_text = string.format(textarray[2]) --2nd elemnt, like "10%" (with % stripped out)
		end
		if(v_text~=v_text_prev) then
			local p_lcd_event = make_lcd_midi_message(p_path..p_text)
			local v_lcd_event = make_lcd_midi_message(v_path..v_text)
			table.insert(lcd_events,p_lcd_event) --put the lcd_text (e.g. "Drum 1" or "Filter Freq" into the table of midi events 
			table.insert(lcd_events,v_lcd_event) --put the lcd_text (e.g. "Tone 16" or "220 hz" into the table of midi events 
			v_text_prev = v_text
		end
	end
end

--UTILITY: make a subtable of a table:
function table_slice (values,i1,i2)
	local res = {}
	local n = #values
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

function modulo(a,b)
	local mo = a-math.floor(a/b)*b
	return mo
end

