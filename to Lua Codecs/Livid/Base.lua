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
sevseg = {
		A='0a',B='0b',C='0c',D='0d',E='0e',F='0f',G='10',H='11',I='12',J='13',K='14',L='15',M='16',N='17',O='18',P='19',Q='1a',R='1b',S='1c',T='1d',U='1e',V='1f',W='20',X='21',Y='22',Z='23',
		a='0a',b='0b',c='0c',d='0d',e='0e',f='0f',g='10',h='11',i='12',j='13',k='14',l='15',m='16',n='17',o='18',p='19',q='1a',r='1b',s='1c',t='1d',u='1e',v='1f',w='20',x='21',y='22',z='23'
		}
sevseg[0]='00'
sevseg[1]='01'
sevseg[2]='02'
sevseg[3]='03'
sevseg[4]='04'
sevseg[5]='05'
sevseg[6]='06'
sevseg[7]='07'
sevseg[8]='08'
sevseg[9]='09'
sevseg['-']='2A'
sevseg['_']='27'
					
function remote_init(manufacturer, model)
	if model=="Base" then
		local items={
			{name="Keyboard",input="keyboard"},
			{name="Slider 1", input="value", min=0, max=127, output="value"},
			{name="Slider 2", input="value", min=0, max=127, output="value"},
			{name="Slider 3", input="value", min=0, max=127, output="value"},
			{name="Slider 4", input="value", min=0, max=127, output="value"},
			{name="Slider 5", input="value", min=0, max=127, output="value"},
			{name="Slider 6", input="value", min=0, max=127, output="value"},
			{name="Slider 7", input="value", min=0, max=127, output="value"},
			{name="Slider 8", input="value", min=0, max=127, output="value"},
			{name="Slider 9", input="value", min=0, max=127, output="value"},
			{name="Press 1", input="value", min=0, max=127, output="value"},
			{name="Press 2", input="value", min=0, max=127, output="value"},
			{name="Press 3", input="value", min=0, max=127, output="value"},
			{name="Press 4", input="value", min=0, max=127, output="value"},
			{name="Press 5", input="value", min=0, max=127, output="value"},
			{name="Press 6", input="value", min=0, max=127, output="value"},
			{name="Press 7", input="value", min=0, max=127, output="value"},
			{name="Press 8", input="value", min=0, max=127, output="value"},
			{name="Press 9", input="value", min=0, max=127, output="value"},
			{name="Press 10", input="value", min=0, max=127, output="value"},
			{name="Press 11", input="value", min=0, max=127, output="value"},
			{name="Press 12", input="value", min=0, max=127, output="value"},
			{name="Press 13", input="value", min=0, max=127, output="value"},
			{name="Press 14", input="value", min=0, max=127, output="value"},
			{name="Press 15", input="value", min=0, max=127, output="value"},
			{name="Press 16", input="value", min=0, max=127, output="value"},
			{name="Press 17", input="value", min=0, max=127, output="value"},
			{name="Press 18", input="value", min=0, max=127, output="value"},
			{name="Press 19", input="value", min=0, max=127, output="value"},
			{name="Press 20", input="value", min=0, max=127, output="value"},
			{name="Press 21", input="value", min=0, max=127, output="value"},
			{name="Press 22", input="value", min=0, max=127, output="value"},
			{name="Press 23", input="value", min=0, max=127, output="value"},
			{name="Press 24", input="value", min=0, max=127, output="value"},
			{name="Press 25", input="value", min=0, max=127, output="value"},
			{name="Press 26", input="value", min=0, max=127, output="value"},
			{name="Press 27", input="value", min=0, max=127, output="value"},
			{name="Press 28", input="value", min=0, max=127, output="value"},
			{name="Press 29", input="value", min=0, max=127, output="value"},
			{name="Press 30", input="value", min=0, max=127, output="value"},
			{name="Press 31", input="value", min=0, max=127, output="value"},
			{name="Press 32", input="value", min=0, max=127, output="value"},
			{name="Fbtn 1", input="button", min=0, max=40, output="value"},
			{name="Fbtn 2", input="button", min=0, max=40, output="value"},
			{name="Fbtn 3", input="button", min=0, max=40, output="value"},
			--{name="Fbtn 4", input="button", min=0, max=40, output="value"},
			--{name="Fbtn 5", input="button", min=0, max=40, output="value"},
			--{name="Fbtn 6", input="button", min=0, max=40, output="value"},
			--{name="Fbtn 7", input="button", min=0, max=40, output="value"},
			--{name="Fbtn 8", input="button", min=0, max=40, output="value"},
			{name="Tbtn 1", input="button", min=0, max=127, output="value"},
			{name="Tbtn 2", input="button", min=0, max=127, output="value"},
			{name="Tbtn 3", input="button", min=0, max=127, output="value"},
			{name="Tbtn 4", input="button", min=0, max=127, output="value"},
			{name="Tbtn 5", input="button", min=0, max=127, output="value"},
			{name="Tbtn 6", input="button", min=0, max=127, output="value"},
			{name="Tbtn 7", input="button", min=0, max=127, output="value"},
			{name="Tbtn 8", input="button", min=0, max=127, output="value"},
			}
		remote.define_items(items)
	end
	if model=="Base" then
		local inputs={
			--{pattern="90 yy zz", name="Keyboard"},
			--top touch buttons
			{pattern="<100x>? 0A <z000>0", name="Tbtn 1"},
			{pattern="<100x>? 0B <z000>0", name="Tbtn 2"},
			{pattern="<100x>? 0C <z000>0", name="Tbtn 3"},
			{pattern="<100x>? 0D <z000>0", name="Tbtn 4"},
			{pattern="<100x>? 0E <z000>0", name="Tbtn 5"},
			{pattern="<100x>? 0F <z000>0", name="Tbtn 6"},
			{pattern="<100x>? 10 <z000>0", name="Tbtn 7"},
			{pattern="<100x>? 11 <z000>0", name="Tbtn 8"},
			
			--right funciton buttons
			{pattern="<100x>? 12 <z000>0", name="Fbtn 1"},
			{pattern="<100x>? 13 <z000>0", name="Fbtn 2"},
			{pattern="<100x>? 14 <z000>0", name="Fbtn 3"},
			--{pattern="<100x>? 15 <z000>0", name="Fbtn 4"},
			--{pattern="<100x>? 16 <z000>0", name="Fbtn 5"},
			--{pattern="<100x>? 17 <z000>0", name="Fbtn 6"},
			--{pattern="<100x>? 18 <z000>0", name="Fbtn 7"},
			--{pattern="<100x>? 19 <z000>0", name="Fbtn 8"},
			
			--touch sliders
			{pattern="b0 01 xx", name="Slider 1"},
			{pattern="b0 02 xx", name="Slider 2"},
			{pattern="b0 03 xx", name="Slider 3"},
			{pattern="b0 04 xx", name="Slider 4"},
			{pattern="b0 05 xx", name="Slider 5"},
			{pattern="b0 06 xx", name="Slider 6"},
			{pattern="b0 07 xx", name="Slider 7"},
			{pattern="b0 08 xx", name="Slider 8"},
			{pattern="b0 09 xx", name="Slider 9"},
			
			--counting from bottom left to top right,drum pad after touch ccs:
			{pattern="b0 24 xx", name="Press 1"},
			{pattern="b0 25 xx", name="Press 2"},
			{pattern="b0 26 xx", name="Press 3"},
			{pattern="b0 27 xx", name="Press 4"},
			{pattern="b0 28 xx", name="Press 5"},
			{pattern="b0 29 xx", name="Press 6"},
			{pattern="b0 2A xx", name="Press 7"},
			{pattern="b0 2B xx", name="Press 8"},
			{pattern="b0 2C xx", name="Press 9"},
			{pattern="b0 2D xx", name="Press 10"},
			{pattern="b0 2E xx", name="Press 11"},
			{pattern="b0 2F xx", name="Press 12"},
			{pattern="b0 30 xx", name="Press 13"},
			{pattern="b0 31 xx", name="Press 14"},
			{pattern="b0 32 xx", name="Press 15"},
			{pattern="b0 33 xx", name="Press 16"},
			{pattern="b0 34 xx", name="Press 17"},
			{pattern="b0 35 xx", name="Press 18"},
			{pattern="b0 36 xx", name="Press 19"},
			{pattern="b0 37 xx", name="Press 20"},
			{pattern="b0 38 xx", name="Press 21"},
			{pattern="b0 39 xx", name="Press 22"},
			{pattern="b0 3A xx", name="Press 23"},
			{pattern="b0 3B xx", name="Press 24"},
			{pattern="b0 3C xx", name="Press 25"},
			{pattern="b0 3D xx", name="Press 26"},
			{pattern="b0 3E xx", name="Press 27"},
			{pattern="b0 3F xx", name="Press 28"},
			{pattern="b0 40 xx", name="Press 29"},
			{pattern="b0 41 xx", name="Press 30"},
			{pattern="b0 42 xx", name="Press 31"},
			{pattern="b0 43 xx", name="Press 32"}
		}
		remote.define_auto_inputs(inputs)
	end
	if model=="Base" then
		local outputs={
			--top touch buttons
			{pattern="90 0A xx", name="Tbtn 1", x="127*value"},--green
			{pattern="90 0B xx", name="Tbtn 2"}, 
			{pattern="90 0C 0<0x00>", name="Tbtn 3"}, --cyan
			{pattern="90 0D 0<0x00>", name="Tbtn 4"}, --cyan
			{pattern="90 0E <000x>0", name="Tbtn 5"}, --red
			{pattern="90 0F <0x00>0", name="Tbtn 6"}, --yel
			{pattern="90 10 <0x00>0", name="Tbtn 7"}, --yel
			{pattern="90 11 <0x00>0", name="Tbtn 8"}, --yel
			
			{pattern="90 12 xx", name="Fbtn 1"},
			{pattern="90 13 xx", name="Fbtn 2"},
			{pattern="90 14 xx", name="Fbtn 3"},
			--{pattern="90 15 xx", name="Fbtn 4"},
			--{pattern="90 16 xx", name="Fbtn 5"},
			--{pattern="90 17 xx", name="Fbtn 6"},
			--{pattern="90 18 xx", name="Fbtn 7"},
			--{pattern="90 19 xx", name="Fbtn 8"},
			
			--touch sliders
			{pattern="b0 01 xx", name="Slider 1"},
			{pattern="b0 02 xx", name="Slider 2"},
			{pattern="b0 03 xx", name="Slider 3"},
			{pattern="b0 04 xx", name="Slider 4"},
			{pattern="b0 05 xx", name="Slider 5"},
			{pattern="b0 06 xx", name="Slider 6"},
			{pattern="b0 07 xx", name="Slider 7"},
			{pattern="b0 08 xx", name="Slider 8"},
			{pattern="b0 09 xx", name="Slider 9"},
			
			--counting from bottom left to top right,drum pad after touch ccs:
			{pattern="b0 24 xx", name="Press 1"},
			{pattern="b0 25 xx", name="Press 2"},
			{pattern="b0 26 xx", name="Press 3"},
			{pattern="b0 27 xx", name="Press 4"},
			{pattern="b0 28 xx", name="Press 5"},
			{pattern="b0 29 xx", name="Press 6"},
			{pattern="b0 2A xx", name="Press 7"},
			{pattern="b0 2B xx", name="Press 8"},
			{pattern="b0 2C xx", name="Press 9"},
			{pattern="b0 2D xx", name="Press 10"},
			{pattern="b0 2E xx", name="Press 11"},
			{pattern="b0 2F xx", name="Press 12"},
			{pattern="b0 30 xx", name="Press 13"},
			{pattern="b0 31 xx", name="Press 14"},
			{pattern="b0 32 xx", name="Press 15"},
			{pattern="b0 33 xx", name="Press 16"},
			{pattern="b0 34 xx", name="Press 17"},
			{pattern="b0 35 xx", name="Press 18"},
			{pattern="b0 36 xx", name="Press 19"},
			{pattern="b0 37 xx", name="Press 20"},
			{pattern="b0 38 xx", name="Press 21"},
			{pattern="b0 39 xx", name="Press 22"},
			{pattern="b0 3A xx", name="Press 23"},
			{pattern="b0 3B xx", name="Press 24"},
			{pattern="b0 3C xx", name="Press 25"},
			{pattern="b0 3D xx", name="Press 26"},
			{pattern="b0 3E xx", name="Press 27"},
			{pattern="b0 3F xx", name="Press 28"},
			{pattern="b0 40 xx", name="Press 29"},
			{pattern="b0 41 xx", name="Press 30"},
			{pattern="b0 42 xx", name="Press 31"},
			{pattern="b0 43 xx", name="Press 32"}
		}
		remote.define_auto_outputs(outputs)
	end
