M$CouplingMatrices = Join[ M$CouplingMatrices, {
C[S[4], S[4], S[1]]==
	{{((-I)*Mh12)/vev, ((-I)*dZG0G01*Mh12)/vev - ((I/2)*dZh1h11*Mh12)/vev + (I*(dvev1*Mh12 - dMh121*vev))/vev^2}},
C[S[4], S[4], S[2]]==
	{{0, ((-I/2)*dZh1h21*Mh12)/vev}},
C[S[4], S[1], S[3]]==
	{{0, ((-I/2)*dZG0HA1*Mh12)/vev - (I/4)*del2*dZHAG01*vev}},
C[S[5], -S[5], S[1]]==
	{{((-I)*Mh12)/vev, ((-I)*dZGpGp1*Mh12)/vev - ((I/2)*dZh1h11*Mh12)/vev + (I*(dvev1*Mh12 - dMh121*vev))/vev^2}},
C[S[5], -S[5], S[2]]==
	{{0, ((-I/2)*dZh1h21*Mh12)/vev}},
C[S[1], S[1], S[1]]==
	{{((-3*I)*Mh12)/vev, (((-9*I)/2)*dZh1h11*Mh12)/vev + ((3*I)*(dvev1*Mh12 - dMh121*vev))/vev^2}},
C[S[1], S[1], S[2]]==
	{{0, (((-3*I)/2)*dZh1h21*Mh12)/vev - (I/2)*del2*dZh2h11*vev}},
C[S[1], S[2], S[2]]==
	{{(-I/2)*del2*vev, (-I/4)*del2*dZh1h11*vev - (I/2)*del2*dZh2h21*vev - (I/2)*(del2*dvev1 + ddel2*vev)}},
C[S[1], S[3], S[3]]==
	{{(-I/2)*del2*vev, (-I/4)*del2*dZh1h11*vev - (I/2)*del2*dZHAHA1*vev - (I/2)*(del2*dvev1 + ddel2*vev)}},
C[S[2], S[2], S[2]]==
	{{0, ((-3*I)/4)*del2*dZh1h21*vev}},
C[S[2], S[3], S[3]]==
	{{0, (-I/4)*del2*dZh1h21*vev}}
}];
