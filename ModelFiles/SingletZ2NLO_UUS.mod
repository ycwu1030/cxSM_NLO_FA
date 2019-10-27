M$CouplingMatrices = Join[ M$CouplingMatrices, {
C[S[4], U[3], -U[3]]==
	{{-(EL*MW*GaugeXi[W])/(2*SW), (dSW1*EL*MW*GaugeXi[W])/(2*SW^2) - (dZe1*EL*MW*GaugeXi[W])/(2*SW) - (dZG0G01*EL*MW*GaugeXi[W])/(4*SW)}},
C[S[4], U[4], -U[4]]==
	{{(EL*MW*GaugeXi[W])/(2*SW), -(dSW1*EL*MW*GaugeXi[W])/(2*SW^2) + (dZe1*EL*MW*GaugeXi[W])/(2*SW) + (dZG0G01*EL*MW*GaugeXi[W])/(4*SW)}},
C[S[5], U[4], -U[2]]==
	{{((I/2)*EL*MZ*GaugeXi[Z])/SW, ((-I/2)*dSW1*EL*MZ*GaugeXi[Z])/SW^2 + ((I/2)*dZe1*EL*MZ*GaugeXi[Z])/SW + ((I/4)*dZGpGp1*EL*MZ*GaugeXi[Z])/SW}},
C[S[5], U[2], -U[3]]==
	{{((I/2)*EL*MW*(-1 + 2*SW^2)*GaugeXi[W])/(CW*SW), ((I/2)*EL*MW*(CW*dSW1 - dCW1*SW)*GaugeXi[W])/(CW^2*SW^2) + ((I/2)*dZe1*EL*MW*(-1 + 2*SW^2)*GaugeXi[W])/(CW*SW) + ((I/4)*dZGpGp1*EL*MW*(-1 + 2*SW^2)*GaugeXi[W])/(CW*SW)}},
C[-S[5], U[3], -U[2]]==
	{{((I/2)*EL*MZ*GaugeXi[Z])/SW, ((-I/2)*dSW1*EL*MZ*GaugeXi[Z])/SW^2 + ((I/2)*dZe1*EL*MZ*GaugeXi[Z])/SW + ((I/4)*dZGpGp1*EL*MZ*GaugeXi[Z])/SW}},
C[-S[5], U[2], -U[4]]==
	{{((I/2)*EL*MW*(-1 + 2*SW^2)*GaugeXi[W])/(CW*SW), ((I/2)*EL*MW*(CW*dSW1 - dCW1*SW)*GaugeXi[W])/(CW^2*SW^2) + ((I/2)*dZe1*EL*MW*(-1 + 2*SW^2)*GaugeXi[W])/(CW*SW) + ((I/4)*dZGpGp1*EL*MW*(-1 + 2*SW^2)*GaugeXi[W])/(CW*SW)}},
C[S[1], U[3], -U[3]]==
	{{((-I/2)*EL*MW*GaugeXi[W])/SW, ((I/2)*dSW1*EL*MW*GaugeXi[W])/SW^2 - ((I/2)*dZe1*EL*MW*GaugeXi[W])/SW - ((I/4)*dZh1h11*EL*MW*GaugeXi[W])/SW}},
C[S[1], U[4], -U[4]]==
	{{((-I/2)*EL*MW*GaugeXi[W])/SW, ((I/2)*dSW1*EL*MW*GaugeXi[W])/SW^2 - ((I/2)*dZe1*EL*MW*GaugeXi[W])/SW - ((I/4)*dZh1h11*EL*MW*GaugeXi[W])/SW}},
C[S[1], U[2], -U[2]]==
	{{((-I/2)*EL*MZ*GaugeXi[Z])/(CW*SW), ((-I/2)*dZe1*EL*MZ*GaugeXi[Z])/(CW*SW) - ((I/4)*dZh1h11*EL*MZ*GaugeXi[Z])/(CW*SW) + ((I/2)*EL*MZ*(CW*dSW1 + dCW1*SW)*GaugeXi[Z])/(CW^2*SW^2)}},
C[S[2], U[3], -U[3]]==
	{{0, ((-I/4)*dZh1h21*EL*MW*GaugeXi[W])/SW}},
C[S[2], U[4], -U[4]]==
	{{0, ((-I/4)*dZh1h21*EL*MW*GaugeXi[W])/SW}},
C[S[2], U[2], -U[2]]==
	{{0, ((-I/4)*dZh1h21*EL*MZ*GaugeXi[Z])/(CW*SW)}},
C[S[3], U[3], -U[3]]==
	{{0, -(dZG0HA1*EL*MW*GaugeXi[W])/(4*SW)}},
C[S[3], U[4], -U[4]]==
	{{0, (dZG0HA1*EL*MW*GaugeXi[W])/(4*SW)}}
}];
