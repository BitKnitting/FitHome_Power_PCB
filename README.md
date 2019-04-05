Kicad is used to create the schematic and layout.
# Power PCB
The Power PCB is used by [the FitHome project](https://hackaday.io/project/164721-fithome). It monitors the voltage and current of a (North American's) home energy lines.  It is the bottom PCB of three PCBs that when combined provide Watt readings and send them over wireless to an mqtt broker.  The other PCBs include:  
* [The meter PCB](https://github.com/BitKnitting/Tisham_PCB_meter_atm90e26).  The meter PCB includes two atm90e26 energy monitor ICs that takes in the analog readings from the power PCB and converts them into DC measurements a microcontroller can read.  
* [The microcontroller PCB](https://github.com/BitKnitting/Tisham_PCB_Feather).  The microcontroller PCB mounts a microcontroller with wifi - like a Feather RFM95 or a wemos D1 (a bit up in the air as of this date - 4/5/2019).  The microcontroller gets the voltage and current readings from the atm90e26's over SPI and then sends them via mqtt.

The three connect together to become the FitHome hardware.

# Thanks to Those That Went Before
This project extends [Tisham Dhar's work on building energy monitors using an atm90e26](https://github.com/whatnick/DIN_Rail_EnergyMonitor).  In particular, [the DIN Rail energy monitor](https://www.crowdsupply.com/whatnick/atm90e26-energy-monitor-kits).  Besides his open source projects, Tisham has been exceptionally helpful and supportive.  Tisham continues to inspire me.  THANK YOU.

My goal is to get some PCBs from OSH Park and populate with parts based on a BoM I create with the [Kicad_to_Octopart_BOM_csv tool](https://github.com/BitKnitting/Kicad_to_Octopart_BOM_csv) .
# Background Info
 ## Electricity Coming Into Our Homes
 In our North American homes, 120V of electricity comes in through two power lines (L0 and L1).  A third line (N) acts as the reference point (analog ground) for voltage/current measurements.
 ![120V](images/120V_incoming_NA_House.png)
 _Image from [here](https://learn.openenergymonitor.org/electricity-monitoring/ac-power-theory/use-in-north-america)_  

 See the section in the schematic labelled _Incoming 120V_.  
 ### Surges
 The MOVs(Metal Oxide Varistors - RV1, RV2, and RV3 on the schematic) clamp down on the voltage coming in when there are power surges.  Most of the time, voltage in North American homes oscillates from 0 to a peak voltage of 169 volts.  Sometimes this oscillation is disturbed by a spike in voltage caused by a lightning strike or  switching in the power grid:  
 ![power surge image](images/power_surge_incoming_electricity.png)  
 ## Voltage Sampling
 The Open Energy Monitor project has [great info](https://learn.openenergymonitor.org/electricity-monitoring/voltage-sensing/measuring-voltage-with-an-acac-power-adapter) on the how and the what of voltage sampling.  See the Voltage Sampling section of the schematic.

 If any one of the resistors breaks down, the full 120V won’t be sent to the rest of the circuit.  Also, the resistors need to be rated to handle the incoming voltage (in my case 120V…but to be safe probably 240V rated resistors are a better thing to use). 
 
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
## Current Sampling
 Two Current Transformers (CTs) are needed to get current readings on the two 120V lines.  The CTs use a [TRS 3.5mm audio jack](https://www.cui.com/product/resource/sj-352x-smt-series.pdf) as the connector.



-------------------
(in process cleaning up below....)

![3.5 Male TRS Audio Jack](https://github.com/BitKnitting/Tisham_PCB_Power_ATM90e26/blob/master/images/trs_quarter_inch_male.gif)  
The [datasheet for the TRS part (SJ-3523-SMT-TR)](https://www.cui.com/product/resource/sj-352x-smt-series.pdf) shows what the part looks like in it's schematic form.
![Schematic of 3.5 Female TRS Audio Jack](https://github.com/BitKnitting/Tisham_PCB_Power_ATM90e26/blob/master/images/TRS_schematic_pins.png)  


************************************************************
# Tisham's Readme
************************************************************
# DIN Rail Format Energy Meter Base Board
## Power SMPS module
- 90v-240v AC input
- Isolated 5V output
- 600mA / 3W power rating

## Over-voltage protection/over-current protection
- 0.1A rated PTC fuse
- 300V rated TVS suppressors, x1 per-phase

## Isolation
- 5v DC-DC isolator to power metering module

## Power supply clean-up
- x2 1117 series LDO for generating 3.3v from 5V input to clean up SMPS noise

## Backup-power
- MCP73831 series floating Lipo battery charger for backup lipo battery

## AC Voltage Sampler
- x3 Voltage divider ladders with 880K + 1K total serial resistance

## AC current Sampler
- x8 2.4ohm current sense resistor based CT clamp inputs

## Connectors
- 5.08mm spacing phoenix contact AC voltage connector
- Molex nanofit 2x4 type dense AC current clamp connectors