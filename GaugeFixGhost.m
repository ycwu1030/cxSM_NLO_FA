(* ::Package:: *)

(*The Gauge Fixing and Ghost related Terms*)

(*Gauge Transformation*)
(*For Gauge boson part, temporarily ignore the partial derivative part *)
gamma/:GaugeTransform[gamma]:=-I EL (Wp \[Theta]m- Wm \[Theta]p);
Z/:GaugeTransform[Z]:=I EL/SW CW (Wp \[Theta]m-Wm \[Theta]p);
Wp/:GaugeTransform[Wp]:=I EL/SW (\[Theta]p(Z CW-gamma SW)-(\[Theta]Z CW-\[Theta]a SW)Wp);
Wm/:GaugeTransform[Wm]:=-I EL/SW(\[Theta]m(Z CW-gamma SW)-(\[Theta]Z CW-\[Theta]a SW)Wm);


(*Scalar Part, temporarily only have expression for doublet*)
DoubletGaugeTransform=-I/2{{EL/SW(CW^2-SW^2)/CW \[Theta]Z-2 EL \[Theta]A,Sqrt[2]EL/SW \[Theta]p},{Sqrt[2]EL/SW \[Theta]m,-EL/SW/CW \[Theta]Z}};
DoubletGaugeTransformC=I/2{{EL/SW(CW^2-SW^2)/CW \[Theta]Z-2 EL \[Theta]A,Sqrt[2]EL/SW \[Theta]m},{Sqrt[2]EL/SW \[Theta]p,-EL/SW/CW \[Theta]Z}};
dPhi=Phi/.{QuantumField[arg__]:>DGT[arg],vev->0};
dPhiC=PhiC/.{QuantumField[arg__]:>DGT[arg],vev->0};

(*For Gauge singlet*)
dCS=CS/.{QuantumField[arg__]:>DGT[arg],vev->0,vs->0};
dCSC=CSC/.{QuantumField[arg__]:>DGT[arg],vev->0,vs->0};


ScalarTransformation=Solve[{
dPhi[[1]]==(DoubletGaugeTransform.Phi)[[1]],
dPhi[[2]]==(DoubletGaugeTransform.Phi)[[2]],
dPhiC[[1]]==(DoubletGaugeTransformC.PhiC)[[1]],
dPhiC[[2]]==(DoubletGaugeTransformC.PhiC)[[2]],
dCS==0,dCSC==0
(*dPhi2[[1]]==(DoubletGaugeTransform.Phi2)[[1]],
dPhi2[[2]]==(DoubletGaugeTransform.Phi2)[[2]],
dPhi2C[[1]]==(DoubletGaugeTransformC.Phi2C)[[1]],
dPhi2C[[2]]==(DoubletGaugeTransformC.Phi2C)[[2]]*)
},
Union[Cases[Level[{dPhi,dPhiC,dCS,dCSC},Infinity],_DGT]]]//Simplify;


(*Gauge Fixing terms*)
(*FA:=RightPartialD[mu].QuantumField[Subscript[gamma,R],{mu}];*)
FZ:=(*RightPartialD[mu].QuantumField[Subscript[Z,R],{mu}]*)-RXi[Z]MZ QuantumField[G0];
FP:=(*RightPartialD[mu].QuantumField[Subscript[Wp,R],{mu}]*)-I RXi[Wp]MW QuantumField[Gp];
FM:=(*RightPartialD[mu].QuantumField[Subscript[Wm,R],{mu}]*)+I RXi[Wp]MW QuantumField[Gm];
