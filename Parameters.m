(* ::Package:: *)

(*$Parameters=[];
RegisterParameter[p_]:=Block[{},]*)

(*Scalar Part Parameters*)
Mh12/: Renormalization[Mh12]:=Mh12+r1 dMh121;
Mh22/: Renormalization[Mh22]:=Mh22+r1 dMh221;
theta/: Renormalization[theta]:=theta+r1 dtheta1;
MHA2/: Renormalization[MHA2]:=MHA2+r1 dMHA21;
Th1/:Renormalization[Th1]:=r1 dTh1;
Th2/:Renormalization[Th2]:=r1 dTh2;
vs/:Renormalization[vs]:=vs+r1 dvs1;
d2/:Renormalization[d2]:=d2+r1 dd21;

(*SM model Parameters*)
MW2/: Renormalization[MW2]:=MW2 + r1 dMWsq1;
MZ2/: Renormalization[MZ2]:=MZ2 + r1 dMZsq1;
EL/: Renormalization[EL]:= (1+r1 dZe1)EL;
SW/: Renormalization[SW]:=SW+r1 dSW1;
vev /: Renormalization[vev]:=vev+r1 dvev1;
CW /: Renormalization[CW]:=CW+ r1 dCW1;
Mf/: Renormalization[Mf[type_,f1_]]:=Mf[type,f1]+ r1 dMf1[type,f1];
VCKM/: Renormalization[VCKM[i_,j_]]:=VCKM[i,j] + r1 dVCKM[i,j];
VCKMC/: Renormalization[VCKMC[i_,j_]]:=VCKMC[i,j] + r1 dVCKMC[i,j];
