                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


http://www.thingiverse.com/thing:514582
Split X-Ends for Prusa i3 - fully parametrized by enif is licensed under the Creative Commons - Attribution - Share Alike license.
http://creativecommons.org/licenses/by-sa/3.0/

# Summary

I like to use X-ends which have these flexing tubes to hold the LM8UU linear bearings (I've used those from the [Prusa i3 Rework](http://www.thingiverse.com/thing:119616)), since they don't require any screws or cable binders . But these tubes must be printed vertically to be strong enough for flexing,so usually the whole X-ends are printed vertically,  which, unfortunately, causes the remaining part of the X-ends to be rather weak and also rather difficult to print without warping or even cracking.  So in this project, I tried to overcome the dilemma of the print orientation, by splitting the i3 X-ends into two firmly interlocking parts where each of which is printed in the position of optimal printing quality.    
  
   
   
The result is this redesign of the X-ends for the Prusa i3, including motor end, idler end with belt tensioner and endstop.  
  
   
  
The X-ends are split into one Z-axis related  part printed vertically and a second  X-axis relating part which rotated 90 degrees to the back for printing.  This way, each part is printed in its optimal position, resulting in improved object strength and reduced printing difficulties. The two part are joined by means of a trapezoidal slide and are locked firmly together once the upped X-rod is inserted.  
  
  
  
The idler bearing is mounted on a configurable fork which also acts as a belt tensioner, being attached to the left X-end by means of an adjuster bolt.  Idler forks for the following bearing are predefined:   
   
   
   
- 2x623ZZ  
- 2x604ZZ  
- 2x624Z  
- 2x625ZZ  
- 1x608ZZ  
   
The motor X-end contains has the option for integrating a Z-endstop adjustment screw.  
    
    
   
Finally, the X-endstop holder is implemented a separate object which slides on both X-rods and is maintained firmly in its position by means of two locking screws.  
   
   
  
The provided SCAD file is fully parametrized and commented.  So if required, you can easily modify it and adapt it to your needs.  Ready-to-print STL files are also provided, including idler forks for some of the more popular  ball bearing types.  Unless noted otherwise, the provided STL files are based on the standard 45mm X-rod distance and M5 threaded Z-rods.
   
   
*Update 2014-10-25:  If you are interested in the Z-endstop assembly that can be seen on one of the photos, I have now added the SCAD and STL files for this to my [Z-Mounts with Increased Y-Gap](http://www.thingiverse.com/thing:341450).*  
   
   
   
   
*Update 2014-10-27:  For those who intend to tension their X-belt so much that they fear that it might pull on the Z-rods, I have now added a version of the idler X-end which has provision for 2 locking screws which firmly attach the X-end to the X-rods. I don't need those lock screws though, since I have the X-rod holes rather tight and also don't tension the belt that strongly.  At the same time, I have also slightly increased the wall strengths of the objects, as to be less sensitive to the actual printing parameters.*

*Update 2016-02-21:  In addition to the parts using the standard 45mm distance, I  have now also uploaded the STLs for the larger 60mm distance between the X-rods.  Note that the 60mm X-ends are configured for M6 threaded Z-rods*

# Instructions

The X-ends were printed from 3mm ABS filament on my DIY Prusa i3 using a 0.4mm nozzle with 0.56mm extrusion width and 0.25 layer height.     I used a 0.1mm gap between interlocking parts.  If needed, you can change the values of these parameters at the beginning of the SCAD file to adapt them to your specific printer.  
    
   
I print on a clear mirror without Kapton tape but thoroughly cleaned with acetone and double concentrated lemon juice.  
  
  
The rod channels and screw holes are defined to be tight. Use a drill with the corresponding diameter to obtain perfectly fitting cavities.   For inserting the 8mm smooth X-rods into the holes, I used a bit of silicon spray to reduce friction.    
   
  
For attaching the idler fork to the X-end insert an M3 nut into the nut trap of the fork tail and use an M3x30 screw with a washer for tensioning the fork.  For clamping the X-endstop to the X-rods, insert two M3 nuts into the nut traps and use M3x10 screws for tightening.  
  
The idler X-end and the X-endstop contain auxiliary support structures for bridging (colored red in the OpenScad drawing), which have to be cut off after printing.   
  
   
If you need an idler fork for a wide bearing or with large diameter axis (which means large screw head and nut sticking out), make sure that you have enough space between your frame and the X-ends.  If it gets tight, check out my [Z-Mounts with Increased Y-Gap](http://www.thingiverse.com/thing:341450).