#!/bin/bash

# Generate the panelized PCB
/Applications/KiCad/KiCad.app/Contents/Frameworks/Python.framework/Versions/Current/bin/kikit panelize \
    --layout 'grid; rows: 4; cols: 2; space: 2mm; hbackbone: 4mm; hboneskip: 1' \
    --tabs 'annotation' \
    --cuts 'mousebites; drill: 0.6mm; spacing: 1mm; offset: 0.8mm; prolong: 0mm' \
    --framing 'frame; width: 5mm; space: 2mm; cuts: h; fillet: 0.5mm' \
    --post 'millradius: 1mm' \
    --copperfill 'solid; edgeclearance: 0mm; layers: all' \
    --fiducials '4fid; hoffset: 2.5mm; voffset: 3.85mm; coppersize: 1mm; opening: 2mm;' \
    --tooling '4hole; hoffset: 8mm; voffset: 2.5mm; size: 1.152mm; soldermaskmargin: 0.148mm' \
    --post 'refillzones: true; copperfill: true' \
    --text 'simple; text: JLCJLCJLCJLC; anchor: mt; voffset: 2.5mm; hjustify: center; vjustify: center;' \
    --text2 'simple; text: Created on {date} {time24}; anchor: mb; voffset: -2.5mm; hjustify: center; vjustify: center;' \
    ../pixie-device.kicad_pcb panel.kicad_pcb

# Update all project-specific 3D models
sed -i pre-sed 's/{KIPRJMOD}/{KIPRJMOD}\/../' panel.kicad_pcb