end

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
init=1

function remote_process_midi(event)
	ret=remote.match_midi("<100x>? yy zz",event) --find a note on or off
	if(ret~=nil) then
		remote.trace("\nIN"..ret.x.." "..ret.y.." "..ret.z)
		tran_btn = ret.z
		--fbtn note ons are velocity 64
		scale_up=remote.match_midi("9? 15 40",event) --find F4
		scale_dn=remote.match_midi("9? 16 40",event) --find F5
		tran_up=remote.match_midi("9? 17 40",event) --find F6
		tran_dn=remote.match_midi("9? 18 40",event) --find F7
		local shiftbtn=remote.match_midi("<100x>? 19 zz",event) --find F8
		--drum_tog=remote.match_midi("9? 13 40",event) --find F2
		--tran_rst=remote.match_midi("9? 14 xx",event) --find F3
		if (shiftbtn) then
			if shiftbtn.z>0 then
				shift = 1 --momentary like a computer's shift key
			else
				shift = 0
			end
		end
		if(tran_up) then
			transpose=transpose+(1-shift)+(shift*12)
		end
		if(tran_dn) then
			transpose=transpose-(1-shift)-(shift*12)
		end
		if(scale_up) then
			scale_int = modulo(scale_int+1,8)
			scalename = scalenames[1+scale_int]
			remote.trace("scale up "..scalename)
			scale=scales[scalename]
		end
		if(scale_dn) then
			scale_int = modulo(scale_int-1,8) --only use the first 8 scales
			scalename = scalenames[1+scale_int]
			remote.trace("scale dn "..scalename)
			scale=scales[scalename]
		end
		if(drum_tog) then
			drum_mode = 1-drum_mode
		end
		--if(tran_rst) then
		--	transpose=0
		--end
		--now handle the pads
		if ret.y>35 and ret.y<68 then
			local padid = ret.y-36
			local scale_len = table.getn(scale)
			--remote.trace("padid "..padid)
			--remote.trace(" len "..scale_len)
			--modulo is weird in lua, so we write a custom fcn
			local ind = 1+modulo(padid,scale_len)
			local oct = math.floor(padid/scale_len)
			local addnote = scale[ind]
			local noteout = root+transpose+(12*oct)+addnote
			if (noteout<127 or noteout>0) then
				local msg={ time_stamp=event.time_stamp, item=1, value=ret.x, note=noteout,velocity=ret.z }
				remote.handle_input(msg)
				remote.trace("\nnoteout "..noteout.." "..ret.x.." "..ret.z);
				return true
				end
			else
			return false
		end
	end
	return false
