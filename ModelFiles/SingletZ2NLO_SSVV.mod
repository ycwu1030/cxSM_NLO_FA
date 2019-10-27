M$CouplingMatrices = Join[ M$CouplingMatrices, {
C[S[4], S[4], V[1], V[2]]==
	{{0, ((I/4)*dZZA1*EL^2)/(CW^2*SW^2)}},
C[S[4], S[4], V[3], -V[3]]==
	{{((I/2)*EL^2)/SW^2, ((-I)*dSW1*EL^2)/SW^3 + (I*dZe1*EL^2)/SW^2 + ((I/2)*dZG0G01*EL^2)/SW^2 + ((I/2)*dZWW1*EL^2)/SW^2}},
C[S[4], S[4], V[2], V[2]]==
	{{((I/2)*EL^2)/(CW^2*SW^2), (I*dZe1*EL^2)/(CW^2*SW^2) + ((I/2)*dZG0G01*EL^2)/(CW^2*SW^2) + ((I/2)*dZZZ1*EL^2)/(CW^2*SW^2) + (I*EL^2*(CW*dSW1 - dCW1*SW)*(-1 + 2*SW^2))/(CW^3*SW^3)}},
C[S[4], S[5], V[1], -V[3]]==
	{{EL^2/(2*SW), (dZZA1*EL^2)/(4*CW) - (dSW1*EL^2)/(2*SW^2) + (dZAA1*EL^2)/(4*SW) + (dZe1*EL^2)/SW + (dZG0G01*EL^2)/(4*SW) + (dZGpGp1*EL^2)/(4*SW) + (dZWW1*EL^2)/(4*SW)}},
C[S[4], S[5], -V[3], V[2]]==
	{{EL^2/(2*CW), -(dCW1*EL^2)/(2*CW^2) + (dZe1*EL^2)/CW + (dZG0G01*EL^2)/(4*CW) + (dZGpGp1*EL^2)/(4*CW) + (dZWW1*EL^2)/(4*CW) + (dZZZ1*EL^2)/(4*CW) + (dZAZ1*EL^2)/(4*SW)}},
C[S[4], -S[5], V[1], V[3]]==
	{{-EL^2/(2*SW), -(dZZA1*EL^2)/(4*CW) + (dSW1*EL^2)/(2*SW^2) - (dZAA1*EL^2)/(4*SW) - (dZe1*EL^2)/SW - (dZG0G01*EL^2)/(4*SW) - (dZGpGp1*EL^2)/(4*SW) - (dZWW1*EL^2)/(4*SW)}},
C[S[4], -S[5], V[3], V[2]]==
	{{-EL^2/(2*CW), (dCW1*EL^2)/(2*CW^2) - (dZe1*EL^2)/CW - (dZG0G01*EL^2)/(4*CW) - (dZGpGp1*EL^2)/(4*CW) - (dZWW1*EL^2)/(4*CW) - (dZZZ1*EL^2)/(4*CW) - (dZAZ1*EL^2)/(4*SW)}},
C[S[4], S[3], V[3], -V[3]]==
	{{0, ((I/4)*dZG0HA1*EL^2)/SW^2}},
C[S[4], S[3], V[2], V[2]]==
	{{0, ((I/4)*dZG0HA1*EL^2)/(CW^2*SW^2)}},
C[S[5], -S[5], V[1], V[1]]==
	{{(2*I)*EL^2, (2*I)*dZAA1*EL^2 + (4*I)*dZe1*EL^2 + (2*I)*dZGpGp1*EL^2 + (I*dZZA1*EL^2*(-1 + 2*SW^2))/(CW*SW)}},
C[S[5], -S[5], V[1], V[2]]==
	{{(I*EL^2*(-1 + 2*SW^2))/(CW*SW), I*dZAZ1*EL^2 + (I*EL^2*(CW*dSW1 - dCW1*SW))/(CW^2*SW^2) + ((I/2)*dZAA1*EL^2*(-1 + 2*SW^2))/(CW*SW) + ((2*I)*dZe1*EL^2*(-1 + 2*SW^2))/(CW*SW) + (I*dZGpGp1*EL^2*(-1 + 2*SW^2))/(CW*SW) + ((I/2)*dZZZ1*EL^2*(-1 + 2*SW^2))/(CW*SW) + ((I/4)*dZZA1*(EL - 2*EL*SW^2)^2)/(CW^2*SW^2)}},
C[S[5], -S[5], V[3], -V[3]]==
	{{((I/2)*EL^2)/SW^2, ((-I)*dSW1*EL^2)/SW^3 + (I*dZe1*EL^2)/SW^2 + ((I/2)*dZGpGp1*EL^2)/SW^2 + ((I/2)*dZWW1*EL^2)/SW^2}},
C[S[5], -S[5], V[2], V[2]]==
	{{((I/2)*(EL - 2*EL*SW^2)^2)/(CW^2*SW^2), (I*dZAZ1*EL^2*(-1 + 2*SW^2))/(CW*SW) + (I*EL^2*(CW*dSW1 - dCW1*SW)*(-1 + 2*SW^2))/(CW^3*SW^3) + (I*dZe1*(EL - 2*EL*SW^2)^2)/(CW^2*SW^2) + ((I/2)*dZGpGp1*(EL - 2*EL*SW^2)^2)/(CW^2*SW^2) + ((I/2)*dZZZ1*(EL - 2*EL*SW^2)^2)/(CW^2*SW^2)}},
C[S[5], S[1], V[1], -V[3]]==
	{{((-I/2)*EL^2)/SW, ((-I/4)*dZZA1*EL^2)/CW + ((I/2)*dSW1*EL^2)/SW^2 - ((I/4)*dZAA1*EL^2)/SW - (I*dZe1*EL^2)/SW - ((I/4)*dZGpGp1*EL^2)/SW - ((I/4)*dZh1h11*EL^2)/SW - ((I/4)*dZWW1*EL^2)/SW}},
C[S[5], S[1], -V[3], V[2]]==
	{{((-I/2)*EL^2)/CW, ((I/2)*dCW1*EL^2)/CW^2 - (I*dZe1*EL^2)/CW - ((I/4)*dZGpGp1*EL^2)/CW - ((I/4)*dZh1h11*EL^2)/CW - ((I/4)*dZWW1*EL^2)/CW - ((I/4)*dZZZ1*EL^2)/CW - ((I/4)*dZAZ1*EL^2)/SW}},
C[S[5], S[2], V[1], -V[3]]==
	{{0, ((-I/4)*dZh1h21*EL^2)/SW}},
C[S[5], S[2], -V[3], V[2]]==
	{{0, ((-I/4)*dZh1h21*EL^2)/CW}},
C[S[5], S[3], V[1], -V[3]]==
	{{0, (dZG0HA1*EL^2)/(4*SW)}},
C[S[5], S[3], -V[3], V[2]]==
	{{0, (dZG0HA1*EL^2)/(4*CW)}},
C[-S[5], S[1], V[1], V[3]]==
	{{((-I/2)*EL^2)/SW, ((-I/4)*dZZA1*EL^2)/CW + ((I/2)*dSW1*EL^2)/SW^2 - ((I/4)*dZAA1*EL^2)/SW - (I*dZe1*EL^2)/SW - ((I/4)*dZGpGp1*EL^2)/SW - ((I/4)*dZh1h11*EL^2)/SW - ((I/4)*dZWW1*EL^2)/SW}},
C[-S[5], S[1], V[3], V[2]]==
	{{((-I/2)*EL^2)/CW, ((I/2)*dCW1*EL^2)/CW^2 - (I*dZe1*EL^2)/CW - ((I/4)*dZGpGp1*EL^2)/CW - ((I/4)*dZh1h11*EL^2)/CW - ((I/4)*dZWW1*EL^2)/CW - ((I/4)*dZZZ1*EL^2)/CW - ((I/4)*dZAZ1*EL^2)/SW}},
C[-S[5], S[2], V[1], V[3]]==
	{{0, ((-I/4)*dZh1h21*EL^2)/SW}},
C[-S[5], S[2], V[3], V[2]]==
	{{0, ((-I/4)*dZh1h21*EL^2)/CW}},
C[-S[5], S[3], V[1], V[3]]==
	{{0, -(dZG0HA1*EL^2)/(4*SW)}},
C[-S[5], S[3], V[3], V[2]]==
	{{0, -(dZG0HA1*EL^2)/(4*CW)}},
C[S[1], S[1], V[1], V[2]]==
	{{0, ((I/4)*dZZA1*EL^2)/(CW^2*SW^2)}},
C[S[1], S[1], V[3], -V[3]]==
	{{((I/2)*EL^2)/SW^2, ((-I)*dSW1*EL^2)/SW^3 + (I*dZe1*EL^2)/SW^2 + ((I/2)*dZh1h11*EL^2)/SW^2 + ((I/2)*dZWW1*EL^2)/SW^2}},
C[S[1], S[1], V[2], V[2]]==
	{{((I/2)*EL^2)/(CW^2*SW^2), (I*dZe1*EL^2)/(CW^2*SW^2) + ((I/2)*dZh1h11*EL^2)/(CW^2*SW^2) + ((I/2)*dZZZ1*EL^2)/(CW^2*SW^2) + (I*EL^2*(CW*dSW1 - dCW1*SW)*(-1 + 2*SW^2))/(CW^3*SW^3)}},
C[S[1], S[2], V[3], -V[3]]==
	{{0, ((I/4)*dZh1h21*EL^2)/SW^2}},
C[S[1], S[2], V[2], V[2]]==
	{{0, ((I/4)*dZh1h21*EL^2)/(CW^2*SW^2)}}
}];
