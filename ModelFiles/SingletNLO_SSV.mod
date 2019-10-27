M$CouplingMatrices = Join[ M$CouplingMatrices, {
C[S[4], S[5], -V[3]]==
	{{-EL/(2*SW), (dSW1*EL)/(2*SW^2) - (dZe1*EL)/(2*SW) - (dZG0G01*EL)/(4*SW) - (dZGpGp1*EL)/(4*SW) - (dZWW1*EL)/(4*SW)}},
C[S[4], -S[5], V[3]]==
	{{-EL/(2*SW), (dSW1*EL)/(2*SW^2) - (dZe1*EL)/(2*SW) - (dZG0G01*EL)/(4*SW) - (dZGpGp1*EL)/(4*SW) - (dZWW1*EL)/(4*SW)}},
C[S[4], S[1], V[1]]==
	{{0, (dZZA1*EL*Cos[theta])/(4*CW*SW)}},
C[S[4], S[1], V[2]]==
	{{(EL*Cos[theta])/(2*CW*SW), (dZe1*EL*Cos[theta])/(2*CW*SW) + (dZG0G01*EL*Cos[theta])/(4*CW*SW) + (dZh1h11*EL*Cos[theta])/(4*CW*SW) + (dZZZ1*EL*Cos[theta])/(4*CW*SW) + (EL*(CW*dSW1 - dCW1*SW)*(-1 + 2*SW^2)*Cos[theta])/(2*CW^2*SW^2) - (dtheta1*EL*Sin[theta])/(2*CW*SW) - (dZh2h11*EL*Sin[theta])/(4*CW*SW)}},
C[S[4], S[2], V[1]]==
	{{0, -(dZZA1*EL*Sin[theta])/(4*CW*SW)}},
C[S[4], S[2], V[2]]==
	{{-(EL*Sin[theta])/(2*CW*SW), -(dtheta1*EL*Cos[theta])/(2*CW*SW) + (dZh1h21*EL*Cos[theta])/(4*CW*SW) - (dZe1*EL*Sin[theta])/(2*CW*SW) - (dZG0G01*EL*Sin[theta])/(4*CW*SW) - (dZh2h21*EL*Sin[theta])/(4*CW*SW) - (dZZZ1*EL*Sin[theta])/(4*CW*SW) - (EL*(CW*dSW1 - dCW1*SW)*(-1 + 2*SW^2)*Sin[theta])/(2*CW^2*SW^2)}},
C[S[5], -S[5], V[1]]==
	{{I*EL, (I/2)*dZAA1*EL + I*dZe1*EL + I*dZGpGp1*EL + ((I/4)*dZZA1*EL*(-1 + 2*SW^2))/(CW*SW)}},
C[S[5], -S[5], V[2]]==
	{{((I/2)*EL*(-1 + 2*SW^2))/(CW*SW), (I/2)*dZAZ1*EL + ((I/2)*EL*(CW*dSW1 - dCW1*SW))/(CW^2*SW^2) + ((I/2)*dZe1*EL*(-1 + 2*SW^2))/(CW*SW) + ((I/2)*dZGpGp1*EL*(-1 + 2*SW^2))/(CW*SW) + ((I/4)*dZZZ1*EL*(-1 + 2*SW^2))/(CW*SW)}},
C[S[5], S[1], -V[3]]==
	{{((-I/2)*EL*Cos[theta])/SW, ((I/2)*dSW1*EL*Cos[theta])/SW^2 - ((I/2)*dZe1*EL*Cos[theta])/SW - ((I/4)*dZGpGp1*EL*Cos[theta])/SW - ((I/4)*dZh1h11*EL*Cos[theta])/SW - ((I/4)*dZWW1*EL*Cos[theta])/SW + ((I/2)*dtheta1*EL*Sin[theta])/SW + ((I/4)*dZh2h11*EL*Sin[theta])/SW}},
C[S[5], S[2], -V[3]]==
	{{((I/2)*EL*Sin[theta])/SW, ((I/2)*dtheta1*EL*Cos[theta])/SW - ((I/4)*dZh1h21*EL*Cos[theta])/SW - ((I/2)*dSW1*EL*Sin[theta])/SW^2 + ((I/2)*dZe1*EL*Sin[theta])/SW + ((I/4)*dZGpGp1*EL*Sin[theta])/SW + ((I/4)*dZh2h21*EL*Sin[theta])/SW + ((I/4)*dZWW1*EL*Sin[theta])/SW}},
C[S[5], S[3], -V[3]]==
	{{0, (dZG0HA1*EL)/(4*SW)}},
C[-S[5], S[1], V[3]]==
	{{((I/2)*EL*Cos[theta])/SW, ((-I/2)*dSW1*EL*Cos[theta])/SW^2 + ((I/2)*dZe1*EL*Cos[theta])/SW + ((I/4)*dZGpGp1*EL*Cos[theta])/SW + ((I/4)*dZh1h11*EL*Cos[theta])/SW + ((I/4)*dZWW1*EL*Cos[theta])/SW - ((I/2)*dtheta1*EL*Sin[theta])/SW - ((I/4)*dZh2h11*EL*Sin[theta])/SW}},
C[-S[5], S[2], V[3]]==
	{{((-I/2)*EL*Sin[theta])/SW, ((-I/2)*dtheta1*EL*Cos[theta])/SW + ((I/4)*dZh1h21*EL*Cos[theta])/SW + ((I/2)*dSW1*EL*Sin[theta])/SW^2 - ((I/2)*dZe1*EL*Sin[theta])/SW - ((I/4)*dZGpGp1*EL*Sin[theta])/SW - ((I/4)*dZh2h21*EL*Sin[theta])/SW - ((I/4)*dZWW1*EL*Sin[theta])/SW}},
C[-S[5], S[3], V[3]]==
	{{0, (dZG0HA1*EL)/(4*SW)}},
C[S[1], S[3], V[2]]==
	{{0, -(dZG0HA1*EL*Cos[theta])/(4*CW*SW)}},
C[S[2], S[3], V[2]]==
	{{0, (dZG0HA1*EL*Sin[theta])/(4*CW*SW)}}
}];
