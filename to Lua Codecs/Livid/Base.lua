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
sli_start=4
sli_end=12

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

function remote_init(manufacturer, model)
	if model=="Base" then
		local items={
			{name="Keyboard",input="keyboard"},
			{name="_Scope", output="text"}, --device, e.g. "Thor"
			{name="_Var", output="text"}, --variation, e.g. "Volume" or "Filters"
			{name="Slider 1", input="value", min=0, max=127, output="value"}, --4 (index# in the items table: used for offset for creating Slider names for LCD)
			{name="Slider 2", input="value", min=0, max=127, output="value"}, --5
			{name="Slider 3", input="value", min=0, max=127, output="value"}, --6
			{name="Slider 4", input="value", min=0, max=127, output="value"}, --7
			{name="Slider 5", input="value", min=0, max=127, output="value"}, --8
			{name="Slider 6", input="value", min=0, max=127, output="value"}, --9
			{name="Slider 7", input="value", min=0, max=127, output="value"}, --10
			{name="Slider 8", input="value", min=0, max=127, output="value"}, --11
			{name="Slider 9", input="value", min=0, max=127, output="value"}, --12
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
			{name="Press 32", input="value", min=0, max=127, output="value"}, --44
			{name="Pad 1", input="button", min=0, max=127, output="value"}, --45
			{name="Pad 2", input="button", min=0, max=127, output="value"},
			{name="Pad 3", input="button", min=0, max=127, output="value"},
			{name="Pad 4", input="button", min=0, max=127, output="value"},
			{name="Pad 5", input="button", min=0, max=127, output="value"},
			{name="Pad 6", input="button", min=0, max=127, output="value"},
			{name="Pad 7", input="button", min=0, max=127, output="value"},
			{name="Pad 8", input="button", min=0, max=127, output="value"},
			{name="Pad 9", input="button", min=0, max=127, output="value"},
			{name="Pad 10", input="button", min=0, max=127, output="value"},
			{name="Pad 11", input="button", min=0, max=127, output="value"},
			{name="Pad 12", input="button", min=0, max=127, output="value"},
			{name="Pad 13", input="button", min=0, max=127, output="value"},
			{name="Pad 14", input="button", min=0, max=127, output="value"},
			{name="Pad 15", input="button", min=0, max=127, output="value"},
			{name="Pad 16", input="button", min=0, max=127, output="value"},
			{name="Pad 17", input="button", min=0, max=127, output="value"}, --61
			{name="Pad 18", input="button", min=0, max=127, output="value"},
			{name="Pad 19", input="button", min=0, max=127, output="value"},
			{name="Pad 20", input="button", min=0, max=127, output="value"},
			{name="Pad 21", input="button", min=0, max=127, output="value"},
			{name="Pad 22", input="button", min=0, max=127, output="value"},
			{name="Pad 23", input="button", min=0, max=127, output="value"},
			{name="Pad 24", input="button", min=0, max=127, output="value"},
			{name="Pad 25", input="button", min=0, max=127, output="value"},
			{name="Pad 26", input="button", min=0, max=127, output="value"},
			{name="Pad 27", input="button", min=0, max=127, output="value"},
			{name="Pad 28", input="button", min=0, max=127, output="value"},
			{name="Pad 29", input="button", min=0, max=127, output="value"},
			{name="Pad 30", input="button", min=0, max=127, output="value"},
			{name="Pad 31", input="button", min=0, max=127, output="value"}, 
			{name="Pad 32", input="button", min=0, max=127, output="value"},--76
			{name="Pad 32 Alt", input="value", min=0, max=2, output="value"},--77
			{name="Pad 1 Playing", min=0, max=4, output="value"}, --78
			{name="Pad 2 Playing", min=0, max=4, output="value"},
			{name="Pad 3 Playing", min=0, max=4, output="value"},
			{name="Pad 4 Playing", min=0, max=4, output="value"},
			{name="Pad 5 Playing", min=0, max=4, output="value"},
			{name="Pad 6 Playing", min=0, max=4, output="value"},
			{name="Pad 7 Playing", min=0, max=4, output="value"},
			{name="Pad 8 Playing", min=0, max=4, output="value"},
			{name="Pad 9 Playing", min=0, max=4, output="value"},
			{name="Pad 10 Playing", min=0, max=4, output="value"},
			{name="Pad 11 Playing", min=0, max=4, output="value"},
			{name="Pad 12 Playing", min=0, max=4, output="value"},
			{name="Pad 13 Playing", min=0, max=4, output="value"},
			{name="Pad 14 Playing", min=0, max=4, output="value"},
			{name="Pad 15 Playing", min=0, max=4, output="value"},
			{name="Pad 16 Playing", min=0, max=4, output="value"},
			{name="Pad 17 Playing", min=0, max=4, output="value"}, --94
			{name="Pad 18 Playing", min=0, max=4, output="value"},
			{name="Pad 19 Playing", min=0, max=4, output="value"},
			{name="Pad 20 Playing", min=0, max=4, output="value"},
			{name="Pad 21 Playing", min=0, max=4, output="value"},
			{name="Pad 22 Playing", min=0, max=4, output="value"},
			{name="Pad 23 Playing", min=0, max=4, output="value"},
			{name="Pad 24 Playing", min=0, max=4, output="value"}, --101
			{name="Pad 25 Playing", min=0, max=4, output="value"},
			{name="Pad 26 Playing", min=0, max=4, output="value"},
			{name="Pad 27 Playing", min=0, max=4, output="value"},
			{name="Pad 28 Playing", min=0, max=4, output="value"},
			{name="Pad 29 Playing", min=0, max=4, output="value"},
			{name="Pad 30 Playing", min=0, max=4, output="value"},
			{name="Pad 31 Playing", min=0, max=4, output="value"},
			{name="Pad 32 Playing", min=0, max=4, output="value"},
			{name="Fbtn 1", input="button", min=0, max=40, output="value"},
			{name="Fbtn 2", input="button", min=0, max=40, output="value"}, --111
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
			{name="Shift Tbtn 1", input="button", min=0, max=127, output="value"},--121
			{name="Shift Tbtn 2", input="button", min=0, max=127, output="value"},
			{name="Shift Tbtn 3", input="button", min=0, max=127, output="value"},
			{name="Shift Tbtn 4", input="button", min=0, max=127, output="value"},
			{name="Shift Tbtn 5", input="button", min=0, max=127, output="value"},
			{name="Shift Tbtn 6", input="button", min=0, max=127, output="value"},
			{name="Shift Tbtn 7", input="button", min=0, max=127, output="value"},
			{name="Shift Tbtn 8", input="button", min=0, max=127, output="value"},
			{name="Shift Fbtn 1", input="button", min=0, max=40, output="value"}, 
			{name="Shift Fbtn 2", input="button", min=0, max=40, output="value"},
			{name="Shift Fbtn 3", input="button", min=0, max=40, output="value"},
			{name="Shift Fbtn 4", input="button", min=0, max=40, output="value"},
			{name="Shift Fbtn 5", input="button", min=0, max=40, output="value"},
			{name="Shift Fbtn 6", input="button", min=0, max=40, output="value"},
			{name="Shift Fbtn 7", input="button", min=0, max=40, output="value"},
--			{name="Shift Fbtn 8", input="button", min=0, max=40, output="value"},
			}
		remote.define_items(items)
		
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
			
			--right function buttons
			{pattern="<100x>? 12 <z000>0", name="Fbtn 1"},
			{pattern="<100x>? 13 <z000>0", name="Fbtn 2"},
			{pattern="<100x>? 14 <z000>0", name="Fbtn 3"},
			--{pattern="<100x>? 15 <z000>0", name="Fbtn 4"},
			--{pattern="<100x>? 16 <z000>0", name="Fbtn 5"},
			--{pattern="<100x>? 17 <z000>0", name="Fbtn 6"},
			--{pattern="<100x>? 18 <z000>0", name="Fbtn 7"},
			--{pattern="<100x>? 19 <z000>0", name="Fbtn 8"},
			
			--top touch buttons
			{pattern="<100x>? 6E <z000>0", name="Shift Tbtn 1"},
			{pattern="<100x>? 6F <z000>0", name="Shift Tbtn 2"},
			{pattern="<100x>? 70 <z000>0", name="Shift Tbtn 3"},
			{pattern="<100x>? 71 <z000>0", name="Shift Tbtn 4"},
			{pattern="<100x>? 72 <z000>0", name="Shift Tbtn 5"},
			{pattern="<100x>? 73 <z000>0", name="Shift Tbtn 6"},
			{pattern="<100x>? 74 <z000>0", name="Shift Tbtn 7"},
--			{pattern="<100x>? 75 <z000>0", name="Shift Tbtn 8"},
			
			--right function buttons
			{pattern="<100x>? 76 <z000>0", name="Shift Fbtn 1"},
			{pattern="<100x>? 77 <z000>0", name="Shift Fbtn 2"},
			{pattern="<100x>? 78 <z000>0", name="Shift Fbtn 3"},
			--{pattern="<100x>? 79 <z000>0", name="Shift Fbtn 4"},
			--{pattern="<100x>? 7A <z000>0", name="Shift Fbtn 5"},
			--{pattern="<100x>? 7B <z000>0", name="Shift Fbtn 6"},
			--{pattern="<100x>? 7C <z000>0", name="Shift Fbtn 7"},
			--{pattern="<100x>? 7D <z000>0", name="Shift Fbtn 8"},
			
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
			{pattern="b0 43 xx", name="Press 32"},
			
      {pattern="<100x>? 3C <z000>0", name="Pad 1"},
			{pattern="<100x>? 3D <z000>0", name="Pad 2"},
			{pattern="<100x>? 3E <z000>0", name="Pad 3"},
			{pattern="<100x>? 3F <z000>0", name="Pad 4"},
			{pattern="<100x>? 40 <z000>0", name="Pad 5"},
			{pattern="<100x>? 41 <z000>0", name="Pad 6"},
			{pattern="<100x>? 42 <z000>0", name="Pad 7"},
			{pattern="<100x>? 43 <z000>0", name="Pad 8"},
			{pattern="<100x>? 34 <z000>0", name="Pad 9"},
			{pattern="<100x>? 35 <z000>0", name="Pad 10"},
			{pattern="<100x>? 36 <z000>0", name="Pad 11"},
			{pattern="<100x>? 37 <z000>0", name="Pad 12"},
			{pattern="<100x>? 38 <z000>0", name="Pad 13"},
			{pattern="<100x>? 39 <z000>0", name="Pad 14"},
			{pattern="<100x>? 3A <z000>0", name="Pad 15"},
			{pattern="<100x>? 3B <z000>0", name="Pad 16"},
			
			{pattern="<100x>? 2C <z000>0", name="Pad 17"},
			{pattern="<100x>? 2D <z000>0", name="Pad 18"},
			{pattern="<100x>? 2E <z000>0", name="Pad 19"},
			{pattern="<100x>? 2F <z000>0", name="Pad 20"},
			{pattern="<100x>? 30 <z000>0", name="Pad 21"},
			{pattern="<100x>? 31 <z000>0", name="Pad 22"},
			{pattern="<100x>? 32 <z000>0", name="Pad 23"},
			{pattern="<100x>? 33 <z000>0", name="Pad 24"},
			{pattern="<100x>? 24 <z000>0", name="Pad 25"},
			{pattern="<100x>? 25 <z000>0", name="Pad 26"},
			{pattern="<100x>? 26 <z000>0", name="Pad 27"},
			{pattern="<100x>? 27 <z000>0", name="Pad 28"},
			{pattern="<100x>? 28 <z000>0", name="Pad 29"},
			{pattern="<100x>? 29 <z000>0", name="Pad 30"},
			{pattern="<100x>? 2A <z000>0", name="Pad 31"},
			{pattern="<100x>? 2B <z000>0", name="Pad 32"}
			--{pattern="<100x>? 2B <z000>0", name="Pad 32 Alt"}
		}
		remote.define_auto_inputs(inputs)
		
		local outputs={
			--top touch buttons
			{pattern="90 0A xx", name="Tbtn 1", x="1+(126*value)"},--white/green
			{pattern="90 0B xx", name="Tbtn 2", x="1+(31*value)"}, --white/blue
			{pattern="90 0C xx", name="Tbtn 3", x="4+(28*value)"}, --cyan/blue
			{pattern="90 0D xx", name="Tbtn 4", x="8+(8*value)"},--,mag/red
			{pattern="90 0E xx", name="Tbtn 5", x="64*value"}, --yel
			{pattern="90 0F xx", name="Tbtn 6", x="64*value"}, --yel
			{pattern="90 10 xx", name="Tbtn 7", x="64*value"}, --yel
			{pattern="90 11 xx", name="Tbtn 8", x="64*value"}, --yel
			
			{pattern="90 6E xx", name="Shift Tbtn 1", x="1+(126*value)"},--white/green
			{pattern="90 6F xx", name="Shift Tbtn 2", x="1+(31*value)"}, --white/blue
			{pattern="90 70 xx", name="Shift Tbtn 3", x="4+(28*value)"}, --cyan/blue
			{pattern="90 71 xx", name="Shift Tbtn 4", x="8+(8*value)"},--,mag/red
			{pattern="90 72 xx", name="Shift Tbtn 5", x="64*value"}, --yel
			{pattern="90 73 xx", name="Shift Tbtn 6", x="64*value"}, --yel
			{pattern="90 74 xx", name="Shift Tbtn 7", x="64*value"}, --yel
			{pattern="90 75 xx", name="Shift Tbtn 8", x="64*value"}, --yel
			
--			{pattern="90 76 xx", name="Shift Fbtn 1"},
--			{pattern="90 77 xx", name="Shift Fbtn 2"},
--			{pattern="90 78 xx", name="Shift Fbtn 3"},
			--{pattern="90 79 xx", name="Shift Fbtn 4"},
			--{pattern="90 7A xx", name="Shift Fbtn 5"},
			--{pattern="90 7B xx", name="Shift Fbtn 6"},
			--{pattern="90 7C xx", name="Shift Fbtn 7"},
			--{pattern="90 7D xx", name="Shift Fbtn 8"},
			
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
			{pattern="b0 43 xx", name="Press 32"},
			--
			 {pattern="90 3C xx", name="Pad 1 Playing", x="map_redrum_led(value)"},
			 {pattern="90 3D xx", name="Pad 2 Playing", x="map_redrum_led(value)"},
			 {pattern="90 3E xx", name="Pad 3 Playing", x="map_redrum_led(value)"},
			 {pattern="90 3F xx", name="Pad 4 Playing", x="map_redrum_led(value)"},
			 {pattern="90 40 xx", name="Pad 5 Playing", x="map_redrum_led(value)"},
			 {pattern="90 41 xx", name="Pad 6 Playing", x="map_redrum_led(value)"},
			 {pattern="90 42 xx", name="Pad 7 Playing", x="map_redrum_led(value)"},
			 {pattern="90 43 xx", name="Pad 8 Playing", x="map_redrum_led(value)"},
			 {pattern="90 34 xx", name="Pad 9 Playing", x="map_redrum_led(value)"},
			{pattern="90 35 xx", name="Pad 10 Playing", x="map_redrum_led(value)"},
			{pattern="90 36 xx", name="Pad 11 Playing", x="map_redrum_led(value)"},
			{pattern="90 37 xx", name="Pad 12 Playing", x="map_redrum_led(value)"},
			{pattern="90 38 xx", name="Pad 13 Playing", x="map_redrum_led(value)"},
			{pattern="90 39 xx", name="Pad 14 Playing", x="map_redrum_led(value)"},
			{pattern="90 3A xx", name="Pad 15 Playing", x="map_redrum_led(value)"},
			{pattern="90 3B xx", name="Pad 16 Playing", x="map_redrum_led(value)"},
			
--			{pattern="90 2C xx", name="Pad 17 Playing", x="map_redrum_led(value)"},
--			{pattern="90 2D xx", name="Pad 18 Playing", x="map_redrum_led(value)"},
--			{pattern="90 2E xx", name="Pad 19 Playing", x="map_redrum_led(value)"},
--			{pattern="90 2F xx", name="Pad 20 Playing", x="map_redrum_led(value)"},
--			{pattern="90 30 xx", name="Pad 21 Playing", x="map_redrum_led(value)"},
--			{pattern="90 31 xx", name="Pad 22 Playing", x="map_redrum_led(value)"},
--			{pattern="90 32 xx", name="Pad 23 Playing", x="map_redrum_led(value)"},
--			{pattern="90 33 xx", name="Pad 24 Playing", x="map_redrum_led(value)"},
			
			
--			{pattern="90 2C 0<0x00>", name="Pad 17"},--cyan
--			{pattern="90 2D 0<0x00>", name="Pad 18"},--cyan
--			{pattern="90 2E 0<0x00>", name="Pad 19"},--cyan
--			{pattern="90 2F 0<0x00>", name="Pad 20"},--cyan
--			{pattern="90 30 0<0x00>", name="Pad 21"},--cyan
--			{pattern="90 31 0<0x00>", name="Pad 22"},--cyan
--			{pattern="90 32 0<0x00>", name="Pad 23"},--cyan
--			{pattern="90 33 0<0x00>", name="Pad 24"},--cyan
--			
			{pattern="90 24 <000x>0", name="Pad 25"},--red
			{pattern="90 25 <000x>0", name="Pad 26"},--red
			{pattern="90 26 <000x>0", name="Pad 27"},--red
			{pattern="90 27 <000x>0", name="Pad 28"},--red
			{pattern="90 28 <000x>0", name="Pad 29"},--red
			{pattern="90 29 <000x>0", name="Pad 30"},--red
			{pattern="90 2A xx", name="Pad 31", x="127*value"},--gn
			{pattern="90 2B <000x>0", name="Pad 32"},--red
			--{pattern="90 2B xx", name="Pad 32 Alt", x="127*value"} --grn
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

--FOR REDRUM BLINKING LIGHTS
g_step_value = { 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0 }
g_step_is_playing = { 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0 }
-- FL: Add state for the latest LED/Pad MIDI messages sent
g_last_led_output = { 100,100,100,100, 100,100,100,100, 100,100,100,100, 100,100,100,100, 100,100,100,100, 100,100,100,100 }

-- FL: Assign to these the index to the first the corresponding items according
-- to the definition list in remote_init. (Or assign them when defining the items, depending on how you do that.)
k_first_step_item = 61
k_first_step_playing_item = 94
k_accent = 77
g_Tbtn_firstitem = 121
g_accent = 0
g_last_accent = 0
g_accent_dn = false
g_accent_count = 0

function remote_process_midi(event)
	ret = remote.match_midi("<100x>? yy zz",event) --find a note on or off
	if(ret~=nil) then
		tran_btn = ret.z
		local notein = ret.y
		local valin = ret.x   
		local shiftbtn = remote.match_midi("<100x>? 19 zz",event) --find F8
		local accent_pad = remote.match_midi("<100x>? 2B zz",event) --find Pad 32
		--fbtn note ons are velocity 64----------
		scale_up = remote.match_midi("9? 15 40",event) --find F4
		scale_dn = remote.match_midi("9? 16 40",event) --find F5
		tran_up = remote.match_midi("9? 17 40",event) --find F6
		tran_dn = remote.match_midi("9? 18 40",event) --find F7
		
		if(accent_pad) then
      if(accent_pad.z>10) then		  
        g_accent_dn = true
        g_accent_count = modulo(g_accent_count+1,3)
        local msg={ time_stamp = event.time_stamp, item=k_accent, value = g_accent_count, note = "2B",velocity = accent_pad.z }
				remote.handle_input(msg)
				g_delivered_note = noteout
				return true
      else
        return false
      end
		end

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
		if(scale_up) then
			scale_int = modulo(scale_int+1,8)
			scalename = scalenames[1+scale_int]
			scale = scales[scalename]
			global_scale = scale_int
			scale_from_parse = false
			--remote.trace("scale up "..scalename)
		end
		if(scale_dn) then
			scale_int = modulo(scale_int-1,8) --only use the first 8 scales
			scalename = scalenames[1+scale_int]
			scale = scales[scalename]
			global_scale = scale_int
			scale_from_parse = false
			--remote.trace("scale dn "..scalename)
		end
		if(drum_tog) then
			drum_mode = 1-drum_mode
		end
		--if(tran_rst) then
		--	transpose=0
		--end
		--now handle the pads)
		if (notein>35 and notein<68) and (noscaleneeded==false) then
			---if the pads have transposed, then we need to turn off the last note----------------------
			if(transpose_changed == true) then
				local prev_off={ time_stamp = event.time_stamp, item=1, value = valin, note = g_delivered_note,velocity = 0 }
				remote.handle_input(prev_off)
				transpose_changed = false
			end
			local padid = notein-36
			local scale_len = table.getn(scale)
			local ind = 1+modulo(padid,scale_len)  --modulo using the operator % gave me trouble in reason, so I wrote a custom fcn
			local oct = math.floor(padid/scale_len)
			local addnote = scale[ind]
			local noteout = root+transpose+(12*oct)+addnote
			if (noteout<127 or noteout>0) then
				local msg={ time_stamp = event.time_stamp, item=1, value = valin, note = noteout,velocity = ret.z }
				remote.handle_input(msg)
				g_delivered_note = noteout
				return true
      end
		elseif (notein<25 and shift==1) then --f7 buttons and top buttons
      local noteout = notein + 100 --offset note by 100
      itemno = g_Tbtn_firstitem+(notein-10) --Tbtn starts at item 121 in the items index, 10 is the note number of Tbtn1. wonky way to get item #
      if(ret.z>0) then
        local msg={ time_stamp = event.time_stamp, item=itemno, value = valin, note = noteout,velocity = ret.z }        
        remote.handle_input(msg)
      end
      return true
		else
			return false
		end
	end
	return false
