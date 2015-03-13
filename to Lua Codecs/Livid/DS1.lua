function remote_init(manufacturer, model)
	if model=="DS1" then
		local items={  
		}
		
  --faders
    for i=1,8 do 
      local ctl = {name="Fader "..i, input="value", min=0,max=127,output="value"}
      table.insert(items,ctl)
    end
  --channel strip knobs
    for ch=1,8 do --items 
      for i=1,5 do 
        local ctl = {name="Dial "..ch.."_"..i, input="value", min=0,max=127,output="value"}
        table.insert(items,ctl)
      end
    end
  --channel strip buttons
    for ch=1,8 do --items 
      for i=1,2 do 
        local ctl = {name="CBtn "..ch.."_"..i, input="button", min=0, max=127, output="value"}
        table.insert(items,ctl)
      end
    end
  --channel strip button leds for redrum
    for ch=1,8 do --items 
      for i=1,2 do 
        local ctl = {name="CBtnLED "..ch.."_"..i, min=0, max=4, output="value"}
        table.insert(items,ctl)
      end
    end
  --Global controls
  --encoders
    for i=1,4 do 
      local ctl = {name="Enc "..i, input="value", min=0,max=127,output="value"}
      table.insert(items,ctl)
    end
  --encoders delta
    for i=1,4 do 
      local ctl = {name="EncDelta "..i, input="delta"}
      table.insert(items,ctl)
    end
  --encoder btns
    for i=1,4 do 
      local ctl = {name="EBtn "..i, input="button", min=0, max=127, output="value"}
      table.insert(items,ctl)
    end
  --knobs
    for i=1,4 do 
      local ctl = {name="Knob "..i, input="value", min=0,max=127,output="value"}
      table.insert(items,ctl)
    end
  --3x3 buttons
    for i=1,9 do 
      local ctl = {name="Grid "..i, input="button", min=0, max=127, output="value"}
      table.insert(items,ctl)
    end
  --Scope
    table.insert(items,{name="_Scope", output="text"})
  --expression input
    table.insert(items,{name="Expression", input="value", min=0, max=127, output="value"})
  --Master
    table.insert(items,{name="Master", input="value", min=0, max=127, output="value"})
    remote.define_items(items)

	

    local inputs={
--			{pattern="<100x>? 10 <z000>0", name="Grid 1"},
--			{pattern="<100x>? 11 <z000>0", name="Grid 2"},
--			{pattern="<100x>? 12 <z000>0", name="Grid 3"},
    }
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
    for ch=1,8 do --items 
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
  --encoders
    for i=1,4 do 
      local ccnum = i+95 --midi for faders starts at cc# 96
      local hex = string.format("%02x",ccnum)
      local newin = {pattern=cc_hex.." "..hex.." xx", name="Enc "..i}
      table.insert(inputs,newin)
    end
  --encoders delta
    for i=1,4 do 
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

	  local outputs={
    }
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
    for ch=1,8 do --items 
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
    for i=1,4 do 
      local ccnum = i+95 --midi for faders starts at cc# 96
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
    local gridcolors = {"127*value","4*value","64*value", "32*value","4*value","64*value", "16*value","8*value","64*value", } --green,cyan,yel,  blue,cyan,yel red,mag,yel
    for i=1,9 do 
      local ccnum = i+15 --midi for buttons starts at note# 16
      local hex = string.format("%02x",ccnum)
      local newin = {pattern=nt_hex.." "..hex.." xx", name="Grid "..i, x=gridcolors[i]} --yel
      table.insert(outputs,newin)
    end
    table.insert(outputs,{pattern="b? "..string.format("%02x",55).." xx", name="Expression"})
    table.insert(outputs,{pattern="b? "..string.format("%02x",49).." xx", name="Master"})
		remote.define_auto_outputs(outputs)
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
		remote.make_midi("bF 7A 40")
	}
	return retEvents
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