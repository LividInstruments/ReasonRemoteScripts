function remote_init(manufacturer, model)
	if model=="Alias8" then
		local items={
			{name="Keyboard",input="keyboard"},
			{name="_Scope", output="text"},
			{name="Encoder", input="delta"},
		}
		
		for i=1,16 do
			local newknob = {name="Knob "..i, input="value", min=0,max=127,output="value"}
			table.insert(items,newknob)
		end
		for i=1,16 do
			local newgrid = {name="Grid "..i, input="button", min=0, max=127, output="value"}
			table.insert(items,newgrid)
		end
		for i=1,9 do
			local newslider = {name="Slider "..i, input="value", min=0,max=127,output="value"}
			table.insert(items,newslider)
		end
		for i=9,16 do
			local newmom = {name="Momentary "..i, input="button", min=0, max=127, output="value"}
			table.insert(items,newmom)
		end
		
		remote.define_items(items)
	end
	if model=="Alias8" then
		local inputs={
			{pattern="b? 2A <???y>?", name="Encoder", value="(1-2*y)"},
			--[[{pattern="b0 01 xx", name="Knob 1"},
			{pattern="b0 02 xx", name="Knob 2"},
			{pattern="b0 03 xx", name="Knob 3"},
			{pattern="b0 04 xx", name="Knob 4"},
			{pattern="b0 05 xx", name="Knob 5"},
			{pattern="b0 06 xx", name="Knob 6"},
			{pattern="b0 07 xx", name="Knob 7"},
			{pattern="b0 08 xx", name="Knob 8"},		
			{pattern="b0 09 xx", name="Knob 9"},
			{pattern="b0 0a xx", name="Knob 10"},
			{pattern="b0 0b xx", name="Knob 11"},			
			{pattern="b0 0c xx", name="Knob 12"},
			{pattern="b0 0d xx", name="Knob 13"},
			{pattern="b0 0e xx", name="Knob 14"},
			{pattern="b0 0f xx", name="Knob 15"},
			{pattern="b0 10 xx", name="Knob 16"},
			{pattern="b0 11 xx", name="Slider 1"},
			{pattern="b0 12 xx", name="Slider 2"},
			{pattern="b0 13 xx", name="Slider 3"},
			{pattern="b0 14 xx", name="Slider 4"},
			{pattern="b0 15 xx", name="Slider 5"},
			{pattern="b0 16 xx", name="Slider 6"},
			{pattern="b0 17 xx", name="Slider 7"},
			{pattern="b0 18 xx", name="Slider 8"},
			{pattern="b0 19 xx", name="Slider 9"},
			{pattern="<100x>? 00 <z000>0", name="Grid 1"},
			{pattern="<100x>? 00 <z000>0", name="Grid 2"},
			{pattern="<100x>? 02 <z000>0", name="Grid 3"},
			{pattern="<100x>? 03 <z000>0", name="Grid 4"},
			{pattern="<100x>? 04 <z000>0", name="Grid 5"},
			{pattern="<100x>? 05 <z000>0", name="Grid 6"},
			{pattern="<100x>? 06 <z000>0", name="Grid 7"},
			{pattern="<100x>? 07 <z000>0", name="Grid 8"},
			{pattern="<100x>? 08 <z000>0", name="Grid 9"},
			{pattern="<100x>? 09 <z000>0", name="Grid 10"},
			{pattern="<100x>? 0a <z000>0", name="Grid 11"},
			{pattern="<100x>? 0b <z000>0", name="Grid 12"},
			{pattern="<100x>? 0c <z000>0", name="Grid 13"}, 
			{pattern="<100x>? 0d <z000>0", name="Grid 14"},
			{pattern="<100x>? 0e <z000>0", name="Grid 15"},
			{pattern="<100x>? 0f <z000>0", name="Grid 16"},
			{pattern="b0 51 <???y>?", name="Momentary 9", value="1"},
			{pattern="b0 52 <???y>?", name="Momentary 10", value="1"},
			{pattern="b0 53 <???y>?", name="Momentary 11", value="1"},
			{pattern="b0 54 <???y>?", name="Momentary 12", value="1"},
			{pattern="b0 55 <???y>?", name="Momentary 13", value="1"}, 
			{pattern="b0 56 <???y>?", name="Momentary 14", value="1"},
			{pattern="b0 57 <???y>?", name="Momentary 15", value="1"},
			{pattern="b0 58 <???y>?", name="Momentary 16", value="1"}]]--
		}
		for i=1,16 do
			local hex = string.format("%x",i)
			if string.len(hex)==1 then --make sure there is a leading 0 for the hex string
				hex = "0"..hex
			end
			local newknob = {pattern="b0 "..hex.." xx", name="Knob "..i}
			table.insert(inputs,newknob)
		end
		for i=1,9 do
			local ccnum = i+16 --midi for sliders starts at cc# 17
			local hex = string.format("%x",ccnum)
			if string.len(hex)==1 then
				hex = "0"..hex
			end
			local newslider = {pattern="b0 "..hex.." xx", name="Slider "..i}
			table.insert(inputs,newslider)
		end
		for i=1,16 do
			local ntnum = i-1
			local hex = string.format("%x",ntnum)
			if string.len(hex)==1 then
				hex = "0"..hex
			end
			local newbtn = {pattern="<100x>? "..hex.." <z000>0", name="Grid "..i}
			table.insert(inputs,newbtn)
		end
		for i=1,8 do
			local ccnum = i+80 --momentary buttons start at cc 81, a fairly arbitrary choice.
			local hex = string.format("%x",ccnum)
			if string.len(hex)==1 then
				hex = "0"..hex
			end
			local bindex = i+8
			local newmom = {pattern="b0 "..hex.." <???y>?", name="Momentary "..bindex, value="1"}
			table.insert(inputs,newmom)
		end
		
		--[[]]--
		remote.define_auto_inputs(inputs)
	end
	if model=="Alias8" then
		local outputs={
			--[[{pattern="b0 00 xx", name="Knob 1"},
			{pattern="b0 02 xx", name="Knob 2"},
			{pattern="b0 03 xx", name="Knob 3"},
			{pattern="b0 04 xx", name="Knob 4"},
			{pattern="b0 05 xx", name="Knob 5"},
			{pattern="b0 06 xx", name="Knob 6"},
			{pattern="b0 07 xx", name="Knob 7"},
			{pattern="b0 08 xx", name="Knob 8"},
			{pattern="b0 09 xx", name="Knob 9"},
			{pattern="b0 0a xx", name="Knob 10"},
			{pattern="b0 0b xx", name="Knob 11"},
			{pattern="b0 0c xx", name="Knob 12"},
			{pattern="b0 0d xx", name="Knob 13"},
			{pattern="b0 0e xx", name="Knob 14"},
			{pattern="b0 0f xx", name="Knob 15"},
			{pattern="b0 10 xx", name="Knob 16"},
			
			{pattern="b0 11 xx", name="Slider 1"},
			{pattern="b0 12 xx", name="Slider 2"},
			{pattern="b0 13 xx", name="Slider 3"},
			{pattern="b0 14 xx", name="Slider 4"},
			{pattern="b0 15 xx", name="Slider 5"},
			{pattern="b0 16 xx", name="Slider 6"},
			{pattern="b0 17 xx", name="Slider 7"},
			{pattern="b0 18 xx", name="Slider 8"},
			{pattern="b0 19 xx", name="Slider 9"},
			
			{pattern="90 00 xx", name="Grid 1", x="127*value"},--green
			{pattern="90 00 xx", name="Grid 2", x="127*value"},--green
			{pattern="90 02 xx", name="Grid 3", x="127*value"},--green
			{pattern="90 03 xx", name="Grid 4", x="127*value"},--green
			{pattern="90 04 xx", name="Grid 5", x="127*value"},--green
			{pattern="90 05 xx", name="Grid 6", x="127*value"},--green
			{pattern="90 06 xx", name="Grid 7", x="127*value"},--green
			{pattern="90 07 xx", name="Grid 8", x="127*value"},--green
			{pattern="90 08 <0x00>0", name="Grid 9"}, --yellow
			{pattern="90 09 <0x00>0", name="Grid 10"}, --yellow
			{pattern="90 0a <0x00>0", name="Grid 11"}, --yellow
			{pattern="90 0b <0x00>0", name="Grid 12"}, --yellow
			{pattern="90 0c <0x00>0", name="Grid 13"}, --yellow
			{pattern="90 0d <0x00>0", name="Grid 14"}, --yellow
			{pattern="90 0e <0x00>0", name="Grid 15"}, --yellow
			{pattern="90 0f <0x00>0", name="Grid 16"}, --yellow
			{pattern="b0 51 <0x00>0", name="Momentary 9"}, --yellow
			{pattern="b0 52 <0x00>0", name="Momentary 10"}, --yellow
			{pattern="b0 53 <0x00>0", name="Momentary 11"}, --yellow
			{pattern="b0 54 <0x00>0", name="Momentary 12"}, --yellow
			{pattern="b0 55 <0x00>0", name="Momentary 13"}, --yellow
			{pattern="b0 56 <0x00>0", name="Momentary 14"}, --yellow
			{pattern="b0 57 <0x00>0", name="Momentary 15"}, --yellow
			{pattern="b0 58 <0x00>0", name="Momentary 16"} --yellow]]--
		}
		--the 16 knobs
		for i=1,16 do
			local hex = string.format("%x",i)
			if string.len(hex)==1 then --make sure there is a leading 0 for the hex string
				hex = "0"..hex
			end
			local newknob = {pattern="b0 "..hex.." xx", name="Knob "..i}
			table.insert(outputs,newknob)
		end
		--the 9 sliders
		for i=1,9 do
			local ccnum = i+16
			local hex = string.format("%x",ccnum)
			if string.len(hex)==1 then --make sure there is a leading 0 for the hex string
				hex = "0"..hex
			end
			local newslider = {pattern="b0 "..hex.." xx", name="Slider "..i}
			table.insert(outputs,newslider)
		end
		--Top row of green Grid buttons
		for i=1,8 do
			ntnum = i-1
			local hex = string.format("%x",ntnum) --minus 1 since button notes start at 0
			if string.len(hex)==1 then --make sure there is a leading 0 for the hex string
				hex = "0"..hex
			end
			local newbtn = {pattern="90 "..hex.." xx", name="Grid "..i, x="127*value"} --green
			table.insert(outputs,newbtn)
		end
		--Bottom row of Yellow Grid buttons
		for i=9,16 do
			ntnum = i-1
			local hex = string.format("%x",ntnum)
			if string.len(hex)==1 then --make sure there is a leading 0 for the hex string
				hex = "0"..hex
			end
			local newbtn = {pattern="90 "..hex.." <0x00>0", name="Grid "..i} --yellow
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
			local newmom = {pattern="B0 "..hex.." <0x00>0", name="Momentary "..bindex} --yellow
			table.insert(outputs,newmom)
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
g_scopetext = "none"
g_scopetext_prev = "none"
g_scope_item_index = 2 --the second item in the remote.define(items)
function remote_set_state(changed_items)
	--look for the _Scope constant. Alias8cv reports "Alias8".
	if remote.is_item_enabled(g_scope_item_index) then
		local scope_text = remote.get_item_text_value(g_scope_item_index)
		g_scopetext = scope_text
	else
		g_scopetext = ""
	end
	
	if(g_last_input_item~=nil) then
		if remote.is_item_enabled(g_last_input_item) then
			local feedback_text=remote.get_item_name_and_value(g_last_input_item)
			if string.len(feedback_text)>0 then
				g_feedback_enabled=true
				--g_lcd_state=string.format("%-16.16s",feedback_text)
				g_lcd_state=feedback_text
			end
		end
	end
