; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool on Mon May 22 2017 13:17:00 GMT-0400 (Eastern Daylight Time)

; Back right corner is (0,0)

; ============= PRE-HOMING SEQUENCE =====================

; Ignore Machine boundaries
M564 H0 S0

;Turn off bed leveling during homing
M561
G29 S2

; Switch to Origin Tool
T0

; Relative positioning
G91

; Provide Z height clearance
G1 Z10 F1200 S1


; ================== HOME Y ============================

; Move away from x limit to prevent damage to endstop
G0 X35 F3000

; Rapid Y until limit switch triggers
G0 Y-450 F3000 S1

; Back off to release limit switch
G0 Y6 F3000

; Slow advance to trigger limit switch
G0 Y-10 F120 S1

; Move the gantry slightly away from back of printer, to allow travel past the bolt mounting the gantry bracket
G0 Y5 F1200

; Set this location as Y = 0mm
G92 Y0

; ============= HOME X ====================

; Rapid X until limit switch triggers
G0 X-450 F3000 S1

; Back off to release limit switch
G0 X6 F3000

; Slow advance to trigger limit switch
G0 X-10 F120 S1

; Move away from the limit switch, to prevent damage to it upon next move
G0 X5 F3000

; Set this location as X = 0mm
G92 X0

; ============ HOME Z ==============

; Rapid Z until limit switch triggers
G0 Z450 F3000 S1

; Back off to release limit switch
G0 Z-6 F3000

; Slow advance to trigger limit switch
G0 Z10 F120 S1

; Set location as 377 mm
G92 Z377 

; Revert to absolute coordinates
G91

; Re-enable mesh leveling
G29 S1

; Set Axes Limits
M208 X0 Y0 Z-5 S1 ; Set axis minima
M208 X371 Y385 Z377 S0 ; Set axis maxima

; Stop movement across limits, enable boundaries
M564 H0 S1
