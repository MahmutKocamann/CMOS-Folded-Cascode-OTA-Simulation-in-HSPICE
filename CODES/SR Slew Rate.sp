*****Analog Circuit Design Essentials*****
           ***SLEW RATE SR***

.INC 130nm.txt

 
*Vin+ 12 GND DC 0.5V AC 1V
*Vin- 13 GND DC 0.5V AC 0V

M1 3 2 1 1 PFET W=80u L=1.2u
M2 2 2 1 1 PFET W=80u L=1.2u
M3 4 4 3 3 PFET W=80u L=1.2u
M4 5 4 2 2 PFET W=80u L=1.2u
M5 4 6 7 7 NFET W=2u L=1.2u
M6 5 6 8 8 NFET W=2u L=1.2u
M7 7 9 10 10 NFET W=8u L=1.2u
M8 8 9 10 10 NFET W=8u L=1.2u
M9 7 12 11 11 PFET W=16u L=1.2u
M10 8 5 11 11 PFET W=16u L=1.2u
M11 6 6 9 9 NFET W=12u L=1.2u
M12 9 9 10 10 NFET W=12u L=1.2u

VDD 1 GND DC 0.8V
VSS 10 GND DC 0V
CL 5 GND 0.1p
Vin 12 0 pulse(0 0.8 0 0.1n 0.1n 499.8n 1u)


Ibias1 1 11 8u
Ibias2 1 6 8u

.AC dec 10 1 3000Meg
.tran 0.01n 2u
.OP
.options post
.probe I(CL)
.probe I(M7)

.end