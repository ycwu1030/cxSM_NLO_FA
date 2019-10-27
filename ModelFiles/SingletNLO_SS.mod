M$CouplingMatrices = Join[ M$CouplingMatrices, {
C[S[4], S[4]]==
	{{0, (-I)*dZG0G01},
	{0, ((-I)*(dTh1*Cos[theta] - dTh2*Sin[theta]))/vev}},
C[S[4], S[3]]==
	{{0, (-I/2)*dZG0HA1 - (I/2)*dZHAG01},
	{0, (-I/2)*dZHAG01*MHA2}},
C[S[5], -S[5]]==
	{{0, (-I)*dZGpGp1},
	{0, ((-I)*(dTh1*Cos[theta] - dTh2*Sin[theta]))/vev}},
C[S[1], S[1]]==
	{{0, (-I)*dZh1h11},
	{0, (-I)*dZh1h11*Mh12 - ((I/4)*(4*dMh121*vev + 3*dTh1*Cos[theta] + dTh1*Cos[3*theta] - dTh2*Sin[theta] - dTh2*Sin[3*theta]))/vev}},
C[S[1], S[2]]==
	{{0, (-I/2)*dZh1h21 - (I/2)*dZh2h11},
	{0, (-I/2)*dZh1h21*Mh12 - (I/2)*dZh2h11*Mh22 + (I*Cos[theta]*Sin[theta]*(dTh1*Cos[theta] - dTh2*Sin[theta]))/vev}},
C[S[2], S[2]]==
	{{0, (-I)*dZh2h21},
	{0, (-I)*dMh221 - I*dZh2h21*Mh22 + (I*Sin[theta]^2*(-(dTh1*Cos[theta]) + dTh2*Sin[theta]))/vev}},
C[S[3], S[3]]==
	{{0, (-I)*dZHAHA1},
	{0, (-I)*dMHA21 - I*dZHAHA1*MHA2}}
}];
