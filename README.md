# Lock-In-Amplifier

This public personal repository was sourced from the VIPM lock-in amplifier plus the addition of a few debugging/research subVIs. This repo include changes like: adding 2 mathematically generated sines from the FPGA for validation purpuses, adding a PLL better suited for digital pulses, and adding a FIR decimation filter as well as the including CIC.

## Software Stack

The development enviroment for this reference architecture is made of:

- LabVIEW 32 bits 2017
- LabVIEW FPGA Module 2017
- FlexRIO Driver 2018
- NI-FGEN 2018
- VIPM Lock-In Amplifier

These software version are not mandatory. I'm just documenting versions used during development in case a 1:1 system needs to be replicated for debugging purposes.

## How to Compile the FPGA VI?

The documentation of the example located in: 

```
C:\Program Files (x86)\National Instruments\LabVIEW ????\examples\Lock-In Amplifier\documentation
```
shares that to re-compile the user should:

_Compiling the FPGA: You will need to regenerate IP integration node support files. To do this, open one of the target projects and open the top-level FPGA VI, "LIA Example FPGA.vi". From the VI, select "Tools»FPGA Module»Regenerate IP Integration Node Support Files...". Then, push_

If you need to recreated the IP Cores from scratch here are some pointers to keep in mind:

1. Use a disable structure to keep a copy of the old CIC Xilinx Core. This will help make sure we keep all signals in the right order as well as keeping the fixed point setting equal to the original implementation.
2. Double check the m_axis_data_tdata fixed point the defaul is for +/- 64,64 but the downstream code expects +/- 64,1
3. A documentation folder in this repo has some extra pictures to help with the setup

## Running the host code

The project consist of two pieces: 

1) Using one of our generators to simulated 2 signals. Both the reference and the small signal are generated by the PXIe-5451. The VI called "...\Lock-In-Amplifier\LIA Debugging\LIA Fgen Dual Channel.vi" has a very simple front panel but settings can be change by manipulating the constants in the block diagram, usually these don't change. By default it will generate 100 KHz 1 V signal and a 100 KHz 5% duty cycle reference square signal. 

2) The "...\Lock-In-Amplifier\LIA Debugging\LIA Debugging Host.vi" is a not very polished modified version of the VIPM example with a few debugging indicators and a FFT of the decimated, frequency shifted signal. It also has two sinewave generators (this was just to test using the high throughput math and the IDL NCO), pll for a squarewave as well as a sine wave, and two decimation filters (CIC and FIR).

### License

Refer to the attached license. For now, since this is not ready for realease but being used to keep a contolled copy of the changes, the license is under my name.
