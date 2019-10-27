(* ::Package:: *)

Needs["FeynCalc`"];


(**)
TypeFermion=1;
TypeBoson=2;
TypeGhost=3;
QuantumField/: FieldCharge[QuantumField[f_,args___]]:=FieldCharge[f];
QuantumField/: FieldCharge[QuantumField[Subscript[f_,r_],args___]]:=FieldCharge[f];
QuantumField/: FieldType[QuantumField[f_,args___]]:=FieldType[f];
QuantumField/: FieldType[QuantumField[Subscript[f_,r_],args___]]:=FieldType[f];
QuantumField[0,args___]:=0;
QuantumField[Subscript[0,r_],args___]:=0;
QuantumField[FCPartialD[LorentzIndex[index__]],Subscript[0,r_],args___]:=0;
Subscript/: FieldCharge[Subscript[f_,r_]]:=FieldCharge[f];
Subscript/: HCbar[Subscript[f_,r_]]:=Subscript[HCbar[f],r];
SetAttributes[FieldCharge,Listable];


(*Scalar Fields and their renormalization*)

(*Scalar Fields at Tree level*)
(*The two doublets and corresponding Charged Conjugate*)
Phi={QuantumField[Gp],(vev+H+I QuantumField[G0])/Sqrt[2]};
PhiC={QuantumField[Gm],(vev+H-I QuantumField[G0])/Sqrt[2]};
CS=(vs+s+I QuantumField[HA])/Sqrt[2];
CSC=(vs+s-I QuantumField[HA])/Sqrt[2];


(*Definition of the CP-even fields in terms of physics fields, by the rotation matrix of theta*)
{H,s}=RotationMatrix[theta].{QuantumField[h1],QuantumField[h2]};


