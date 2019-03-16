My goal is to get some PCBs from OSH Park and populate with parts based on a BoM I create with the [Kicad_to_Octopart_BOM_csv tool](https://github.com/BitKnitting/Kicad_to_Octopart_BOM_csv) .

# Changes to Power Systems
I am refering to the place on the power schematic that is labeled Power Systems (5V).  I only need 3.3V and do not need battery backup.  

There are two DC power lines:  
* +3.3V - power to the CPU.
* +3.3V_ISO - power to the meter obtained by using U5 (DC-DC isolator) to get the isolated power for the meter.

Tisham's schematic has a Power Systems section that I deleted.  Because:
* Nothing needs 5V power.
* I do not need/want battery backup.
## Deleted parts
Deleted parts include:
* U3 (PN=AP7365-33YG-13)
* U2 (PN=AP7365-33YG-13)
* U1 (PN=MCP73831T-3ACI/OT)
* C5,C8,C6,C7,C4,C9 (1µF)
* R32 (2K)
* R33 (1K)
* D1 (PMEG1020EA)

__CONCERN__:  Tisham notes below: x2 _2x1117 series LDO for generating 3.3v from 5V input to clean up SMPS noise_.  
__TBD__: stay with the 5V Hi-Link 5V DC and include LDO?  I think Tisham would say yes to this.

## Changed parts
These are the parts that need to change because they either gave 5V out or required 5V in.
### U4
__Current POR: change to HLK-PM03.__ 

U4 (PN = HKLPM01 can take in our 120V AC and provide us with 5VDC.  I want 3.3VDC out.  This is the HKL-PM03 Hi-Link model.
### Part Replacement Choices
* Option 1:[Recom RAC03SGA](https://www.recom-power.com/pdf/Powerline-AC-DC/RAC03-GA.pdf)
_As I researched SMPSs, I became concerned with the safety of using Hi-Link’s, particularly after reading [Skippy’s Random Ramblings](https://skippy.org.uk/quick-look-at-the-hlk-pm01/).  The big disadvantage is it's cost..This part cost $9.16 on Digikey (quantity = 1).  WHOA! It is easy to order from Digikey, etc.  However, now has Tariffs applied._
* Option 2: [HLK-PM03](https://www.google.com/search?q=Hi-link+HLK-PM03+AC-DC+220V+to+3.3V&rlz=1C5CHFA_enUS815US815&source=univ&tbm=shop&tbo=u&sa=X&ved=0ahUKEwi24sif4IbhAhWWvZ4KHTSDAB8QsxgILQ&biw=1239&bih=550)  
_Not as high quality as the Recom.  But significantly less expensive.  Most likely order from alibaba express._

TODO: PINOUT/layout switch footprint
### U5
U5 isolates the 3.3V that came off U4 into 3.3V for the CPU and the other 3.3V for the ATM meters.  The one Tisham is using (ROE-0505S) inputs 5V and outputs 5V.  I changed this to the [RNM-3.33.3S](https://datasheet.octopart.com/RNM-3.33.3S-Recom-Power-datasheet-17725523.pdf).

TODO: PINOUT/layout switch footprint
# Changes to current sampling
The schematic supports 8 current clamps.  I need only two.
## Keep
* IA1+ / IA1-
* IB1+ / IB1-
## Delete
The rest.
* The unused 5.8R - R3,R4,R10,R11,R20,R21,R18,R19,R30,R31,R29,R28.
* The unused J3 connector.
* J5 - the 8 pin connector.  I replaced with a 2 2pin connectors. One connector for each clam
* Replaced J4 with a 2 x 6 and got rid of unused connections.
# From 0603 to 0805
I have standardized on the 0805 package size for Rs and Cs.  I have these in stock.  It is a happier experience to solder with the bigger footprint.

I kept the 5.8 ohm at 0603 because of challenges with availability.

I changed R24, R26, R27 to the 0805 footprint.



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