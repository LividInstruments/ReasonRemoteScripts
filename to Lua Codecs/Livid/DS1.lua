items = {}

function remote_init(manufacturer, model)
	if model=="DS1" then
		items={}
  --Scope
    table.insert(items,{name="_Scope", output="text"})
  --Var
    table.insert(items,{name="_Var", output="text"})
  --Master
    table.insert(items,{name="Master", input="value", min=0, max=127, output="value"})
  --faders (items 4-11)
    for i=1,8 do 
      local ctl = {name="Fader "..i, input="value", min=0,max=127,output="value"}
      table.insert(items,ctl)
    end
  --channel strip knobs (items 12-51)
    for ch=1,8 do --items 
      for i=1,5 do 
        local ctl = {name="Dial "..ch.."_"..i, input="value", min=0,max=127,output="value"}
        table.insert(items,ctl)
      end
    end
  --knobs(items 52-55)
    for i=1,4 do 
      local ctl = {name="Knob "..i, input="value", min=0,max=127,output="value"}
      table.insert(items,ctl)
    end
  --encoders(items 56-57)
    for i=1,2 do 
      local ctl = {name="Enc "..i, input="value", min=0,max=127,output="value"}
      table.insert(items,ctl)
    end
  --encoders delta(items 58-59)
    for i=1,2 do 
      local ctl = {name="EncDelta "..i, input="delta", min=0,max=127,output="value"}
      table.insert(items,ctl)
    end
  --channel strip buttons
    for ch=1,8 do --items 
      for i=1,2 do 
        local ctl = {name="CBtn "..ch.."_"..i, input="button", min=0, max=127, output="value"}
        table.insert(items,ctl)
      end
    end
  --Buttons etx.
  --3x3 buttons
    for i=1,9 do 
      local ctl = {name="Grid "..i, input="button", min=0, max=127, output="value"}
      table.insert(items,ctl)
    end
  --encoder btns
    for i=1,4 do 
      local ctl = {name="EBtn "..i, input="button", min=0, max=127, output="value"}
      table.insert(items,ctl)
    end    
  --channel strip button leds for redrum
    for ch=1,8 do --items 
      for i=1,2 do 
        local ctl = {name="CBtnLED "..ch.."_"..i, min=0, max=4, output="value"}
        table.insert(items,ctl)
      end
    end
  --expression input
    table.insert(items,{name="Expression", input="value", min=0, max=127, output="value"})
    remote.define_items(items)
    local inputs={}
    local cc_hex = string.format("%02x",176) --cc status byte b0 to bf    
    local chhex = string.format("%02x",0) --0 to f
  --faders
    for i=1,8 do
      local ccnum = i+40 --midi for faders starts at cc# 41
      local hex = string.format("%02x",ccnum)
      local newin = {pattern=cc_hex.." "..hex.." xx", name="Fader "..i}
      table.insert(inputs,newin)
    end
  --ch strip knobs
    for ch=1,8 do  
      for i=1,5 do
        local ccnum = i + ( 5*(ch-1) ) --midi for faders starts at cc# 1
        local hex = string.format("%02x",ccnum)
        local newin = {pattern=cc_hex.." "..hex.." xx", name="Dial "..ch.."_"..i}
        table.insert(inputs,newin)
      end
    end
  --ch strip buttons
    for ch=1,8 do
      for i=1,2 do
        local ccnum = (i-1) + ( 2*(ch-1) ) --midi for buttons starts at note# 0
        local hex = string.format("%02x",ccnum)
        local newbtn = {pattern="<100x>? "..hex.." <z000>0", name="CBtn "..ch.."_"..i}
        table.insert(inputs,newbtn)
      end
    end
  --Global controls
  --absolute encoders are bottom 2
    for i=1,2 do 
      local ccnum = i+97 --midi for bottom 2 encoders starts at cc# 98
      local hex = string.format("%02x",ccnum)
      local newin = {pattern=cc_hex.." "..hex.." xx", name="Enc "..i}
      table.insert(inputs,newin)
    end
  --inc/dec encoders delta on top 2 encoders
    for i=1,2 do 
      local ccnum = i+95 --midi for faders starts at cc# 96
      local hex = string.format("%02x",ccnum)
      --{pattern="b? 2A <???y>?", name="Encoder", value="(1-2*y)"},
      local newin = {pattern=cc_hex.." "..hex.." <???y>?", name="EncDelta "..i, value="(1-2*y)"}
      table.insert(inputs,newin)
    end
  --encoder buttons
    for i=1,4 do 
      local ccnum = i+24 --midi for buttons starts at note# 25
      local hex = string.format("%02x",ccnum)
      local newin = {pattern="<100x>? "..hex.." <z000>0", name="EBtn "..i}
      table.insert(inputs,newin)
    end
  --knobs
    for i=1,4 do 
      local ccnum = i+49 --midi for knobs starts at cc# 50
      local hex = string.format("%02x",ccnum)
      local newin = {pattern=cc_hex.." "..hex.." xx", name="Knob "..i}
      table.insert(inputs,newin)
    end
  --3x3 buttons
    for i=1,9 do 
      local ccnum = i+15 --midi for buttons starts at note# 16
      local hex = string.format("%02x",ccnum)
      local newin = {pattern="<100x>? "..hex.." <z000>0", name="Grid "..i}
      table.insert(inputs,newin)
    end
    table.insert(inputs,{pattern="b? "..string.format("%02x",55).." xx", name="Expression"})
    table.insert(inputs,{pattern="b? "..string.format("%02x",49).." xx", name="Master"})
    remote.define_auto_inputs(inputs)

	  local outputs={}
    local cc_hex = string.format("%02x",176) --cc status byte b0  
    local nt_hex = string.format("%02x",144) --cc status byte 90  
	   --faders
    for i=1,8 do
      local ccnum = i+40 --midi for faders starts at cc# 41
      local hex = string.format("%02x",ccnum)
      local newin = {pattern=cc_hex.." "..hex.." xx", name="Fader "..i}
      table.insert(outputs,newin)
    end
  --ch strip knobs
    for ch=1,8 do  
      for i=1,5 do
        local ccnum = i + ( 5*(ch-1) ) --midi for faders starts at cc# 1
        local hex = string.format("%02x",ccnum)
        local newin = {pattern=cc_hex.." "..hex.." xx", name="Dial "..ch.."_"..i}
        table.insert(outputs,newin)
      end
    end
  --ch strip buttons
    for ch=1,8 do
      for i=1,2 do
        local colors = {"64*value","4*value"}
        local ccnum = (i-1) + ( 2*(ch-1) ) --midi for buttons starts at note# 0
        local hex = string.format("%02x",ccnum)
        local newbtn = {pattern=nt_hex.." "..hex.." xx", name="CBtn "..ch.."_"..i, x=colors[i]} --yel
        table.insert(outputs,newbtn)
      end
    end
  --ch strip buttons LEDs for Redrum
    for ch=1,8 do
      for i=1,2 do
        local ccnum = (i-1) + ( 2*(ch-1) ) --midi for buttons starts at note# 0
        local hex = string.format("%02x",ccnum)
        local newbtn = {pattern=nt_hex.." "..hex.." xx", name="CBtnLED "..ch.."_"..i, x="map_redrum_led(value)"} --yel
        table.insert(outputs,newbtn)
      end
    end
  --Global controls
  --encoders
    for i=1,2 do 
      local ccnum = i+97 --midi for bottom 2 knobs starts at cc# 98
      local hex = string.format("%02x",ccnum)
      local newin = {pattern=cc_hex.." "..hex.." xx", name="Enc "..i}
      table.insert(outputs,newin)
    end
  --encoder buttons
    for i=1,4 do 
      local ccnum = i+24 --midi for buttons starts at note# 25
      local hex = string.format("%02x",ccnum)
      local newin = {pattern=nt_hex.." "..hex.." xx", name="EBtn "..i, x="64*value"} --yel
      table.insert(outputs,newin)
    end
  --knobs
    for i=1,4 do 
      local ccnum = i+49 --midi for knobs starts at cc# 50
      local hex = string.format("%02x",ccnum)
      local newin = {pattern=cc_hex.." "..hex.." xx", name="Knob "..i}
      table.insert(outputs,newin)
    end
  --3x3 buttons
    local gridcolors = {"(126*value)+1","blucy(value)","(64*value)+1", "(32*value)+1","blucy(value)","(64*value)+1", "(16*value)+1","(8*value)+1","(64*value)+1" } --green,cyan,yel,  blue,cyan,yel red,mag,yel
    for i=1,9 do 
      local ccnum = i+15 --midi for buttons starts at note# 16
      local hex = string.format("%02x",ccnum)
      local newin = {pattern=nt_hex.." "..hex.." xx", name="Grid "..i, x=gridcolors[i]}
      table.insert(outputs,newin)
    end
    table.insert(outputs,{pattern="b? "..string.format("%02x",55).." xx", name="Expression"})
    table.insert(outputs,{pattern="b? "..string.format("%02x",49).." xx", name="Master"})
		remote.define_auto_outputs(outputs)
	end
