v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -30 160 -30 {lab=#net1}
N 160 -110 160 -30 {lab=#net1}
N -270 -110 160 -110 {lab=#net1}
N -270 -110 -270 -40 {lab=#net1}
N -270 20 -270 60 {lab=GND}
N -270 60 160 60 {lab=GND}
N 160 10 160 60 {lab=GND}
N 140 10 160 10 {lab=GND}
N -20 60 -20 110 {lab=GND}
N 140 -10 210 -10 {lab=out}
N 210 -20 210 -10 {lab=out}
C {ring_osci.sym} -10 -10 0 0 {name=x1}
C {devices/gnd.sym} -20 110 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -270 -10 0 0 {name=V1 value=1.8 savecurrent=false}
C {sky130_fd_pr/corner.sym} 310 -170 0 0 {name=CORNER only_toplevel=false corner=ff}
C {devices/code_shown.sym} 340 10 0 0 {name=spice only toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
tran 1ps 10ns
plot out
op
.endc
"
}
C {devices/lab_pin.sym} 210 -20 0 0 {name=p1 sig_type=std_logic lab=out}
