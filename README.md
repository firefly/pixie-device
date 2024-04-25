Firefly Pixie: Hardware
=======================

The hardware design, schematics and PCB layouts for the Firefly
Pixie Hardware Wallet for Ethereum (and ilk).

- [Firmware](https://github.com/firefly/pixie-firmware)
- [Case](https://github.com/firefly/pixie-case)

To modify the files, the open-source EDA application,
[KiCad](https://www.kicad.org), is necessary.

See the [CHANGELOG](./CHANGELOG.md) for high-level changes
between board revisions.


Firefly Pixie Tech Specs
------------------------

- **Processor:** ESP32-C3 (32-bit RISC-V)
- **Speed:** 160Mhz
- **Memory:** 400kb RAM, 16Mb Flash, 4kb eFuse
- **Inputs:** 4x tactile buttons
- **Outputs:**
  - 240x240px IPS 1.3" display (16-bit color)
  - 4x RGB LED (WS2812B)
- **Conectivity:**
  - USB-C
  - BLE


Photos
-----------

See the [output](./output/) folder for rendered schematics, PCBs
and 3D renders along with photos of the various revisions.

<p align="center">
  <img src="./output/rev-4/render-front.jpg" width="350" title="Front of Firefly Pixie">
  <img src="./output/rev-4/render-back.jpg" width="350" alt="Back of Firefly Pixie">
</p>


License
-------

MIT License. *(some dependenceies are BSD Licensed)*
