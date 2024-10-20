v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -50 20 -0 {lab=out}
N 20 -20 90 -20 {lab=out}
N -80 -80 -20 -80 {lab=in}
N -80 -80 -80 30 {lab=in}
N -80 30 -20 30 {lab=in}
N 20 -130 20 -110 {lab=vdd}
N 20 -130 110 -130 {lab=vdd}
N 110 -130 110 -80 {lab=vdd}
N 20 -80 110 -80 {lab=vdd}
N 20 60 20 90 {lab=gnd}
N 20 90 120 90 {lab=gnd}
N 120 30 120 90 {lab=gnd}
N 20 30 120 30 {lab=gnd}
N -200 -40 -80 -40 {lab=in}
N -200 -130 20 -130 {lab=vdd}
N -200 80 20 80 {lab=gnd}
C {sky130_fd_pr/nfet_01v8.sym} 0 30 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 0 -80 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -200 -40 0 0 {name=p2 lab=in}
C {devices/ipin.sym} -200 80 0 0 {name=p3 lab=gnd}
C {devices/ipin.sym} -200 -130 0 0 {name=p4 lab=vdd}
C {devices/opin.sym} 90 -20 0 0 {name=p5 lab=out}