end

--colors = {2,4,8,16,32,64,127}
colors = {"02","04","08","10","20","40","7F"}
function remote_deliver_midi()
	local ret_events={}
	local upevent={}
	local dnevent={}
	local padevent={}
	local ltevent={}
	local rtevent={}
	local shevent={}
	--initialize colors:
	if init==1 then
		local firstcolors={
			--set 7 seg display for major scale MA:
			remote.make_midi("b0 22 16"),
			remote.make_midi("b0 23 16"),
			--f btns w,w,off,c,c,b,b,y
			remote.make_midi("90 1A 02"),
			remote.make_midi("90 1B 02"),
			remote.make_midi("90 1C 00"),
			remote.make_midi("90 1D 04"),
			remote.make_midi("90 1E 04"),
			remote.make_midi("90 1F 20"),
			remote.make_midi("90 20 20"),
			remote.make_midi("90 21 40"),
			--top rt runner leds for variations w,w,w
			remote.make_midi("90 49 02"),
			remote.make_midi("90 4A 02"),
			remote.make_midi("90 4B 02"),
			--initialize pads
			
		}
		local first_len=table.getn(firstcolors)
		for i=1,first_len,1 do
			table.insert(ret_events,firstcolors[i])
		end	
		--notes 36 to 67 for pads
		local padevent = {}
		for i=1,32,1 do
			local padnum=string.format("%x",i+35)
			local modd = modulo(i-1,8)
			local keycolor="02"
			if(modd==0 or modd==7) then
				keycolor="40"
			end
			padevent[i]=remote.make_midi("90 "..padnum.." "..keycolor)
			table.insert(ret_events,padevent[i])
		end
		init=0
	end
	if (g_delivered_shift~=shift or g_delivered_transpose~=transpose)  then
		local shcolors = {"00","7F"}
		shevent = remote.make_midi("90 19 "..shcolors[shift+1])
		if shift==1 or tran_btn>0 then
			--show transpose in 7seg
			local xpose = string.format("%02i",math.abs(transpose) )
			local c_one = string.format("%02x", string.sub(xpose,1,1) )
			local c_two = string.format("%02x", string.sub(xpose,2,2) )
			ltevent=remote.make_midi("b0 22 "..c_one)
			table.insert(ret_events,ltevent)
			rtevent=remote.make_midi("b0 23 "..c_two)
			table.insert(ret_events,rtevent)
		else
			--return to scale
			local scale_abrv = scaleabrvs[scalename]
			local c_one = string.sub(scale_abrv,1,1)
			local c_two = string.sub(scale_abrv,2,2)
			ltevent=remote.make_midi("b0 22 "..sevseg[c_one])
			table.insert(ret_events,ltevent)
			rtevent=remote.make_midi("b0 23 "..sevseg[c_two])
			table.insert(ret_events,rtevent)
		end
		
		table.insert(ret_events,shevent)
		g_delivered_shift=shift
	end
	--if scale changes, we update the LCD
	if ( (g_delivered_scale~=scale_int or g_delivered_transpose~=transpose) and shift~=1 and tran_btn==0) then
		remote.trace("update scale "..scale_int)
		local scale_abrv = scaleabrvs[scalename]
		local c_one = string.sub(scale_abrv,1,1)
		local c_two = string.sub(scale_abrv,2,2)
		ltevent=remote.make_midi("b0 22 "..sevseg[c_one])
		table.insert(ret_events,ltevent)
		rtevent=remote.make_midi("b0 23 "..sevseg[c_two])
		table.insert(ret_events,rtevent)
		g_delivered_scale=scale_int
		-- and color the pads 
		remote.trace(scalename)
		if(scalename~='DrumPad') then
			for i=1,32,1 do
				local padid = i-1
				local scale_len = table.getn(scale)
				local oct = math.floor(padid/scale_len)
				local addnote = scale[1+modulo(i-1,scale_len)]
				local outnote=root+transpose+(12*oct)+addnote --note that gets played by synth
				local outnorm=modulo(outnote,12) --normalized to 0-11 range
				local padnum=string.format("%x",i+35) --note# that the controller led responds to
				local keycolors = {"02","40","20"} --white,yellow,blue
				local whites = {2, 4, 5, 7, 9, 11}
				--remote.trace("\n i: "..i.." padid: "..padid.." outnorm "..outnorm.." outnote "..outnote.." xpose "..transpose.." addnote "..addnote)
				--if outnorm is 0 , make it yellow. if it's a white key, make it white, else blue
				if outnorm==0 then
					padevent[i]=remote.make_midi("90 "..padnum.." "..keycolors[2])
					table.insert(ret_events,padevent[i])
				elseif exists(outnorm, whites) then
					padevent[i]=remote.make_midi("90 "..padnum.." "..keycolors[1])
					table.insert(ret_events,padevent[i])
				else
					padevent[i]=remote.make_midi("90 "..padnum.." "..keycolors[3])
					table.insert(ret_events,padevent[i])
				end
			end
		else
			--do drumpad color scheme
			for i=0,31,1 do
				local padnum=string.format("%x",i+36) --note# that the controller led responds to
				local right = modulo(math.floor(i/4),2)
				--remote.trace("\nside "..right.." div "..math.floor(i/4).." i "..i)
				if(right==1) then
					padevent[i]=remote.make_midi("90 "..padnum.." 20")
					table.insert(ret_events,padevent[i])
				else
					padevent[i]=remote.make_midi("90 "..padnum.." 40")
					table.insert(ret_events,padevent[i])
				end
			end
		end
	end
	if g_delivered_transpose~=transpose then
		local color_len=table.getn(colors)
		local color_ind=1 + (modulo( math.floor(math.abs(transpose)/12),color_len) ) --change color every octave
		local color=colors[color_ind]
		if transpose>0 then
			upevent = remote.make_midi("90 17 "..color)
			table.insert(ret_events,upevent)
			dnevent = remote.make_midi("90 18 00")
			table.insert(ret_events,dnevent)
		elseif transpose<0 then
			upevent = remote.make_midi("90 17 00")
			table.insert(ret_events,upevent)
			dnevent = remote.make_midi("90 18 "..color)
			table.insert(ret_events,dnevent)
		elseif transpose==0 then
			upevent = remote.make_midi("90 17 00")
			table.insert(ret_events,upevent)
			dnevent = remote.make_midi("90 18 00")
			table.insert(ret_events,dnevent)
		end
		table.insert(ret_events,remote.make_midi("b0  7b 00")) --all notes off
		g_delivered_transpose=transpose
	end
	return ret_events
end

function exists(f, l) -- find element v of l satisfying f(v)
  for _, v in ipairs(l) do
    if v==f then
      return true
    end
  end
  return nil
end

function modulo(a,b)
	local mo=a-math.floor(a/b)*b
	return mo
end

function remote_probe(manufacturer,model)
	if model=="Base" then
		return {
			request="f0 7e 7f 06 01 f7",
			response="f0 7e 00 06 02 00 01 61 01 00 0C ?? ?? ?? ?? ?? f7"
		}
	end
end

function remote_prepare_for_use()
	local retEvents={
		remote.make_midi("F0 00 01 61 0C 06 F7"),
		--send all local off on settings ch 16  191,122,64 
		remote.make_midi("bF 7A 40"),
	}
	init=1
	return retEvents
end