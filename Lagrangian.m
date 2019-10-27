(* ::Package:: *)

(*Here We don't include SM part (except for the Higgs-related part), we adapt all the convention as in the SM.mod in FeynArts for SM*)


(*Scalar Potential*)
LSPFile="LagrangianData/LScalarPotentialPhysics.dat";
LSPTransformationFile="LagrangianData/LScalarPotentialParameterTransformation.dat";
If[FileExistsQ[LSPFile],Print["Reading Potential Lagrangian From File: "<>LSPFile<>"......"];LScalarPotentialPhysics=Get[LSPFile];,
Print["Calculating the Potential Lagrangian......"];
Tmu2=mu2*PhiC.Phi;
TLam=Lam*(PhiC.Phi)^2;
Tdel2=del2/2*(PhiC.Phi)*(CSC CS);
Ta1=a1 (CS + CSC);
Tb1=b1/2*(CSC^2+CS^2);
Tb2=b2/2*(CSC CS);
Td2=d2/4*(CSC CS)^2;

VScalarPotential = Tmu2 + TLam + Tdel2 + Ta1 + Tb1 + Tb2 + Td2;

(*Tree level reorganization, using as many physics parameters as possible *)
Vh1 = D[VScalarPotential,QuantumField[h1]]/.{QuantumField[___]:>0}//FullSimplify;
Vh2 = D[VScalarPotential,QuantumField[h2]]/.{QuantumField[___]:>0}//FullSimplify;
VMh11 = D[VScalarPotential,{QuantumField[h1],2}]/.{QuantumField[___]:>0}//FullSimplify;
VMh22 = D[VScalarPotential,{QuantumField[h2],2}]/.{QuantumField[___]:>0}//FullSimplify;
VMh12 = D[VScalarPotential,QuantumField[h1],QuantumField[h2]]/.{QuantumField[___]:>0}//FullSimplify;
VMAA2 = D[VScalarPotential,{QuantumField[HA],2}]/.{QuantumField[___]:>0}//FullSimplify;

Print["...... Generating the rules transforming from Lagrangian parameters to physics parameters ......"];
(*First replace the parameters in the quadratic terms by the Tadpole parameter, which should be 0 at tree level *)
VacuumRequirement=Solve[{Vh1==Th1,Vh2==Th2},{mu2,a1}]//Simplify;
(*Then replace other parameters by the physical masses using the Tree-level relation, i.e. THH=0 and THL=0*)
PhysicalParameter=Solve[{
(VMh11/.VacuumRequirement[[1]]/.{Th1->0,Th2->0})==Mh12,
(VMh22/.VacuumRequirement[[1]]/.{Th1->0,Th2->0})==Mh22,
(VMAA2/.VacuumRequirement[[1]]/.{Th1->0,Th2->0})==MHA2,
(VMh12/.VacuumRequirement[[1]]/.{Th1->0,Th2->0})==0},{Lam,del2,b1,b2}]//Simplify;
ReorganizationRules=Join[VacuumRequirement[[1]],PhysicalParameter[[1]]];
(*ReorganizationRules=Solve[{Vh1==Th1,Vh2==Th2,VMh11==Mh11,VMh22==Mh22,VMh12==0,VMAA2==MHA2},{mu2,Lam,del2,b1,b2,d2}];*)

Print["...... Simplify the parameter transformation rules. This will take long time, Be patient ......"];
ReorganizationRules=Collect[ReorganizationRules,{Th1,Th2,Mh12,Mh22,MHA2},Simplify];
Put[ReorganizationRules,LSPTransformationFile];
Print["...... Collecting the new Scalar potential. This will take long time, Be patient ......"];
Tmu2=Simplify[Tmu2//.ReorganizationRules];
TLam=Simplify[TLam//.ReorganizationRules];
Tdel2=Simplify[Tdel2//.ReorganizationRules];
Ta1=Simplify[Ta1//.ReorganizationRules];
Tb1=Simplify[Tb1//.ReorganizationRules];
Tb2=Simplify[Tb2//.ReorganizationRules];
Td2=Simplify[Td2//.ReorganizationRules];


VScalarPotentialPhysics = Tmu2 + TLam + Tdel2 + Ta1 + Tb1 + Tb2 + Td2;
LScalarPotentialPhysics = -VScalarPotentialPhysics;
Put[LScalarPotentialPhysics,LSPFile];
];


(*Scalar Kinetic*)
LSKFile="LagrangianData/LScalarKinetic.dat";
If[FileExistsQ[LSKFile],Print["Reading Scalar Kinetic Terms From File: "<>LSKFile<>"......"];LScalarKinetic=Get[LSKFile];,
PartialDSelf[f_,mu_]:=RightPartialD[mu].f;
CovariantDoubletD[f_List,mu_]:=(ExpandPartialD[(PartialDSelf[#,mu]&/@f)]/.{RightPartialD[LorentzIndex[nu_]]:>0})-I EL/(2 SW)(Plus@@(PauliSigma[]*Wi[mu])).f+I EL/(2 CW) (IdentityMatrix[2]*BB[mu]).f;
CovariantDoubletDC[f_List,mu_]:=(ExpandPartialD[(PartialDSelf[#,mu]&/@f)]/.{RightPartialD[LorentzIndex[nu_]]:>0})+I EL/(2 SW)(Plus@@(Conjugate[PauliSigma[]]*Wi[mu])).f-I EL/(2 CW) (IdentityMatrix[2]*BB[mu]).f;
Print["Calculating the Scalar Kinetic Terms......"];
LScalarKineticPre=Module[{mu},Simplify[CovariantDoubletDC[PhiC,mu].CovariantDoubletD[Phi,mu]+(ExpandPartialD[RightPartialD[mu].CS]/.{RightPartialD[LorentzIndex[nu_]]:>0})(ExpandPartialD[RightPartialD[mu].CSC]/.{RightPartialD[LorentzIndex[nu_]]:>0})]];
LScalarKinetic=LScalarKineticPre//Expand;
LScalarKinetic=LScalarKinetic//.{QuantumField[FCPartialD[index_],F_,args___]^2:>-QuantumField[F,args] QuantumField[FCPartialD[index],FCPartialD[index],F,args],
QuantumField[FCPartialD[index_],F1_,args1___]QuantumField[FCPartialD[index_],F2_,args2___]:>-QuantumField[F1,args1] QuantumField[FCPartialD[index],FCPartialD[index],F2,args2]};
Put[LScalarKinetic,LSKFile];
];


(*Yukawa*)
YukawaFilePrefix="LagrangianData/LYukawa";
isigma2=I {{0,-I},{I,0}};

If[FileExistsQ[YukawaFilePrefix<>".dat"],
Print["Reading Yukawa Lagrangian From File: "<>YukawaFilePrefix<>".dat"<>"......"];
LYukawa=Get[YukawaFilePrefix<>".dat"];,
Print["Calculating Yukawa Lagrangian......"];
LTypeU=Module[{i,j,qc},(SumOver[i,NF]SumOver[j,NF]Sqrt[2] Gf[3,i,j]/(vev))((Bar[QL[i,qc]].(isigma2.PhiC))uR[j,qc])+(SumOver[i,NF]SumOver[j,NF]Sqrt[2] GfC[3,i,j]/(vev))((QL[j,qc].(isigma2.Phi))Bar[uR[i,qc]])];
LTypeD=Module[{i,j,qc},(SumOver[i,NF]SumOver[j,NF]Sqrt[2] Gf[4,i,j]/(vev))((Bar[QL[i,qc]].Phi)dR[j,qc])+(SumOver[i,NF]SumOver[j,NF]Sqrt[2] GfC[4,i,j]/(vev))((QL[j,qc].PhiC)Bar[dR[i,qc]])];
LTypeL=Module[{i,j},(SumOver[i,NF]SumOver[j,NF]Sqrt[2] Gf[2,i,j]/(vev))((Bar[LL[i]].Phi)eR[j]+(LL[j].PhiC)Bar[eR[i]])(*//Simplify*)];
LYukawa=-(LTypeU + LTypeD + LTypeL);
Put[LYukawa,YukawaFilePrefix<>".dat"];
];


Gf[2,i_,j_]:=Mf[2,i]IndexDelta[i,j];
GfC[2,i_,j_]:=Mf[2,i]IndexDelta[i,j];
Gf[type_,i_,j_]:=Module[{k},SumOver[k,NF]Mf[type,k]ULC[type,i,k]UR[type,k,j]];
GfC[type_,i_,j_]:=Module[{k},SumOver[k,NF]Mf[type,k]URC[type,i,k]UL[type,k,j]];


(*Ghost Lagrangian: Only S-U-U part, it is assumed that this part has already been renormalized*)
LGhostFile="LagrangianData/LGhost.dat";
If[FileExistsQ[LGhostFile],Print["Reading Ghost Terms From File: "<>LGhostFile<>"......"];LGhost=Get[LGhostFile];,
Print["Calculating the Ghost Lagrangian......"];
GhostDD[args_]:=Coefficient[args,\[Theta]A] QuantumField[GhostA]+Coefficient[args,\[Theta]Z]QuantumField[GhostZ]+Coefficient[args,\[Theta]p]QuantumField[GhostWp]+Coefficient[args,\[Theta]m]QuantumField[GhostWm];
LGhost:=QuantumField[HCbar[GhostZ]]GhostDD[FZ/.{QuantumField[arg_]:>DGT[arg]}/.ScalarTransformation[[1]]]+QuantumField[HCbar[GhostWp]]GhostDD[FP/.{QuantumField[arg_]:>DGT[arg]}/.ScalarTransformation[[1]]]+QuantumField[HCbar[GhostWm]]GhostDD[FM/.{QuantumField[arg_]:>DGT[arg]}/.ScalarTransformation[[1]]];
Put[LGhost,LGhostFile];
]


(*Gauge Fixing terms, only goldstone part, And we assume that the gauge fixing terms are expressed in terms of renormalized variables, so no need to renormalize them.
ISSUE: It seems that the mass terms provided by these gauge fixing terms are not used in determining the renormalization constants in G0-A and G^\[PlusMinus]-H^\[PlusMinus] sector. 
*)
LGaugeFixFile="LagrangianData/LGaugeFix.dat";
LGaugeFixReFile="LagrangianData/LGaugeFixRe.dat";
If[FileExistsQ[LGaugeFixFile],Print["Reading Gauge Fixing Terms From File: "<>LGaugeFixFile<>"......"];LGaugeFix=Get[LGaugeFixFile];,
LGaugeFix=-1/2/RXi[Z] FZ^2-1/RXi[W]FP FM;
Put[LGaugeFix,LGaugeFixFile];
];
LGaugeFixRe=List@@Expand[LGaugeFix]/.{QuantumField[f_]:>QuantumField[Subscript[f,R]]};
Put[{LGaugeFixRe,{}},LGaugeFixReFile];