end

sli_start=1
sli_end=92
g_scope_item_index = 1 -- "_Scope" is item 1 in the table
g_var_item_index = 2 -- "_Var" is item 2 in the table
g_track_item_index = 58

g_last_input_time=0
g_last_input_item = 58

g_is_lcd_enabled = false
g_lcd_state = "LCD"
g_delivered_lcd_state = "#"
g_delivered_note = 0

lcd_events={}
function remote_deliver_midi(maxbytes,port)
	if(port==1) then
		local dum_events={}
		local isvarchange = false
		local istracktext = false	
    local new_text = g_lcd_state
--  next 2 lines continuously spit out the new_text - only for testing
--    local derp = string.find(new_text,"Track");
--    if(derp==nil) then
--      derp = "##"
--    end
--    local test_event = make_lcd_midi_message("/DEBUG "..g_lcd_state.." - "..derp)
--    table.insert(lcd_events,test_event)
    
		--if vartext from _Var item in remotemap has changed	-----------------
		if g_vartext_prev~=g_vartext then
			--Let the LCD know what the variation is
			local vartext = remote.get_item_text_value(g_var_item_index)
			--example: /Reason/0/DS1/0/display/0/display/ Write to Display
			local var_event = make_lcd_midi_message("/Reason/0/DS1/0/display/2/display/ "..vartext)
			table.insert(lcd_events,var_event)
			g_vartext_prev = g_vartext
			isvarchange = true
		end    
		--if scopetext from _Scope item in remotemap has changed	-----------------
		if g_scopetext_prev~=g_scopetext then
			--Let the LCD know what the variation is
			local scopetext = remote.get_item_text_value(g_scope_item_index)
			--example: /Reason/0/DS1/0/display/0/display/ Write to Display
			local var_event = make_lcd_midi_message("/Reason/0/DS1/0/display/1/display/ "..scopetext)
			table.insert(lcd_events,var_event)
			g_scopetext_prev = g_scopetext
			isvarchange = true
		end
		--lcd event and text parsing for  detection from text in track name----------------------------------------

		if g_delivered_lcd_state~=new_text then
			
			--istracktext = (string.find(new_text,"Track") == 1) --The word "track" is the first word
			--if istracktext==true then
			if g_tracktext_prev~=g_tracktext then	
			  local tracktext = remote.get_item_text_value(g_track_item_index)
				--send LCD the Track name text----------------------------------------------------------------
				local track_event = make_lcd_midi_message("/Reason/0/DS1/0/display/0/display/ "..tracktext)
				table.insert(lcd_events,track_event)
				g_tracktext_prev = g_tracktext
				istracktext=true
			end
			g_delivered_lcd_state = new_text
			if(istracktext==false) then
				if(g_lcd_index>=sli_start and g_lcd_index<=sli_end) then --if it's a Slider
					--we'll make the parameter/value/unit list into two arrays for our LCD, then send a long string to LCD
					update_slider(g_lcd_index)	
				end
			end

			--done looking at "Track" labels------------------------------------------------------
		end
	
		if istracktext==true or isvarchange==true then
		--refresh LCD with all the parameters and values for the sliders when a new track is selected----------------------------------------
		  --clear_sliders()
			for i = sli_start,sli_end do
				update_slider(i)
			end
		end
		return dum_events --no need to send out midi to ds1
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
g_tracktext = "none"
g_tracktext_prev = "none"
g_scopetext = "none"
g_scopetext_prev = "none"
g_vartext = "none"
g_vartext_prev = "none"
g_lcd_index = -1
g_clearpads = 0
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
	
	if remote.is_item_enabled(g_track_item_index) then
		local track_text = remote.get_item_text_value(g_track_item_index)
		g_tracktext = track_text
	else
		g_tracktext = ""
	end
	
	if(g_last_input_item~=nil) then
		if remote.is_item_enabled(g_last_input_item) then
			local feedback_text = remote.get_item_name_and_value(g_last_input_item)
			if string.len(feedback_text)>0 then
				g_feedback_enabled = true
				g_lcd_state = feedback_text
				g_lcd_index = g_last_input_item
			end
		end
	end
