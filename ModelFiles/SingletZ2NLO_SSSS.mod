M$CouplingMatrices = Join[ M$CouplingMatrices, {
C[S[4], S[4], S[4], S[4]]==
	{{((-3*I)*Mh12)/vev^2, ((-6*I)*dZG0G01*Mh12)/vev^2 - ((3*I)*(-2*dvev1*Mh12 + dMh121*vev))/vev^3}},
C[S[4], S[4], S[4], S[3]]==
	{{0, ((-3*I)/4)*del2*dZHAG01 - (((3*I)/2)*dZG0HA1*Mh12)/vev^2}},
C[S[4], S[4], S[5], -S[5]]==
	{{((-I)*Mh12)/vev^2, ((-I)*dZG0G01*Mh12)/vev^2 - (I*dZGpGp1*Mh12)/vev^2 - (I*(-2*dvev1*Mh12 + dMh121*vev))/vev^3}},
C[S[4], S[4], S[1], S[1]]==
	{{((-I)*Mh12)/vev^2, ((-I)*dZG0G01*Mh12)/vev^2 - (I*dZh1h11*Mh12)/vev^2 - (I*(-2*dvev1*Mh12 + dMh121*vev))/vev^3}},
C[S[4], S[4], S[1], S[2]]==
	{{0, (-I/4)*del2*dZh2h11 - ((I/2)*dZh1h21*Mh12)/vev^2}},
C[S[4], S[4], S[2], S[2]]==
	{{(-I/2)*del2, (-I/2)*ddel2 - (I/2)*del2*dZG0G01 - (I/2)*del2*dZh2h21}},
C[S[4], S[4], S[3], S[3]]==
	{{(-I/2)*del2, (-I/2)*ddel2 - (I/2)*del2*dZG0G01 - (I/2)*del2*dZHAHA1}},
C[S[4], S[5], -S[5], S[3]]==
	{{0, (-I/4)*del2*dZHAG01 - ((I/2)*dZG0HA1*Mh12)/vev^2}},
C[S[4], S[1], S[1], S[3]]==
	{{0, (-I/4)*del2*dZHAG01 - ((I/2)*dZG0HA1*Mh12)/vev^2}},
C[S[4], S[2], S[2], S[3]]==
	{{0, (-I/4)*del2*dZG0HA1 - (I/4)*d2*dZHAG01}},
C[S[4], S[3], S[3], S[3]]==
	{{0, ((-3*I)/4)*del2*dZG0HA1 - ((3*I)/4)*d2*dZHAG01}},
C[S[5], S[5], -S[5], -S[5]]==
	{{((-2*I)*Mh12)/vev^2, ((-4*I)*dZGpGp1*Mh12)/vev^2 - ((2*I)*(-2*dvev1*Mh12 + dMh121*vev))/vev^3}},
C[S[5], -S[5], S[1], S[1]]==
	{{((-I)*Mh12)/vev^2, ((-I)*dZGpGp1*Mh12)/vev^2 - (I*dZh1h11*Mh12)/vev^2 - (I*(-2*dvev1*Mh12 + dMh121*vev))/vev^3}},
C[S[5], -S[5], S[1], S[2]]==
	{{0, (-I/4)*del2*dZh2h11 - ((I/2)*dZh1h21*Mh12)/vev^2}},
C[S[5], -S[5], S[2], S[2]]==
	{{(-I/2)*del2, (-I/2)*ddel2 - (I/2)*del2*dZGpGp1 - (I/2)*del2*dZh2h21}},
C[S[5], -S[5], S[3], S[3]]==
	{{(-I/2)*del2, (-I/2)*ddel2 - (I/2)*del2*dZGpGp1 - (I/2)*del2*dZHAHA1}},
C[S[1], S[1], S[1], S[1]]==
	{{((-3*I)*Mh12)/vev^2, ((-6*I)*dZh1h11*Mh12)/vev^2 - ((3*I)*(-2*dvev1*Mh12 + dMh121*vev))/vev^3}},
C[S[1], S[1], S[1], S[2]]==
	{{0, ((-3*I)/4)*del2*dZh2h11 - (((3*I)/2)*dZh1h21*Mh12)/vev^2}},
C[S[1], S[1], S[2], S[2]]==
	{{(-I/2)*del2, (-I/2)*ddel2 - (I/2)*del2*dZh1h11 - (I/2)*del2*dZh2h21}},
C[S[1], S[1], S[3], S[3]]==
	{{(-I/2)*del2, (-I/2)*ddel2 - (I/2)*del2*dZh1h11 - (I/2)*del2*dZHAHA1}},
C[S[1], S[2], S[2], S[2]]==
	{{0, ((-3*I)/4)*del2*dZh1h21 - ((3*I)/4)*d2*dZh2h11}},
C[S[1], S[2], S[3], S[3]]==
	{{0, (-I/4)*del2*dZh1h21 - (I/4)*d2*dZh2h11}},
C[S[2], S[2], S[2], S[2]]==
	{{((-3*I)/2)*d2, ((-3*I)/2)*dd2 - (3*I)*d2*dZh2h21}},
C[S[2], S[2], S[3], S[3]]==
	{{(-I/2)*d2, (-I/2)*dd2 - (I/2)*d2*dZh2h21 - (I/2)*d2*dZHAHA1}},
C[S[3], S[3], S[3], S[3]]==
	{{((-3*I)/2)*d2, ((-3*I)/2)*dd2 - (3*I)*d2*dZHAHA1}}
}];
