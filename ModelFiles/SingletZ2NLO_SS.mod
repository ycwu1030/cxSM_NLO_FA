M$CouplingMatrices = Join[ M$CouplingMatrices, {
C[S[4], S[4]]==
	{{0, (-I)*dZG0G01},
	{0, ((-I)*dTh1)/vev}},
C[S[4], S[3]]==
	{{0, (-I/2)*dZG0HA1 - (I/2)*dZHAG01},
	{0, (-I/2)*dZHAG01*MHA2}},
C[S[5], -S[5]]==
	{{0, (-I)*dZGpGp1},
	{0, ((-I)*dTh1)/vev}},
C[S[1], S[1]]==
	{{0, (-I)*dZh1h11},
	{0, (-I)*dZh1h11*Mh12 - I*(dMh121 + dTh1/vev)}},
C[S[1], S[2]]==
	{{0, (-I/2)*dZh1h21 - (I/2)*dZh2h11},
	{0, (-I/2)*dZh1h21*Mh12 - (I/2)*dZh2h11*Mh22}},
C[S[2], S[2]]==
	{{0, (-I)*dZh2h21},
	{0, (-I)*dMh221 - I*dZh2h21*Mh22}},
C[S[3], S[3]]==
	{{0, (-I)*dZHAHA1},
	{0, (-I)*dMHA21 - I*dZHAHA1*MHA2}}
}];