end

colors = {"02","04","08","10","20","40","7F"}

noscaleneeded = false
lcd_events={}
function remote_deliver_midi(maxbytes,port)
	if(port==1) then
		local base_events={}
		local upevent={}
		local dnevent={}
		local padevent={}
		local ltevent={}
		local rtevent={}
		local shevent={}
		local iskong = false
		local isvarchange = false
		local istracktext = false
		local do_update_pads = 0
	
		--if we have pressed shift or there's a change in transpose, we need to show that in the seven seg display on Base:----------------------------------------
		if (g_delivered_shift~=shift or g_delivered_transpose~=transpose)  then
			local shcolors = {"40","7F"}
			shevent = remote.make_midi("90 19 "..shcolors[shift+1])
			if(tran_btn~=nil) then
				if shift==1 or tran_btn>0 then
					--show transpose in 7seg
					local xpose = string.format("%02i",math.abs(transpose) )
					local c_one = string.format("%02x", string.sub(xpose,1,1) )
					local c_two = string.format("%02x", string.sub(xpose,2,2) )
					ltevent = remote.make_midi("b0 22 "..c_one)
					table.insert(base_events,ltevent)
					rtevent = remote.make_midi("b0 23 "..c_two)
					table.insert(base_events,rtevent)
					local transpose_event = make_lcd_midi_message("/Reason/0/Base/0/display/3/display/ "..transpose)
					table.insert(lcd_events,transpose_event)
				else
					--return to scale
					local scale_abrv = scaleabrvs[scalename]
					local c_one = string.sub(scale_abrv,1,1)
					local c_two = string.sub(scale_abrv,2,2)
					ltevent = remote.make_midi("b0 22 "..sevseg[c_one])
					table.insert(base_events,ltevent)
					rtevent = remote.make_midi("b0 23 "..sevseg[c_two])
					table.insert(base_events,rtevent)
					local scalename_event = make_lcd_midi_message("/Reason/0/Base/0/display/2/display/ "..scalename)
					table.insert(lcd_events,scalename_event)
				end
			end
		
			table.insert(base_events,shevent)
			g_delivered_shift = shift
		end
	
		--if scale changes, we update the LCD--------------------------------------------------------------------------------
		if ( (g_delivered_scale~=scale_int or g_delivered_transpose~=transpose) and shift~=1 and tran_btn==0) then
			local scale_abrv = scaleabrvs[scalename]
			local c_one = string.sub(scale_abrv,1,1)
			local c_two = string.sub(scale_abrv,2,2)
			ltevent = remote.make_midi("b0 22 "..sevseg[c_one])
			table.insert(base_events,ltevent)
			rtevent = remote.make_midi("b0 23 "..sevseg[c_two])
			table.insert(base_events,rtevent)
			g_delivered_scale = scale_int
			local scalename_event = make_lcd_midi_message("/Reason/0/Base/0/display/2/display/ "..scalename)
			table.insert(lcd_events,scalename_event)
			if(noscaleneeded == false) then
  			do_update_pads = 1
  		end
			--remote.trace(scalename)
		end
	
		--if transpose changes, we transpose--------------------------------------------------------------------------------
		if g_delivered_transpose~=transpose then
			local color_len = table.getn(colors)
			local color_ind=1 + (modulo( math.floor(math.abs(transpose)/12),color_len) ) --change color every octave
			local color = colors[color_ind]
			if transpose>0 then
				upevent = remote.make_midi("90 17 "..color)
				table.insert(base_events,upevent)
				dnevent = remote.make_midi("90 18 00")
				table.insert(base_events,dnevent)
			elseif transpose<0 then
				upevent = remote.make_midi("90 17 00")
				table.insert(base_events,upevent)
				dnevent = remote.make_midi("90 18 "..color)
				table.insert(base_events,dnevent)
			elseif transpose==0 then
				upevent = remote.make_midi("90 17 00")
				table.insert(base_events,upevent)
				dnevent = remote.make_midi("90 18 00")
				table.insert(base_events,dnevent)
			end	
			g_delivered_transpose = transpose
			do_update_pads = 1
		end
		

		--if vartext from _Var item in remotemap has changed	-----------------
		if g_vartext_prev~=g_vartext then
			--Let the LCD know what the variation is
			local vartext = remote.get_item_text_value(g_var_item_index)
			local var_event = make_lcd_midi_message("/Reason/0/Base/0/display/1/display/ "..vartext)
			table.insert(lcd_events,var_event)
			g_vartext_prev = g_vartext
			isvarchange = true
		end
			
		--lcd event and text parsing for scale detection from text in track name----------------------------------------
		local new_text = g_lcd_state
		if g_delivered_lcd_state~=new_text then
			g_delivered_lcd_state = new_text
			local use_global_scale = false
			istracktext = string.find(new_text,"Track") == 1 --The word "track" is the first word
			if(istracktext==false) then
				if(g_lcd_index>=sli_start and g_lcd_index<=sli_end) then --if it's a Slider
					--we'll make the parameter/value/unit list into two arrays for our LCD, then send a long string to LCD
					update_slider(g_lcd_index)	
				end
			end
			
			--parse the text to see if there's any scale or transpose info----------------------------------------
			if istracktext==true then			
				--if scopetext from _Scope item has changed	
				if g_scopetext_prev~=g_scopetext then
					--Let the LCD know what the device is
					local const_event = make_lcd_midi_message("/Reason/0/Base/0/display/4/display/ "..g_scopetext)
					table.insert(lcd_events,const_event)
					--detect Redrum
					if(g_scopetext=="Redrum") then
					  noscaleneeded = true	
            do_update_pads = 0
            g_clearpads = 1
					else
					  if(noscaleneeded == true) then					    
              do_update_pads = 1
            end
					  noscaleneeded = false
					end
					--if we've landed on a Kong, _Scope reports "KONG" and we change to drum scale
					if(g_scopetext=="KONG" and scale_int~=7) then
						if scale_from_parse==false then
							global_scale = scale_int
						end
						set_scale(7)
						iskong = true
					else
						use_global_scale = true
					end
					g_scopetext_prev = g_scopetext
				end
			
				--send LCD the Track name text----------------------------------------------------------------
				local track_event = make_lcd_midi_message("/Reason/0/Base/0/display/0/display/ "..new_text)
				table.insert(lcd_events,track_event)
				--see if there's a scale in the track text
				local result = ""
				scsearch = string.find(new_text, 'scale')
				eqsearch = string.find(new_text, '=%d') --look for an index
				if(scsearch) then
					if(eqsearch==nil) then --if we didn't find a number, search for a word after =
						eqsearch = string.find(new_text, '=%w')			--from the first char after '=' ...
						spsearch = string.find(new_text, '%s',eqsearch) or -1 --...to the next space (or end of line) is a 'word'
						result = string.sub(new_text,eqsearch+1,spsearch)
						local sindex=0;
						for i,v in pairs(scalenames) do  --find the index that the scalename is at
							if v == result then
								sindex = i-1
								break
							end
						end
						set_scale(sindex)
						--local scalename_event = make_lcd_midi_message("SCALE_TEXT "..result.." # "..sindex)
						--table.insert(lcd_events,scalename_event)
					else --otherwise it's an index
						result = string.sub(new_text,eqsearch+1,eqsearch+2)
						set_scale(result)
						--local scaleint_event = make_lcd_midi_message("SCALE_INT "..result.." # "..sindex)
						--table.insert(lcd_events,scaleint_event)
					end
					use_global_scale = false
					scale_from_parse = true
				else
					scale_from_parse = false
					use_global_scale = true
				end
				--send scale name to LCD----------------------------------------
				local scalename_event = make_lcd_midi_message("/Reason/0/Base/0/display/2/display/ "..scalename)
				table.insert(lcd_events,scalename_event)
		
				---If it's not a Kong, and there's no scale in the Track name, set to global_scale
				if use_global_scale and iskong==false then
					set_scale(global_scale)
					--local prev_event = make_lcd_midi_message("PREV SCALE "..global_scale.." "..g_delivered_scale)
					--table.insert(lcd_events,prev_event)
				end

				--see if there's a transpose in the track text----------------------------------------
				local transp = ""
				tsearch = string.find(new_text, 'trans') or string.find(new_text, 'transpose')
				eqtsearch = string.find(new_text, '=%d',tsearch) --look for a value
				if(tsearch and eqtsearch) then
					--global_transp = transpose
					trans_parsed = tonumber( string.sub(new_text,eqtsearch+1,eqtsearch+2) )
					if(transpose~=trans_parsed) then
						transpose = trans_parsed
						transpose_changed = true
					end
				else
					if(transpose~=global_transp) then
						transpose = global_transp
						transpose_changed = true
					end
				end
				--send LCD transpose value
				if(transpose_changed) then
					local transpose_event = make_lcd_midi_message("/Reason/0/Base/0/display/3/display/ "..transpose)
					table.insert(lcd_events,transpose_event)
				end
			end
			--done looking at "Track" labels------------------------------------------------------
		end
	
		if istracktext==true or isvarchange==true then
		--refresh LCD with all the parameters and values for the sliders when a new track is selected----------------------------------------
			for i = sli_start,sli_end do
				update_slider(i)
			end
		end
		-- color the pads if scale or transpose changed----------------------------------------
		if(do_update_pads==1) then
      table.insert(lcd_events,upd_event)
			if(scalename~='DrumPad') then
				for i=1,32,1 do
					local padid = i-1
					local scale_len = table.getn(scale)
					local oct = math.floor(padid/scale_len)
					local addnote = scale[1+modulo(i-1,scale_len)]
					local outnote = root+transpose+(12*oct)+addnote --note that gets played by synth
					local outnorm = modulo(outnote,12) --normalized to 0-11 range
					local padnum = string.format("%x",i+35) --note# that the controller led responds to
					local keycolors = {"02","40","20"} --white,yellow,blue
					local whites = {2, 4, 5, 7, 9, 11}
					--remote.trace("\n i: "..i.." padid: "..padid.." outnorm "..outnorm.." outnote "..outnote.." xpose "..transpose.." addnote "..addnote)
					--if outnorm is 0 , make it yellow. if it's a white key, make it white, else blue
					if outnorm==0 then
						padevent[i]=remote.make_midi("90 "..padnum.." "..keycolors[2])
						table.insert(base_events,padevent[i])
					elseif exists(outnorm, whites) then
						padevent[i]=remote.make_midi("90 "..padnum.." "..keycolors[1])
						table.insert(base_events,padevent[i])
					else
						padevent[i]=remote.make_midi("90 "..padnum.." "..keycolors[3])
						table.insert(base_events,padevent[i])
					end
				end
			else
				--do drumpad color scheme
				for i=0,31,1 do
					local padnum = string.format("%x",i+36) --note# that the controller led responds to
					local right = modulo(math.floor(i/4),2)
					--remote.trace("\nside "..right.." div "..math.floor(i/4).." i "..i)
					if(right==1) then
						padevent[i]=remote.make_midi("90 "..padnum.." 20")
						table.insert(base_events,padevent[i])
					else
						padevent[i]=remote.make_midi("90 "..padnum.." 40")
						table.insert(base_events,padevent[i])
					end
				end
			end
		end
		
    if(g_scopetext=="Redrum") then
		  --local padnotes = {60,61,62,63,64,65,66,67, 52,53,54,55,56,57,58,59, 44,45,46,47,48,49,50,51}
      local padnotes = {44,45,46,47,48,49,50,51}
      --if we've just landed on Redrum, we need to clear out the 3rd row of pads, otherwise they maintain LEDs from pvs scope
      if g_clearpads==1 then
        for pad=1,8 do
          local padnum = string.format("%02x",padnotes[pad])
          local event = remote.make_midi("90 "..padnum.." 00")
          table.insert(base_events,event)
        end  
        g_clearpads=0
      end
      --flash drums playing on selected pads
      for pad=1,8 do
        local led_value = 0
        led_value = make_led_value(pad,4,32) --cyan/blue for drum selects
        local last_value = g_last_led_output[pad]
        if led_value ~= last_value then
          -- send note
          local padnum = string.format("%02x",padnotes[pad])
          local event = remote.make_midi("90 "..padnum.." xx", { x=led_value })
          table.insert(base_events,event)
          -- FL: Change "sent", set last value
          g_last_led_output[pad] = led_value
        end
      end
      --Pad 32 controls the Accent 3way.
      local acc_colors = {1,64,16} --wh,yel,red
      if g_last_accent ~= g_accent then
        g_accent_dn = false
        local acccolor = acc_colors[(g_accent+1)]
        local accnote = string.format("%02x",43)
        local event = remote.make_midi("90 "..accnote.." xx", { x=acccolor })
        table.insert(base_events,event)
        g_last_accent = g_accent
      end
    end
    
    
		--initialize colors:
		if init==1 then
			local firstcolors={
				--set 7 seg display for major scale MA:
				remote.make_midi("b0 22 16"),
				remote.make_midi("b0 23 16"),
				--function btns w,w,off,c,c,b,b,y
				remote.make_midi("90 1A 02"),
				remote.make_midi("90 1B 02"),
				remote.make_midi("90 1C 00"),
				remote.make_midi("90 1D 04"),
				remote.make_midi("90 1E 04"),
				remote.make_midi("90 1F 20"),
				remote.make_midi("90 20 20"),
				remote.make_midi("90 21 40"),
				
				remote.make_midi("90 12 02"),
				remote.make_midi("90 13 02"),
				remote.make_midi("90 14 00"),
				remote.make_midi("90 15 04"),
				remote.make_midi("90 16 04"),
				remote.make_midi("90 17 20"),
				remote.make_midi("90 18 20"),
				remote.make_midi("90 19 40"),
				--top rt runner leds for variations w,w,w
				remote.make_midi("90 48 02"),
				remote.make_midi("90 49 02"),
				remote.make_midi("90 4A 02"),
				remote.make_midi("90 4B 02"),
				--initialize pads
			
			}
      local first_len = table.getn(firstcolors)
      for i=1,first_len,1 do
        table.insert(base_events,firstcolors[i])
      end	
			if noscaleneeded==false then
        --notes 36 to 67 for pads
        local padevent = {}
        for i=1,32,1 do
          local padnum = string.format("%x",i+35)
          local modd = modulo(i-1,8)
          local keycolor="02"
          if(modd==0 or modd==7) then
            keycolor="40"
          end
          padevent[i]=remote.make_midi("90 "..padnum.." "..keycolor)
          table.insert(base_events,padevent[i])
					local transpose_event = make_lcd_midi_message("/INIT "..transpose)
					table.insert(lcd_events,transpose_event)
        end
			end
			init=0
		end
		
		return base_events --send out a bunch of MIDI to the Base
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

  -- FL: Collect all changed states for redrum "drum playing" - this part blinks the 3rd row drum selection pads
	for k,item_index in ipairs(changed_items) do
    if item_index == k_accent then
      g_accent = remote.get_item_value(item_index)
    end

		if item_index >= k_first_step_item and item_index < k_first_step_item+8 then
			local step_index = item_index - k_first_step_item + 1
			g_step_value[step_index] = remote.get_item_value(item_index)
			-- FL: Add this if the item can be disabled
			-- g_step_is_disabled[step_index] = remote.is_item_enabled(item_index)

		elseif item_index >= k_first_step_playing_item and item_index < k_first_step_playing_item+8 then
			local step_index = item_index - k_first_step_playing_item + 1
			g_step_is_playing[step_index] = remote.get_item_value(item_index)
		end
	end

