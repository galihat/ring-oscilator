v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 3520 -2190 3520 -2080 {lab=#net1}
N 3850 -2190 3850 -2120 {lab=#net1}
N 3520 -2020 3520 -1920 {lab=GND}
N 3520 -1920 3710 -1920 {lab=GND}
N 3710 -1920 3850 -1920 {lab=GND}
N 3850 -1950 3850 -1920 {lab=GND}
N 3600 -2020 3600 -1920 {lab=GND}
N 3520 -2190 3850 -2190 {lab=#net1}
N 3790 -2090 3810 -2090 {lab=#net2}
N 3790 -2090 3790 -1980 {lab=#net2}
N 3790 -1980 3810 -1980 {lab=#net2}
N 3600 -2090 3600 -2080 {lab=#net2}
N 3600 -2090 3790 -2090 {lab=#net2}
N 3850 -2060 3850 -2010 {lab=#net3}
N 3850 -2090 3890 -2090 {lab=#net1}
N 3890 -2090 3930 -2090 {lab=#net1}
N 3930 -2190 3930 -2090 {lab=#net1}
N 3850 -2190 3930 -2190 {lab=#net1}
N 3850 -1980 3940 -1980 {lab=GND}
N 3940 -1980 3940 -1920 {lab=GND}
N 3850 -1920 3940 -1920 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 3830 -1980 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 3830 -2090 0 0 {name=M2
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
C {sky130_fd_pr/corner.sym} 4060 -2140 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} 3520 -2050 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 3600 -2050 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} 3710 -1920 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 4080 -1980 0 0 {name=spice only toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
dc v2 0 1.8 0.01
plot net2 net3
op
.endc
"}
