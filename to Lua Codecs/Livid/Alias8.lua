function remote_init(manufacturer, model)
	if model=="Alias8" then
		local items={
			{name="Keyboard",input="keyboard"},
			{name="Knob 1", input="value", min=0, max=127, output="value"},
			{name="Knob 2", input="value", min=0, max=127, output="value"},
			{name="Knob 3", input="value", min=0, max=127, output="value"},
			{name="Knob 4", input="value", min=0, max=127, output="value"},
			{name="Knob 5", input="value", min=0, max=127, output="value"},
			{name="Knob 6", input="value", min=0, max=127, output="value"},
			{name="Knob 7", input="value", min=0, max=127, output="value"},
			{name="Knob 8", input="value", min=0, max=127, output="value"},
			{name="Knob 9", input="value", min=0, max=127, output="value"},
			{name="Knob 10", input="value", min=0, max=127, output="value"},
			{name="Knob 11", input="value", min=0, max=127, output="value"},
			{name="Knob 12", input="value", min=0, max=127, output="value"},
			{name="Knob 13", input="value", min=0, max=127, output="value"},
			{name="Knob 14", input="value", min=0, max=127, output="value"},
			{name="Knob 15", input="value", min=0, max=127, output="value"},
			{name="Knob 16", input="value", min=0, max=127, output="value"},
			{name="Slider 1", input="value", min=0, max=127, output="value"},
			{name="Slider 2", input="value", min=0, max=127, output="value"},
			{name="Slider 3", input="value", min=0, max=127, output="value"},
			{name="Slider 4", input="value", min=0, max=127, output="value"},
			{name="Slider 5", input="value", min=0, max=127, output="value"},
			{name="Slider 6", input="value", min=0, max=127, output="value"},
			{name="Slider 7", input="value", min=0, max=127, output="value"},
			{name="Slider 8", input="value", min=0, max=127, output="value"},
			{name="Slider 9", input="value", min=0, max=127, output="value"},
			{name="Encoder R", input="delta"},
			{name="Grid 1", input="button", min=0, max=127, output="value"},
			{name="Grid 2", input="button", min=0, max=127, output="value"},
			{name="Grid 3", input="button", min=0, max=127, output="value"},
			{name="Grid 4", input="button", min=0, max=127, output="value"},
			{name="Grid 5", input="button", min=0, max=127, output="value"},
			{name="Grid 6", input="button", min=0, max=127, output="value"},
			{name="Grid 7", input="button", min=0, max=127, output="value"},
			{name="Grid 8", input="button", min=0, max=127, output="value"},
			{name="Grid 9", input="button", min=0, max=64, output="value"},
			{name="Grid 10", input="button", min=0, max=64, output="value"},
			{name="Grid 11", input="button", min=0, max=64, output="value"},
			{name="Grid 12", input="button", min=0, max=64, output="value"},
			{name="Grid 13", input="button", min=0, max=64, output="value"},
			{name="Grid 14", input="button", min=0, max=64, output="value"},
			{name="Grid 15", input="button", min=0, max=64, output="value"},
			{name="Grid 16", input="button", min=0, max=64, output="value"}
			}
		remote.define_items(items)
	end
	if model=="Alias8" then
		local inputs={
			{pattern="b0 01 xx", name="Knob 1"},
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
			{pattern="b0 2A xx", name="Encoder R"},
			{pattern="<100x>? 00 <z000>0", name="Grid 1"},
			{pattern="<100x>? 01 <z000>0", name="Grid 2"},
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
			{pattern="<100x>? 0f <z000>0", name="Grid 16"}
		}
		remote.define_auto_inputs(inputs)
	end
	if model=="Alias8" then
		local outputs={
			{pattern="b0 01 xx", name="Knob 1"},
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
			{pattern="90 01 xx", name="Grid 2", x="127*value"},--green
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
			{pattern="90 0f <0x00>0", name="Grid 16"} --yellow
		}
		remote.define_auto_outputs(outputs)
	end
end

function remote_probe(manufacturer,model)
	if model=="Alias8" then
		return {
			request="f0 7e 7f 06 01 f7",
			response="f0 7e 00 06 02 00 01 61 01 00 0b ?? ?? ?? ?? ?? f7"
		}
	end
end

function remote_prepare_for_use() 
	return {
			remote.make_midi("F0 00 01 61 0b 06 F7") --factory reset sysex
		}
end