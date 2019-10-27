RenConst[dCW1] := (CW*(dMWsq1/MW2 - dMZsq1/MZ2))/2

RenConst[dSW1] := (CW^2*(-(dMWsq1/MW2) + dMZsq1/MZ2))/(2*SW)

RenConst[dvev1] := (-dZe1 + dMWsq1/(2*MW2) + dSW1/SW)*vev

RenConst[dTh1] := -TadpoleRC[S[1]]

RenConst[dMh121] := -(dTh1/vev) + MassRC[S[1]]

RenConst[dMh221] := MassRC[S[2]]

RenConst[dZh1h11] := FieldRC[S[1]]

RenConst[dZh1h21] := FieldRC[S[1], S[2]]

RenConst[dZh2h11] := -(((-Mh12 + Mh22)*FieldRC[S[2], S[1]])/(Mh12 - Mh22))

RenConst[dZh2h21] := FieldRC[S[2]]

RenConst[dMHA21] := MassRC[S[3]]

RenConst[dZHAHA1] := FieldRC[S[3]]

RenConst[dZHAG01] := (2*SelfEnergy[S[3] -> S[4], 0])/MHA2

RenConst[dZG0HA1] := (-2*SelfEnergy[S[3] -> S[4], MHA])/MHA2

RenConst[dZG0G01] := FieldRC[S[4]]

RenConst[dZGpGp1] := FieldRC[S[5]]