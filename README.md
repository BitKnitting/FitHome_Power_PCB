Kicad is used to create the schematic and layout.
# Power PCB
The Power PCB is used by [the FitHome project](https://hackaday.io/project/164721-fithome). It monitors the voltage and current of a (North American's) home energy lines.  It is the bottom PCB of three PCBs that when combined provide Watt readings and send them over wireless to an mqtt broker.  The other PCBs include:  
* [The meter PCB](https://github.com/BitKnitting/Tisham_PCB_meter_atm90e26).  The meter PCB includes two atm90e26 energy monitor ICs that takes in the analog readings from the power PCB and converts them into DC measurements a microcontroller can read.  
* [The microcontroller PCB](https://github.com/BitKnitting/Tisham_PCB_Feather).  The microcontroller PCB mounts a microcontroller with wifi - like a Feather RFM95 or a wemos D1 (a bit up in the air as of this date - 4/5/2019).  The microcontroller gets the voltage and current readings from the atm90e26's over SPI and then sends them via mqtt.

The three connect together to become the FitHome hardware.

# Thanks to Those That Went Before
This project extends [Tisham Dhar's work on building energy monitors using an atm90e26](https://github.com/whatnick/DIN_Rail_EnergyMonitor).  In particular, [the DIN Rail energy monitor](https://www.crowdsupply.com/whatnick/atm90e26-energy-monitor-kits).  Besides his open source projects, Tisham has been exceptionally helpful and supportive.  Tisham continues to inspire me.  THANK YOU.

Before I took [Chris Gammell's Contextual Electronics course](https://contextualelectronics.com/), I had absolutely no experience with electronics or building PCBs.  Chris is exceptional in so many ways.  THANK YOU.

There is an exceptional community behind [the OpenEnergyMonitor project](https://learn.openenergymonitor.org/).  They not only provide energy monitoring solutions, but are a wealth of knowledge.  THANK YOU.

# Background Info
 ## Electricity Coming Into Our Homes
 In our North American homes, 120V of electricity comes in through two power lines (L0 and L1).  A third line (N) acts as the reference point (analog ground) for voltage/current measurements.
 ![120V](images/120V_incoming_NA_House.png)
 _Image from [here](https://learn.openenergymonitor.org/electricity-monitoring/ac-power-theory/use-in-north-america)_  

 See the section in the schematic labelled _Incoming 120V_.  
 ### Surges
 The MOVs(Metal Oxide Varistors - RV1, RV2, and RV3 on the schematic) clamp down on the voltage coming in when there are power surges.  Most of the time, voltage in North American homes oscillates from 0 to a peak voltage of 169 volts.  Sometimes this oscillation is disturbed by a spike in voltage caused by a lightning strike or  switching in the power grid:  
 ![power surge image](images/power_surge_incoming_electricity.png)  
 # Voltage Sampling
 The Open Energy Monitor project has [great info](https://learn.openenergymonitor.org/electricity-monitoring/voltage-sensing/measuring-voltage-with-an-acac-power-adapter) on the how and the what of voltage sampling.  See the Voltage Sampling section of the schematic.

 Four resistors are run in series to ensure if any one of the resistors breaks down, the full 120V won’t be sent to the rest of the circuit.  Also, the resistors are rated to handle the incoming voltage (in my case 120V…but to be safe probably 240V rated resistors are a better thing to use). 
 
Noted in the atm90e26's datasheet: The pins that are for voltage sampling (15 and 16): _…are differential inputs for voltage. Input range is 120μVrms~600mVrms…_ 

Looking at the voltage divider formula:
![voltage divider image](images/voltage_divider.png)  
R1 = 220K * 4 = 880K
R2 = 1K
Vin = 120V
Vout = 120(1/889)= 135mV.
# DC Power 
The atm90e26's and the microcontrollers need 3.3V DC power to work.  Since we have 120V coming in, we can transform it to provide the 3.3V DC power.  See the 120VAC -> 5 and 3.3VDC section in the schematic.  There are three pieces to the conversion:  
* The 120VAC -> 5VDC [SMPS](https://en.wikipedia.org/wiki/Switched-mode_power_supply).  
* The two LDOs.  The signal coming out of the SMPS is too noisy.  The LDOs clean up the signal.  
* The DC-DC isolator. This isolates the power for the atm90e26s from the power for the microcontroller.
# Current Sampling
See the Current Sampling section of the Kicad schematic.
## Current Transformers
 Two Current Transformers (CTs) are needed to get current readings on the two 120V lines.   
 ![Current Transformer](images/CurrentTransformer.png)  
 One CT is clamped onto the L0 line.  The other is clamped onto the L1 line.  Because the CT clamps onto the line, you might hear a CT refered to as a current clamp.
 ![CT in box](images/CurrentClampsInBox.png)
 The CTs use a [TRS 3.5mm audio jack](https://www.cui.com/product/resource/sj-352x-smt-series.pdf) as the connector.
 ## Taking a Current Reading
 I first learned how the current reading circuit worked by reading [this excellent article on the OpenEnergyMonitor's site](https://learn.openenergymonitor.org/electricity-monitoring/ct-sensors/interface-with-arduino).  If you (like myself) are new to this stuff, it is worth a read.  

 If the CT outputs current, then a burden resistor is needed to convert to a Voltage to be read.  The readings can be negative.  To accomodate readings using the ADC of the Arduino as discussed in the project, a DC bias circuit of AREF/2 (2.5V) lifts ADC readings to be between 0 and AREF (5V).
 
 The atm90e26 does not need a DC bias circuit.  
 ### Burden Resistor
 Tisham's design uses a 12R burden resistor.  This is to accomodate the atm90e26's 600mV Vrms input limit.  The OpenEnergyMonitor's article noted the current output's Amplitude is .0707A.  Vpp = 0.0707*12 = 848mV.  The amplitude is then 424mV.  The Vrms = 424*sqrt(2) = 600mV.
 
 As Tisham noted: _In recent designs I have been splitting the 12R into 6R-6R and grounding the middle for signal symmetry._  This is why two 5.8R resistors are used.  I ran an LTSpice with:  
 *  a sine wave set at 60Hz with an amplitude of 0.0707A (from the OpenEnergyMonitor's Arduino article)
 * .tran 0 .1 0 .1
 ![LTSpice current sampling](images/LTSpice_current_sampling.png)
 # Connectors
 Getting connectors right has always been difficult for me.  The connectors used in the Power PCB include:  
 ## J1
 This is a Terminal Block made by Phoenix Contact.  It connects the 120V power lines to the power PCB.
 The male contact - [PN 1759059](https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1759059.pdf) is soldered to the power PCB.
 ![male 1759059](https://media.digikey.com/photos/Phoenix%20Photos/1759059.jpg)
 The female contact - [PN 1757051](https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1757051.pdf) plugs into the male contact and screws the wires into one of the 6 positions.
 ![female](https://media.digikey.com/photos/Phoenix%20Photos/1759059.jpg)
 ## U1 and U2
 These are [the female 3.5 TRS audio part (SJ-3523-SMT-TR)](https://www.cui.com/product/resource/sj-352x-smt-series.pdf). The male audio jack on the end of each current clamp is inserted.
 ![3.5 Male TRS Audio Jack](images/trs_quarter_inch_male.gif)  
 ## J2
 The pin out for the [36 position female PCI Express connector](https://www.amphenol-icc.com/media/wysiwyg/files/drawing/10018784.pdf) that connects the meter PCB to the power PCB.  
 ![female PCI Express](https://media.digikey.com/Photos/FCI%20Photos/PCI-36_sml.jpg).  
 