(*Field Renormalization AND some other information*)
h1 /: RenormalizationInfo[h1] := {FieldNormalization[{h1,h2}], QuantumField/@(Subscript[#,R]&/@{h1, h2}), 1,TypeBoson};
h2 /: RenormalizationInfo[h2] := {FieldNormalization[{h1,h2}], QuantumField/@(Subscript[#,R]&/@{h1, h2}), 2,TypeBoson};
h1 /: FieldType[h1] := TypeBoson;
h1 /: FieldCharge[h1] := 0;
h2 /: FieldType[h2] := TypeBoson;
h2 /: FieldCharge[h2] := 0;

G0/: RenormalizationInfo[G0]:={FieldNormalization[{G0,HA}],QuantumField/@(Subscript[#,R]&/@{G0,HA}),1,TypeBoson};
HA/: RenormalizationInfo[HA]:={FieldNormalization[{G0,HA}],QuantumField/@(Subscript[#,R]&/@{G0,HA}),2,TypeBoson};
G0 /: FieldType[G0] := TypeBoson;
G0 /: FieldCharge[G0] := 0;
HA /: FieldType[HA] := TypeBoson;
HA /: FieldCharge[HA] := 0;

Gp/: RenormalizationInfo[Gp]:={FieldNormalization[{Gp,Gp}],QuantumField/@(Subscript[#,R]&/@{Gp,0}),1,TypeBoson};
Gp /: FieldType[Gp] := TypeBoson;
Gp /: FieldCharge[Gp] := 1;

Gm/: RenormalizationInfo[Gm]:={FieldNormalization[{Gp,Gp}],QuantumField/@(Subscript[#,R]&/@{Gm,0}),1,TypeBoson};
Gm /: FieldType[Gm] := TypeBoson;
Gm /: FieldCharge[Gm] := -1;


ScalarList:=QuantumField[#]&/@{h1,h2,Gp,Gm,G0,HA};
RenormalizedScalarList:=QuantumField[Subscript[#,R]]&/@{h1,h2,Gp,Gm,G0,HA};


(*Gauge Fields and their renormalization*)
(*Gauge covariant derivative: always use -1 convention Subscript[D, \[Mu]]=\!\(
\*SubscriptBox[\(\[PartialD]\), \(\[Mu]\)]\(-ig\)\)\[Sigma]^a/2Subsuperscript[W, \[Mu], a]+ig'Y/2Subscript[B, \[Mu]]*)
Wi[mu_]:={W1[mu],W2[mu],W3[mu]};
Bi[mu_]:=BB[mu];

W1[mu_]:=1/Sqrt[2](QuantumField[Wp,{mu}]+QuantumField[Wm,{mu}]);
W2[mu_]:=I/Sqrt[2](QuantumField[Wp,{mu}]-QuantumField[Wm,{mu}]);

W3[mu_]:=CW QuantumField[Z,{mu}]-SW QuantumField[gamma,{mu}];
BB[mu_]:=SW QuantumField[Z,{mu}]+CW QuantumField[gamma,{mu}];


(*Field Renormalization*)
Wp/: RenormalizationInfo[Wp,mu_:mu]:={FieldNormalization[{W,W}],{QuantumField[Subscript[Wp,R],{mu}],0},1,TypeBoson};
Wm/: RenormalizationInfo[Wm,mu_:mu]:={FieldNormalization[{W,W}],{QuantumField[Subscript[Wm,R],{mu}],0},1,TypeBoson};
Wp /: FieldType[Wp] := TypeBoson;
Wp /: FieldCharge[Wp] := 1;
Wm /: FieldType[Wm] := TypeBoson;
Wm /: FieldCharge[Wm] := -1;

Z/: RenormalizationInfo[Z,mu_:mu]:={FieldNormalization[{Z,A}],QuantumField[#,{mu}]&/@(Subscript[#,R]&/@{Z,gamma}),1,TypeBoson};
gamma/: RenormalizationInfo[gamma,mu_:mu]:={FieldNormalization[{Z,A}],QuantumField[#,{mu}]&/@(Subscript[#,R]&/@{Z,gamma}),2,TypeBoson};
Z /: FieldType[Z] := TypeBoson;
Z /: FieldCharge[Z] := 0;
gamma /: FieldType[gamma] := TypeBoson;
gamma /: FieldCharge[gamma] := 0;

GaugeBosonList[Index_]:=QuantumField[#,{Index}]&/@{Wp,Wm,Z,gamma};
RenormalizedGaugeBosonList[Index_]:=QuantumField[Subscript[#,R],{Index}]&/@{Wp,Wm,Z,gamma};


(*Fermion Field and their renormalization*)

(*Here I used the SUNIndex place to hold the flavor and Color Index, *)
(*So they should be treated properly to avoid some automatical calculation within the SU(N) Group by FeynCalc*)
Bar[f_[args___]]:=f[args]/.{PL->PR,PR->PL,SumOver[j_,n_]:>SumOver[ToExpression[ToString[j]<>"bar"],n],
ULC[type_,i_,j_]:>UL[type,ToExpression[ToString[j]<>"bar"],i],URC[type_,i_,j_]:>UR[type,ToExpression[ToString[j]<>"bar"],i],
QuantumField[FF_,{},{j_,c_}]:>QuantumField[HCbar[FF],{},{ToExpression[ToString[j]<>"bar"],c}],
QuantumField[FF_,{},{j_}]:>QuantumField[HCbar[FF],{},{j}]
};

QL[i_,c_]:=Module[{jUpL,jDownL},PL*{SumOver[jUpL,NF]*ULC[3,i,jUpL]*QuantumField[FUp,{},{jUpL,c}],SumOver[jDownL,NF]*ULC[4,i,jDownL]*QuantumField[FDown,{},{jDownL,c}]}];
(*QLbar[i_,c_]:=PR*{SumOver[jUpLbar,NF]*UUC[i,jUpLbar]*QuantumField[FUpbar,{},{jUpLbar,c}],SumOver[jDownLbar,NF]*UDC[i,jDownLbar]*QuantumField[FDownbar,{},{jDownLbar,c}]};*)

uR[i_,c_]:=Module[{jUR},PR*SumOver[jUR,NF]*URC[3,i,jUR]*QuantumField[FUp,{},{jUR,c}]];
(*URbar[i_,c_]:=PL*SumOver[jURbar,NF]*UUC[i,jURbar]*QuantumField[FUpbar,{},{jURbar,c}];*)

dR[i_,c_]:=Module[{jDR},PR*SumOver[jDR,NF]*URC[4,i,jDR]*QuantumField[FDown,{},{jDR,c}]];
(*DRbar[i_,c_]:=PL*SumOver[jDRbar,NF]*UDC[i,jDRbar]*QuantumField[FDownbar,{},{jDRbar,c}];*)

LL[i_]:=PL*{QuantumField[FNu,{},{i}],QuantumField[Fe,{},{i}]};
(*LLbar[i_]:=PR*{QuantumField[FNubar,{},{i}],QuantumField[Febar,{},{i}]};*)

eR[i_]:=PR*QuantumField[Fe,{},{i}];
(*eRbar[i_]:=PL*QuantumField[Febar,{},{i}];*)

HCbar/:RenormalizationInfoFL[HCbar[f_],flavor_,c___]:=RenormalizationInfoFL[f,flavor,c]/.{f->HCbar[f]};
HCbar/:RenormalizationInfoFR[HCbar[f_],flavor_,c___]:=RenormalizationInfoFR[f,flavor,c]/.{f->HCbar[f]};
HCbar/:FieldType[HCbar[f_]]:=FieldType[f];
HCbar/:FieldCharge[HCbar[f_]]:=-FieldCharge[f];

FNu/:RenormalizationInfoFL[FNu,flavor_]:={#1,QuantumField[Subscript[FNu,R],{},{#2}],TypeFermion}&@@FieldNormalizationFL[1,flavor];
FNu/:RenormalizationInfoFR[FNu,flavor_]:={0,0,TypeFermion}; (*No Right Handed Neutrino*)
FNu /: FieldType[FNu] := TypeFermion;
FNu /: FieldCharge[FNu] := 0;

Fe/:RenormalizationInfoFL[Fe,flavor_]:={#1,QuantumField[Subscript[Fe,R],{},{#2}],TypeFermion}&@@FieldNormalizationFL[2,flavor];
Fe/:RenormalizationInfoFR[Fe,flavor_]:={#1,QuantumField[Subscript[Fe,R],{},{#2}],TypeFermion}&@@FieldNormalizationFR[2,flavor];
Fe /: FieldType[Fe] := TypeFermion;
Fe /: FieldCharge[Fe] := -1;

FUp/:RenormalizationInfoFL[FUp,flavor_,c_]:={#1,QuantumField[Subscript[FUp,R],{},{#2,c}],TypeFermion}&@@FieldNormalizationFL[3,flavor];
FUp/:RenormalizationInfoFR[FUp,flavor_,c_]:={#1,QuantumField[Subscript[FUp,R],{},{#2,c}],TypeFermion}&@@FieldNormalizationFR[3,flavor];
FUp /: FieldType[FUp] := TypeFermion;
FUp /: FieldCharge[FUp] := 2/3;

FDown/:RenormalizationInfoFL[FDown,flavor_,c_]:={#1,QuantumField[Subscript[FDown,R],{},{#2,c}],TypeFermion}&@@FieldNormalizationFL[4,flavor];
FDown/:RenormalizationInfoFR[FDown,flavor_,c_]:={#1,QuantumField[Subscript[FDown,R],{},{#2,c}],TypeFermion}&@@FieldNormalizationFR[4,flavor];
FDown /: FieldType[FDown] := TypeFermion;
FDown /: FieldCharge[FDown] := -1/3;

FermionList[index_List]:=QuantumField[#,{},index]&/@{FUp,FDown,Fe,FNu};
AntiFermionList[index_List]:=QuantumField[HCbar[#],{},index]&/@{FUp,FDown,Fe,FNu};
RenormalizedFermionList[index_List]:=QuantumField[Subscript[#,R],{},index]&/@{FUp,FDown,Fe,FNu};
RenormalizedAntiFermionList[index_List]:=QuantumField[Subscript[HCbar[#],R],{},index]&/@{FUp,FDown,Fe,FNu};


(*Ghost Fields and their renormalization*)  
GhostWp/:RenormalizationInfo[GhostWp]:={(*FieldNormalization[{UW,UW}]*)DiagonalMatrix[{1,1}],{QuantumField[Subscript[GhostWp,R]],0},1,TypeGhost};                                                                     
GhostWp/:FieldType[GhostWp]:=TypeGhost; 
GhostWp/:FieldCharge[GhostWp]:=1;                                     
GhostWm/:RenormalizationInfo[GhostWm]:={(*FieldNormalization[{UW,UW}]*)DiagonalMatrix[{1,1}],{QuantumField[Subscript[GhostWm,R]],0},1,TypeGhost};                                                      
GhostWm/:FieldType[GhostWm]:=TypeGhost;                                                              
GhostWm/:FieldCharge[GhostWm]:=-1;                                                               
GhostZ/:RenormalizationInfo[GhostZ]:={(*FieldNormalization[{UZ,UA}]*)DiagonalMatrix[{1,1}],{QuantumField[Subscript[GhostZ,R]],QuantumField[Subscript[GhostA,R]]},1,TypeGhost};
GhostZ/:FieldType[GhostZ]:=TypeGhost; 
GhostZ/:FieldCharge[GhostZ]:=0;                                                                              
GhostA/:RenormalizationInfo[GhostA]:={(*FieldNormalization[{UZ,UA}]*)DiagonalMatrix[{1,1}],{QuantumField[Subscript[GhostZ,R]],QuantumField[Subscript[GhostA,R]]},2,TypeGhost};                                                    
GhostA/:FieldCharge[GhostA]:=0;
HCbar/:RenormalizationInfo[HCbar[f_]]:=RenormalizationInfo[f]/.{f->HCbar[f]}; 