end

sysex_aliascv_btns = "F0 00 01 61 0B 0B 00 00 01 00 02 00 03 00 04 00 05 00 06 00 07 00 51 01 52 01 53 01 54 01 55 01 56 01 57 01 58 01 F7"
sysex_aliascv_ccleds = "f0 00 01 61 0b 24 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 08 0c 09 0d 0a 0e 0b 0f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f f7"
sysex_aliascv_ntleds = "f0 00 01 61 0b 23 00 04 01 05 02 06 03 07 7f 7f 7f 7f 7f 7f 7f 7f 10 11 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f f7"
sysex_def_btns = "F0 00 01 61 0B 0B 00 00 01 00 02 00 03 00 04 00 05 00 06 00 07 00 08 00 09 00 0a 00 0b 00 0c 00 0d 00 0e 00 0f 00 F7"
sysex_def_ccleds = "f0 00 01 61 0b 24 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f f7"
sysex_def_ntleds = "f0 00 01 61 0b 23 00 04 01 05 02 06 03 07 08 0c 09 0d 0a 0e 0b 0f 10 11 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f f7"
function remote_deliver_midi()
	local ret_events={}
	if g_scopetext_prev~=g_scopetext then
		--report over sysex, mostly for testing
		local const_event=make_lcd_midi_message("SCOPE "..g_scopetext)
		table.insert(ret_events,const_event)
		--if we've landed on Alias8cv RackExtension _Scope reports "Alias8cv" and we reprogram the bottom row of buttons
		if(g_scopetext=="Alias8cv") then
			local makebtns = remote.make_midi(sysex_aliascv_btns)
			table.insert(ret_events,makebtns)
			local makeccled = remote.make_midi(sysex_aliascv_ccleds)
			table.insert(ret_events,makeccled)
			local makentled = remote.make_midi(sysex_aliascv_ntleds)
			table.insert(ret_events,makentled)
		else
			local makebtns = remote.make_midi(sysex_def_btns)
			table.insert(ret_events,makebtns)
			local makeccled = remote.make_midi(sysex_def_ccleds)
			table.insert(ret_events,makeccled)
			local makentled = remote.make_midi(sysex_def_ntleds)
			table.insert(ret_events,makentled)
		end
		g_scopetext_prev=g_scopetext
	end
	return ret_events
end

function make_lcd_midi_message(text)
	local event=remote.make_midi("f0 00 00 61 00") --header for Livid LCD, product ID 0
	start=6
	stop=6+string.len(text)-1
	for i=start,stop do
		sourcePos=i-start+1
		event[i] = string.byte(text,sourcePos)
	end
	event[stop+1] = 247         -- hex f7
	return event
end