end

function remote_probe(manufacturer,model)
	if model=="DS1" then
		return {
			request="f0 7e 7f 06 01 f7",
			response="f0 7e 00 06 02 00 01 61 01 00 10 ?? ?? ?? ?? ?? f7"
		}
	end
end

function remote_prepare_for_use()
	g_delivered_lcd_state = string.format("%-16.16s","Livid DS1")
	local retEvents={
		remote.make_midi("F0 00 01 61 10 03 F7"), --10h = (16), product ID for DS1
		--send all local off on settings ch 16  191,122,64 
		remote.make_midi("bF 7A 40"),
		--make bottom 2 encoders absolute
		remote.make_midi("F0 00 01 61 10 11 03 F7")
	}
	return retEvents
end

----UTILITIES--------
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

--UTILITY: make a subtable of a table:
function table_slice (values,i1,i2)
	local res = {}
	local n = table.getn(values) --# provides length
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

 --white,yel,red,green
pclr={}
pclr[0]=0
pclr[1]=1
pclr[2]=64
pclr[3]=16
pclr[4]=127
function map_redrum_led(v)
  if(v<5) then
   return pclr[v]
  end
end

function blucy(v)
  if(v>0) then
    return 32
  else
    return 4
  end
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

--UTILITY: this function is called when we need to update a slider LCD

