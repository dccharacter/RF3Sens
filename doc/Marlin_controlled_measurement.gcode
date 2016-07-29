; SETUP
G90 ; Set to Absolute Positioning
G1 F2000 Z0 ; Go to the Start
G91 ; Set to Relative Positioning
G4 S1 ;sleep for 1 sec

; GO MEASURE
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0

;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0
;--------
M42 P4 S255 ;set trigger pin 4 HIGH (servo 4 signal pin)
G1 F60 Z-0.005 ;step down
M400 ;wait for previous command to complete
M42 P4 S0 ;set trigger pin LOW ; signal movement is over
M226 P5 S1 ; wait for reporting is over
M226 P5 S0

