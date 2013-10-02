ReasonRemoteScripts
===================

Remote Scripts for Propellerheads Reason audio software and Livid MIDI Controllers

Installation
------------
Make a backup of your current "Livid" Codec and Maps folders for Reason Remote. These folders are in:
Mac OSX
<hard drive>:/Library/Application Support/Propellerhead Software/Remote/Codecs/Lua Codecs
<hard drive>:/Library/Application Support/Propellerhead Software/Remote/Maps
Windows
C:\ProgramData\Propellerhead Software\Remote\Codecs\Lua Codecs
C:\ProgramData\Propellerhead Software\Remote\Maps
An easy way to back them up is to simply make a zip archive of the folders.
Then, install the "Livid" folder in "to Lua Codecs" and "Livid" folder in "to Maps" to replace the current versions.
When you start Reason, you can open the Control Surfaces preference panel and Auto-Detect for the Base controller.

----
In the "Helper" folder, the "LCDproto.maxpat" is a file for Max 6 (and Max 6 runtime) that can use the optional 2nd port of the Base Remote script to display the current assignments and values for the Base sliders. 
It also shows the current track , device, variation, transpose/key, and scale. 
For Windows, you'll need to install a loopback or virtual midi cable app like MIDI Yoke.
Just open the patch in Max or Max Runtime (http://www.cycling74.com), select the input MIDI port that is the same as the port you selected as the second output port in Reason's Control Surfaces preferences.
