v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 760 -490 760 -470 { lab=VDD}
N 760 -410 760 -390 { lab=GND}
N 1280 -40 1280 -20 { lab=GND}
N 1280 -120 1280 -100 { lab=#net1}
N 750 -160 750 -140 { lab=GND}
N 750 -240 750 -220 { lab=#net2}
N 750 -320 750 -300 { lab=INP}
N 750 -320 770 -320 { lab=INP}
N 1260 -520 1260 -500 { lab=GND}
N 1120 -520 1120 -500 { lab=VDD}
N 1000 -360 1020 -360 { lab=INP}
N 1000 -280 1020 -280 { lab=INM}
N 1710 -230 1710 -210 { lab=GND}
N 1710 -320 1710 -290 { lab=OUT}
N 1280 -140 1280 -120 { lab=#net1}
N 1440 -140 1440 -100 { lab=INM}
N 1440 -40 1440 -20 { lab=GND}
N 1440 -120 1460 -120 { lab=INM}
N 1440 -220 1440 -200 { lab=OUT}
N 1360 -320 1440 -320 { lab=OUT}
N 1440 -320 1710 -320 { lab=OUT}
N 1440 -320 1440 -220 {
lab=OUT}
C {devices/code_shown.sym} 68.75 -841.875 0 0 {name=NGSPICE
only_toplevel=true
value="
.param CM_VOLTAGE = 0.9
.control
save all
ac dec 200 10 1000Meg
settype decibel out
plot vdb(out)
let phase_val = 180/PI*cph(out)
let PM_val = 180 + 180/PI*cph(out)
settype phase phase_val
plot phase_val
meas ac PM FIND PM_val WHEN vdb(out)=0
meas ac GBW WHEN vdb(out)=0
op

let id1  = @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
let id2  = @m.x1.xm2.msky130_fd_pr__nfet_01v8_lvt[id]
let id3  = @m.x1.xm3.msky130_fd_pr__pfet_01v8_lvt[id]
let id4  = @m.x1.xm4.msky130_fd_pr__pfet_01v8_lvt[id]
let id5  = @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[id]
let id6  = @m.x1.xm6.msky130_fd_pr__nfet_01v8_lvt[id]
let id7  = @m.x1.xm7.msky130_fd_pr__nfet_01v8_lvt[id]
let id8  = @m.x1.xm8.msky130_fd_pr__nfet_01v8_lvt[id]

let gm1  = @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
let gm2  = @m.x1.xm2.msky130_fd_pr__nfet_01v8_lvt[gm]
let gm3  = @m.x1.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]
let gm4  = @m.x1.xm4.msky130_fd_pr__pfet_01v8_lvt[gm]
let gm5  = @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[gm]
let gm6  = @m.x1.xm6.msky130_fd_pr__nfet_01v8_lvt[gm]
let gm7  = @m.x1.xm7.msky130_fd_pr__nfet_01v8_lvt[gm]
let gm8  = @m.x1.xm8.msky130_fd_pr__nfet_01v8_lvt[gm]

let cgs5  = @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[cgg]

print v(inp)
print v(inm)
print v(out)

print cgs5
print id1
print id2
print id5
print gm1
print gm2
print gm5
.endc
"}
C {devices/vsource.sym} 760 -440 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 760 -390 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 760 -490 0 0 {name=l3 sig_type=std_logic lab=VDD
}
C {devices/isource.sym} 1280 -70 2 0 {name=I0 value=1u
}
C {devices/gnd.sym} 1280 -20 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 750 -190 0 0 {name=V2 value=\{CM_VOLTAGE\}}
C {devices/gnd.sym} 750 -140 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 750 -270 0 0 {name=V3 value="AC 1"}
C {devices/lab_pin.sym} 770 -320 2 0 {name=l18 sig_type=std_logic lab=INP
}
C {devices/lab_pin.sym} 1000 -360 0 0 {name=l19 sig_type=std_logic lab=INP
}
C {devices/lab_pin.sym} 1000 -280 0 0 {name=l20 sig_type=std_logic lab=INM
}
C {devices/lab_pin.sym} 1120 -520 0 0 {name=l21 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} 1260 -520 2 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 1710 -320 2 0 {name=l23 sig_type=std_logic lab=OUT
}
C {devices/capa.sym} 1710 -260 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1710 -210 0 0 {name=l24 lab=GND}
C {devices/capa.sym} 1440 -70 0 0 {name=C2
m=1
value=5G
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1440 -20 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1460 -120 0 1 {name=l6 sig_type=std_logic lab=INM
}
C {/foss/designs/LASCAS2024_AnalogOSIC/OTA_LASCAS2024.sym} 1180 -320 0 0 {name=x1}
C {devices/ind.sym} 1440 -170 0 0 {name=L5
m=1
value=5G
footprint=1206
device=inductor}
C {devices/code.sym} 680 -770 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