end

-- FL: Helper function that combines the "Pad n" and "Pad n Playing" outputs
function make_led_value(index,a,b)
  local sw = (g_step_is_playing[index]>0) and 1 or 0 --range of value is 0-4, so we convert to 0-1
	local combined_value = g_step_value[index]*a + sw*b
	return combined_value
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
	if model=="Base" then
		return {
			request="f0 7e 7f 06 01 f7",
			response="f0 7e 00 06 02 00 01 61 01 00 0C ?? ?? ?? ?? ?? f7"
		}
	end
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

function remote_prepare_for_use()
	g_delivered_lcd_state = string.format("%-16.16s","Livid Base")
	local retEvents={
		--remote.make_midi("F0 00 01 61 0C 06 F7"), --11h = (17), product ID for Base
		--default settings for Base
		remote.make_midi("F0 00 01 61 0C 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 F7"),
		remote.make_midi("F0 00 01 61 0C 08 38 F7"),
		remote.make_midi("F0 00 01 61 0C 0A 24 00 25 00 26 00 27 00 28 00 29 00 2A 00 2B 00 2C 00 2D 00 2E 00 2F 00 30 00 31 00 32 00 33 00 34 00 35 00 36 00 37 00 38 00 39 00 3A 00 3B 00 3C 00 3D 00 3E 00 3F 00 40 00 41 00 42 00 43 00 F7"),
		remote.make_midi("F0 00 01 61 0C 0B 12 00 13 00 14 00 15 00 16 00 17 00 18 00 19 00 0A 00 0B 00 0C 00 0D 00 0E 00 0F 00 10 00 11 00 F7"),
		remote.make_midi("F0 00 01 61 0C 0C 0F F7"),
		remote.make_midi("F0 00 01 61 0C 0F 00 F7"),
		remote.make_midi("F0 00 01 61 0C 16 00 F7"),
		remote.make_midi("F0 00 01 61 0C 17 00 01 02 03 04 05 06 F7"),
		remote.make_midi("F0 00 01 61 0C 1A 00 F7"),
		remote.make_midi("F0 00 01 61 0C 1F 06 00 00 00 06 00 00 00 06 00 00 00 06 00 00 00 06 00 00 00 06 00 00 00 06 00 00 00 06 00 00 00 02 00 00 00 F7"),
		remote.make_midi("F0 00 01 61 0C 22 00 07 06 05 01 04 03 02 F7"),
		remote.make_midi("F0 00 01 61 0C 23 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 30 31 32 33 34 35 36 37 20 21 22 23 24 25 26 27 28 29 2A 2B 2C 2D 2E 2F 7F 7F 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F 10 11 12 13 14 15 16 17 18 19 1A 1B 1C 1D 1E 1F 38 39 3A 3B 3C 3D 3E 3F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F F7"),
		remote.make_midi("F0 00 01 61 0C 24 7F 42 43 44 45 46 47 48 49 4A 4B 4C 4D 4E 4F 50 51 52 53 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 40 41 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F F7"),
		remote.make_midi("F0 00 01 61 0C 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 F7"),
		remote.make_midi("F0 00 01 61 0C 29 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 F7"),
		remote.make_midi("F0 00 01 61 0C 31 24 25 26 27 28 29 2A 2B 2C 2D 2E 2F 30 31 32 33 34 35 36 37 38 39 3A 3B 3C 3D 3E 3F 40 41 42 43 F7"),
		remote.make_midi("F0 00 01 61 0C 32 01 01 01 01 01 01 01 01 01 01 01 F7"),
		remote.make_midi("F0 00 01 61 0C 36 00 00 00 00 F7"),
		remote.make_midi("F0 00 01 61 0C 38 7F 7F 7F 7F 7F 7F 7F F7"),
		remote.make_midi("F0 00 01 61 0C 39 01 02 03 04 05 06 07 08 09 F7"),
		remote.make_midi("F0 00 01 61 0C 3A 01 00 02 00 03 00 04 00 05 00 06 00 07 00 08 00 09 00 F7"),
		remote.make_midi("F0 00 01 61 0C 3B 00 00 00 00 00 00 00 00 00 F7"),
		remote.make_midi("F0 00 01 61 0C 3C 0C 0C 0C 0C 0C 0C 0C 0C 0C F7"),
		remote.make_midi("F0 00 01 61 0C 3D 06 06 06 06 06 06 06 06 02 F7"),
		remote.make_midi("F0 00 01 61 0C 3E 00 F7"),
		remote.make_midi("F0 00 01 61 0C 40 00 00 00 00 00 00 00 00 F7"),
		remote.make_midi("F0 00 01 61 0C 42 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 F7"),
		remote.make_midi("F0 00 01 61 0C 44 00 F7"),
		--send all local off on settings ch 16  191,122,64 
		remote.make_midi("bF 7A 40")
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
		p_path = "/Reason/0/Base/0/Fader/"..(item-sli_start).."/lcd_name " -- "sli_start" (-4) because the sliders start at index 3 in table items, but we start our OSC Slider names at 0.
		v_path = "/Reason/0/Base/0/Fader/"..(item-sli_start).."/lcd_value "
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
