My goal is to get some PCBs from OSH Park and populate with parts based on a BoM I create with the [Kicad_to_Octopart_BOM_csv](https://github.com/BitKnitting/Kicad_to_Octopart_BOM_csv) tool.

# First Pass  
* U4 (PN = HKLPM01, Tisham has a field in the part kicost:pricing - 50:$2.74). The part number is for a Hi-Link 220VAC -> 5VDC.
__Question__: I want 120VAC -> 3.3VDC.  Correct? 
[!120VAC->3.3VDC](https://github.com/BitKnitting/Tisham_PCB_Power_ATM90e26/blob/master/images/ac-dc-converter.png) 

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