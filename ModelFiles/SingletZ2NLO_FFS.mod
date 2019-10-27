M$CouplingMatrices = Join[ M$CouplingMatrices, {
C[F[2, {i1}], -F[2, {i2}], S[4]]==
	{{-((IndexDelta[i2, i1]*Mf[2, i1])/vev), -(dZG0G01*IndexDelta[i2, i1]*Mf[2, i1])/(2*vev) + (-2*vev*dMf1[2, i1]*IndexDelta[i2, i1] - vev*Conjugate[dZfR1[2, i1, i2]]*Mf[2, i1] + 2*dvev1*IndexDelta[i2, i1]*Mf[2, i1] - vev*dZfL1[2, i2, i1]*Mf[2, i2])/(2*vev^2)},
	{(IndexDelta[i2, i1]*Mf[2, i1])/vev, (dZG0G01*IndexDelta[i2, i1]*Mf[2, i1])/(2*vev) + (2*vev*dMf1[2, i1]*IndexDelta[i2, i1] + vev*Conjugate[dZfL1[2, i1, i2]]*Mf[2, i1] - 2*dvev1*IndexDelta[i2, i1]*Mf[2, i1] + vev*dZfR1[2, i2, i1]*Mf[2, i2])/(2*vev^2)}},
C[F[2, {i1}], -F[2, {i2}], S[1]]==
	{{((-I)*IndexDelta[i2, i1]*Mf[2, i1])/vev, ((-I/2)*dZh1h11*IndexDelta[i2, i1]*Mf[2, i1])/vev - ((I/2)*(2*vev*dMf1[2, i1]*IndexDelta[i2, i1] + vev*Conjugate[dZfR1[2, i1, i2]]*Mf[2, i1] - 2*dvev1*IndexDelta[i2, i1]*Mf[2, i1] + vev*dZfL1[2, i2, i1]*Mf[2, i2]))/vev^2},
	{((-I)*IndexDelta[i2, i1]*Mf[2, i1])/vev, ((-I/2)*dZh1h11*IndexDelta[i2, i1]*Mf[2, i1])/vev - ((I/2)*(2*vev*dMf1[2, i1]*IndexDelta[i2, i1] + vev*Conjugate[dZfL1[2, i1, i2]]*Mf[2, i1] - 2*dvev1*IndexDelta[i2, i1]*Mf[2, i1] + vev*dZfR1[2, i2, i1]*Mf[2, i2]))/vev^2}},
C[F[2, {i1}], -F[2, {i2}], S[2]]==
	{{0, ((-I/2)*dZh1h21*IndexDelta[i2, i1]*Mf[2, i1])/vev},
	{0, ((-I/2)*dZh1h21*IndexDelta[i2, i1]*Mf[2, i1])/vev}},
C[F[2, {i1}], -F[2, {i2}], S[3]]==
	{{0, -(dZG0HA1*IndexDelta[i2, i1]*Mf[2, i1])/(2*vev)},
	{0, (dZG0HA1*IndexDelta[i2, i1]*Mf[2, i1])/(2*vev)}},
C[F[2, {i1}], -F[1, {i2}], -S[5]]==
	{{0, 0},
	{((-I)*Sqrt[2]*IndexDelta[i2, i1]*Mf[2, i1])/vev, ((-I)*dZGpGp1*IndexDelta[i2, i1]*Mf[2, i1])/(Sqrt[2]*vev) - (I*(2*vev*dMf1[2, i1]*IndexDelta[i2, i1] + vev*Conjugate[dZfL1[1, i1, i2]]*Mf[2, i1] - 2*dvev1*IndexDelta[i2, i1]*Mf[2, i1] + vev*dZfR1[2, i2, i1]*Mf[2, i2]))/(Sqrt[2]*vev^2)}},
C[F[1, {i1}], -F[2, {i2}], S[5]]==
	{{((-I)*Sqrt[2]*IndexDelta[i2, i1]*Mf[2, i1])/vev, ((-I)*dZGpGp1*IndexDelta[i2, i1]*Mf[2, i1])/(Sqrt[2]*vev) - (I*(2*vev*dMf1[2, i1]*IndexDelta[i2, i1] + vev*Conjugate[dZfR1[2, i1, i2]]*Mf[2, i1] - 2*dvev1*IndexDelta[i2, i1]*Mf[2, i1] + vev*dZfL1[1, i2, i1]*Mf[2, i2]))/(Sqrt[2]*vev^2)},
	{0, 0}},
C[F[4, {i1, c1}], -F[4, {i2, c2}], S[4]]==
	{{-((IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[4, i1])/vev), -(dZG0G01*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[4, i1])/(2*vev) + (IndexDelta[c1, c2]*(-2*vev*dMf1[4, i1]*IndexDelta[i2, i1] - vev*Conjugate[dZfR1[4, i1, i2]]*Mf[4, i1] + 2*dvev1*IndexDelta[i2, i1]*Mf[4, i1] - vev*dZfL1[4, i2, i1]*Mf[4, i2]))/(2*vev^2)},
	{(IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[4, i1])/vev, (dZG0G01*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[4, i1])/(2*vev) + (IndexDelta[c1, c2]*(2*vev*dMf1[4, i1]*IndexDelta[i2, i1] + vev*Conjugate[dZfL1[4, i1, i2]]*Mf[4, i1] - 2*dvev1*IndexDelta[i2, i1]*Mf[4, i1] + vev*dZfR1[4, i2, i1]*Mf[4, i2]))/(2*vev^2)}},
C[F[4, {i1, c1}], -F[4, {i2, c2}], S[1]]==
	{{((-I)*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[4, i1])/vev, ((-I/2)*dZh1h11*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[4, i1])/vev - ((I/2)*IndexDelta[c1, c2]*(2*vev*dMf1[4, i1]*IndexDelta[i2, i1] + vev*Conjugate[dZfR1[4, i1, i2]]*Mf[4, i1] - 2*dvev1*IndexDelta[i2, i1]*Mf[4, i1] + vev*dZfL1[4, i2, i1]*Mf[4, i2]))/vev^2},
	{((-I)*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[4, i1])/vev, ((-I/2)*dZh1h11*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[4, i1])/vev - ((I/2)*IndexDelta[c1, c2]*(2*vev*dMf1[4, i1]*IndexDelta[i2, i1] + vev*Conjugate[dZfL1[4, i1, i2]]*Mf[4, i1] - 2*dvev1*IndexDelta[i2, i1]*Mf[4, i1] + vev*dZfR1[4, i2, i1]*Mf[4, i2]))/vev^2}},
C[F[4, {i1, c1}], -F[4, {i2, c2}], S[2]]==
	{{0, ((-I/2)*dZh1h21*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[4, i1])/vev},
	{0, ((-I/2)*dZh1h21*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[4, i1])/vev}},
C[F[4, {i1, c1}], -F[4, {i2, c2}], S[3]]==
	{{0, -(dZG0HA1*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[4, i1])/(2*vev)},
	{0, (dZG0HA1*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[4, i1])/(2*vev)}},
C[F[4, {i1, c1}], -F[3, {i2, c2}], -S[5]]==
	{{(I*Sqrt[2]*CKM[i2, i1]*IndexDelta[c1, c2]*Mf[3, i2])/vev, (I*dZGpGp1*CKM[i2, i1]*IndexDelta[c1, c2]*Mf[3, i2])/(Sqrt[2]*vev) + (I*IndexDelta[c1, c2]*(2*vev*CKM[i2, i1]*dMf1[3, i2] + IndexSum[vev*CKM[i2, jDownL$23407]*dZfL1[4, jDownL$23407, i1]*Mf[3, i2], {jDownL$23407, NF}] + IndexSum[vev*CKM[k$23406, i1]*Conjugate[dZfR1[3, k$23406, i2]]*Mf[3, k$23406], {k$23406, NF}] - 2*dvev1*CKM[i2, i1]*Mf[3, i2] + 2*vev*dCKM1[i2, i1]*Mf[3, i2]))/(Sqrt[2]*vev^2)},
	{((-I)*Sqrt[2]*CKM[i2, i1]*IndexDelta[c1, c2]*Mf[4, i1])/vev, ((-I)*dZGpGp1*CKM[i2, i1]*IndexDelta[c1, c2]*Mf[4, i1])/(Sqrt[2]*vev) + (I*IndexDelta[c1, c2]*(-2*vev*CKM[i2, i1]*dMf1[4, i1] + IndexSum[-(vev*CKM[jUpL$23411bar, i1]*Conjugate[dZfL1[3, jUpL$23411bar, i2]]*Mf[4, i1]), {jUpL$23411bar, NF}] + IndexSum[-(vev*CKM[i2, jDR$23412]*dZfR1[4, jDR$23412, i1]*Mf[4, jDR$23412]), {jDR$23412, NF}] + 2*dvev1*CKM[i2, i1]*Mf[4, i1] - 2*vev*dCKM1[i2, i1]*Mf[4, i1]))/(Sqrt[2]*vev^2)}},
C[F[3, {i1, c1}], -F[4, {i2, c2}], S[5]]==
	{{((-I)*Sqrt[2]*Conjugate[CKM[i2, i1]]*IndexDelta[c1, c2]*Mf[4, i2])/vev, ((-I)*dZGpGp1*Conjugate[CKM[i2, i1]]*IndexDelta[c1, c2]*Mf[4, i2])/(Sqrt[2]*vev) + (I*IndexDelta[c1, c2]*(-2*vev*Conjugate[CKM[i2, i1]]*dMf1[4, i2] + IndexSum[-(vev*Conjugate[CKM[i2, jUpL$23414]]*dZfL1[3, jUpL$23414, i1]*Mf[4, i2]), {jUpL$23414, NF}] + IndexSum[-(vev*Conjugate[CKM[k$23413, i1]]*Conjugate[dZfR1[4, k$23413, i2]]*Mf[4, k$23413]), {k$23413, NF}] + 2*dvev1*Conjugate[CKM[i2, i1]]*Mf[4, i2] - 2*vev*Conjugate[dCKM1[i2, i1]]*Mf[4, i2]))/(Sqrt[2]*vev^2)},
	{(I*Sqrt[2]*Conjugate[CKM[i2, i1]]*IndexDelta[c1, c2]*Mf[3, i1])/vev, (I*dZGpGp1*Conjugate[CKM[i2, i1]]*IndexDelta[c1, c2]*Mf[3, i1])/(Sqrt[2]*vev) + (I*IndexDelta[c1, c2]*(2*vev*Conjugate[CKM[i2, i1]]*dMf1[3, i1] + IndexSum[vev*Conjugate[CKM[jDownL$23404bar, i1]]*Conjugate[dZfL1[4, jDownL$23404bar, i2]]*Mf[3, i1], {jDownL$23404bar, NF}] + IndexSum[vev*Conjugate[CKM[i2, jUR$23405]]*dZfR1[3, jUR$23405, i1]*Mf[3, jUR$23405], {jUR$23405, NF}] - 2*dvev1*Conjugate[CKM[i2, i1]]*Mf[3, i1] + 2*vev*Conjugate[dCKM1[i2, i1]]*Mf[3, i1]))/(Sqrt[2]*vev^2)}},
C[F[3, {i1, c1}], -F[3, {i2, c2}], S[4]]==
	{{(IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[3, i1])/vev, (dZG0G01*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[3, i1])/(2*vev) + (IndexDelta[c1, c2]*(2*vev*dMf1[3, i1]*IndexDelta[i2, i1] + vev*Conjugate[dZfR1[3, i1, i2]]*Mf[3, i1] - 2*dvev1*IndexDelta[i2, i1]*Mf[3, i1] + vev*dZfL1[3, i2, i1]*Mf[3, i2]))/(2*vev^2)},
	{-((IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[3, i1])/vev), -(dZG0G01*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[3, i1])/(2*vev) + (IndexDelta[c1, c2]*(-2*vev*dMf1[3, i1]*IndexDelta[i2, i1] - vev*Conjugate[dZfL1[3, i1, i2]]*Mf[3, i1] + 2*dvev1*IndexDelta[i2, i1]*Mf[3, i1] - vev*dZfR1[3, i2, i1]*Mf[3, i2]))/(2*vev^2)}},
C[F[3, {i1, c1}], -F[3, {i2, c2}], S[1]]==
	{{((-I)*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[3, i1])/vev, ((-I/2)*dZh1h11*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[3, i1])/vev - ((I/2)*IndexDelta[c1, c2]*(2*vev*dMf1[3, i1]*IndexDelta[i2, i1] + vev*Conjugate[dZfR1[3, i1, i2]]*Mf[3, i1] - 2*dvev1*IndexDelta[i2, i1]*Mf[3, i1] + vev*dZfL1[3, i2, i1]*Mf[3, i2]))/vev^2},
	{((-I)*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[3, i1])/vev, ((-I/2)*dZh1h11*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[3, i1])/vev - ((I/2)*IndexDelta[c1, c2]*(2*vev*dMf1[3, i1]*IndexDelta[i2, i1] + vev*Conjugate[dZfL1[3, i1, i2]]*Mf[3, i1] - 2*dvev1*IndexDelta[i2, i1]*Mf[3, i1] + vev*dZfR1[3, i2, i1]*Mf[3, i2]))/vev^2}},
C[F[3, {i1, c1}], -F[3, {i2, c2}], S[2]]==
	{{0, ((-I/2)*dZh1h21*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[3, i1])/vev},
	{0, ((-I/2)*dZh1h21*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[3, i1])/vev}},
C[F[3, {i1, c1}], -F[3, {i2, c2}], S[3]]==
	{{0, (dZG0HA1*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[3, i1])/(2*vev)},
	{0, -(dZG0HA1*IndexDelta[c1, c2]*IndexDelta[i2, i1]*Mf[3, i1])/(2*vev)}}
}];
