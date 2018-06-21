; homey.g
; called to home the Y axis
;
; generated by RepRapFirmware Configuration Tool on Mon May 22 2017 13:17:01 GMT-0400 (Eastern Daylight Time)

; LAST UPDATE: 11/24/2017 3:26 PM -- EL




; Lift Z relative to current position
G91
G1 Z5 F6000
G90

; Move quickly to Y axis endstop and stop there (first pass)
G1 Y-405 F1800 S1

; Go back a few mm
G91
G1 Y5 F6000
G90

; Move slowly to X axis endstop once more (second pass)
G1 Y-405 F360 S1

; Set Y endstop as Y origin
G92 Y0

; Lower Z again
G91
G1 Z-5 F6000
G90