function update_slider(item)
	local textarray = {}
	local p_path = ""
	local v_path = ""
	local p_text = ""
	local v_text = ""
	--make an osc style path from the control names created in items{}
	local ctlname = items[item].name
  local ctl = string.gsub(ctlname, "%s+", "/") --replace space with /
  if(ctlname=="Master") then
    ctl = "Master/0"
  end
  if(ctlname=="Expression") then
    ctl = "Expression/0"
  end
  p_path = "/Reason/0/DS1/0/"..ctl.."/lcd_name " 
  v_path = "/Reason/0/DS1/0/"..ctl.."/lcd_value "
  
	--now get the parameter name and value from remote
	local thetext = remote.get_item_name_and_value(item)
	if(string.len(thetext)>0) then
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
		if(wordcount>2) then
			p_text = string.format( table.concat( table_slice(textarray,1,-3)," " ) ) --from first element to 3rd to last element (everything but last 2 elements)
			v_text = string.format( table.concat( table_slice(textarray,-2)," " ) ) --last 2 elements
		else
			p_text = string.format(textarray[1]) --1st element, like "Mode"
			v_text = string.format(textarray[2]) --2nd elemnt, like "10%" (with % stripped out)
		end
	else
    p_text = "-"
    v_text = "-"
	end
  local p_lcd_event = make_lcd_midi_message(p_path..p_text)
  local v_lcd_event = make_lcd_midi_message(v_path..v_text)
  table.insert(lcd_events,p_lcd_event) --put the lcd_text (e.g. "Drum 1" or "Filter Freq" into the table of midi events 
  table.insert(lcd_events,v_lcd_event) --put the lcd_text (e.g. "Tone 16" or "220 hz" into the table of midi events 	
	
end
function clear_sliders()
  for i = sli_start,sli_end do
    local p_path = ""
    local v_path = ""
    local p_text = "-"
    local v_text = ""
    local ctlname = items[i].name
    local ctl = string.gsub(ctlname, "%s+", "/") --replace space with /
    if(ctlname=="Master") then
      ctl = "Master/0"
    end
    if(ctlname=="Expression") then
      ctl = "Expression/0"
    end
    p_path = "/Reason/0/DS1/0/"..ctl.."/lcd_name " 
    v_path = "/Reason/0/DS1/0/"..ctl.."/lcd_value "
    local p_lcd_event = make_lcd_midi_message(p_path..p_text)
    local v_lcd_event = make_lcd_midi_message(v_path..v_text)
    table.insert(lcd_events,p_lcd_event) --put the lcd_text (e.g. "Drum 1" or "Filter Freq" into the table of midi events 
    table.insert(lcd_events,v_lcd_event) --put the lcd_text (e.g. "Tone 16" or "220 hz" into the table of midi events 	
  end
end