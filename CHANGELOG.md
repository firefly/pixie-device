Change Log
==========

Since the KiCAD files don't diff well, this list of changes
is maintained in a relatively manual manner, designed to help
keep developers up to date on the more broad cahnges made to
the device hardware.

Rev.6
-----

- Moved LEDK trace to B.cu (from In2.cu)
- Updated footprint for Crystal to match newer part and allow more space for the GPIO traces
- Updated all files and footprints from KiCAD 7 to KiCAD 8
- Added 3D models for Oval Button and WS2812c
- PCB Batch:
  - X devices
  - ENIG, 0.8mm, mouse-bites, purple mask
  - 2x3 panels

Rev.5
-----

- added GPIO 20 and 21 pads for debugging and extending hardware interfaces (including adding 499 ohm resistor to GPIO 21)
- Added test points for v5, v3.3, reset, boot and ground for debugging and extending hardware
- Added 3 more LED; one per button
- Use mouse bites instead of V-cut for rounded corners and better exposing the trench for the sunk USB port
- Added firefly pin punch out to test panelizing
- Relocated regulator for better FPC clearance
- Changed FPC part and footprint due to inventory constraints
- Added solder paste to USB shield PTH for better structural support
- PCB Batch
  - 25 devices
  - ENIG, 0.8mm, mouse-bites, green mask
  - panel testing; 1 device + 1 pin per 7x7 panel

Rev.4
-----

- added LED to button 2 along with level shifter
- change logo flame to B.Mask from silkscreen so exposed copper is used for flame
- Change to Esp32 c3 chip with external 16mb storage (based on the WROOM layout)
- PCB Batch
  - 10 devices
  - HASL, 1.6mm, v-cut, green mask

Rev.2
-----

- Initial ESP32-c3 based device
- Uses ESP32c3-mini-1 module
- PCB Batch
  - 10 devices
  - HASL, 1.6mm, v-cut, green mask

Notes
-----

Early prototypes were based on ATmega and had multiple versions
in flight, prior to establishing a clear versioning policy. As
such there is a prior `rev.2` board completely unrelated to the
