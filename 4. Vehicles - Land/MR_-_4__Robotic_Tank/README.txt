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


http://www.thingiverse.com/thing:1906831
MR - 4 : Robotic Tank by timmiclark is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

My latest tankbot has been designed to be a larger vehicle but printable on a small scale printer.

https://youtu.be/KUup3ndVikM

A number of issues with the other tanks have been overcome (hopefully) with this one.

First and foremost it now runs on two standard sized continuous rotation servos. You can obtain these with various torque settings to suit your needs!

Secondly the tracks are specifically designed to be joined with 1.75mm filament offcuts. These save the need to order expensive stainless steel rods and because they flex, they hold themselves in without need for glue.

Thirdly I have designed it to bolt together rather than being glued - so that changing parts - or reconfiguring it is now possible.

Notes and hints:
* The tank should fit a range of standard sized servos (they are not all that "standard") but you may need to play around with the square spindle to fit your servo nicely into the cog.
* I like to over power my robots in terms of battery (the one in the video has 12V), and then use a step down power converted to power the servos - this means that you get longer drive time, more power and less chance of your controller (Arduino in my case) resetting because the servos stole all of the juice.
* I have designed a number of different body configurations. Feel free to play around with what ever suits your needs.
* I have so far only designed an external Arduino Uno mount, but you could run it on any controller that suits.
* I designed this specifically for my Up! Plus, but it developed a fault halfway through the design phase and I finished it on a ProJet full colour powder printer that I have access to. You can still print it in and FDM printer greater than 100mm x 100mm
* The body section with the build in sensor is designed for a HC-SR04 untrasonic sensor and the Adafruit RGB Color Sensor.
*The body section with the provision for the 12V battery clip (which takes 8 x AA  batteries) also has provision for a 16mm round press switch.
* You will need 26 tracks per side - note print the tracks without supports, otherwise the pin holes clog up and you need to drill them out. A 2mm drill bit does this nicely ;)



# Print Settings

Printer Brand: Up!
Printer: Up Plus
Rafts: Yes
Supports: Yes
Resolution: 0.2mm
Infill: 50%

Notes: 
The body parts can be tricky. I get best results printing them on their side, and then treat them with a very quick acetone vapour bath (not heated) to prevent splitting.

I also print the tracks WITHOUT SUPPORTS.