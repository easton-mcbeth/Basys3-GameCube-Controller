# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk_100MHz]
set_property IOSTANDARD LVCMOS33 [get_ports clk_100MHz]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk_100MHz]

## Pull Up Resistor
set_property PULLTYPE PULLUP [get_ports data]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {button_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[0]}]
set_property PACKAGE_PIN E19 [get_ports {button_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[1]}]
set_property PACKAGE_PIN U19 [get_ports {button_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[2]}]
set_property PACKAGE_PIN V19 [get_ports {button_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[3]}]
set_property PACKAGE_PIN W18 [get_ports {button_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[4]}]
set_property PACKAGE_PIN U15 [get_ports {button_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[5]}]
set_property PACKAGE_PIN U14 [get_ports {button_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[6]}]
set_property PACKAGE_PIN V14 [get_ports {button_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[7]}]
set_property PACKAGE_PIN V13 [get_ports {button_data[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[8]}]
set_property PACKAGE_PIN V3 [get_ports {button_data[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[9]}]
set_property PACKAGE_PIN W3 [get_ports {button_data[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[10]}]
set_property PACKAGE_PIN U3 [get_ports {button_data[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[11]}]
set_property PACKAGE_PIN P3 [get_ports {button_data[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[12]}]
set_property PACKAGE_PIN N3 [get_ports {button_data[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[13]}]
set_property PACKAGE_PIN P1 [get_ports {button_data[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[14]}]
set_property PACKAGE_PIN L1 [get_ports {button_data[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_data[15]}]

##VGA Connector
set_property PACKAGE_PIN G19 [get_ports {rgb[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[0]}]
set_property PACKAGE_PIN H19 [get_ports {rgb[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[1]}]
set_property PACKAGE_PIN J19 [get_ports {rgb[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[2]}]
set_property PACKAGE_PIN N19 [get_ports {rgb[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[3]}]
set_property PACKAGE_PIN J17 [get_ports {rgb[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[4]}]
set_property PACKAGE_PIN H17 [get_ports {rgb[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[5]}]
set_property PACKAGE_PIN G17 [get_ports {rgb[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[6]}]
set_property PACKAGE_PIN D17 [get_ports {rgb[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[7]}]
set_property PACKAGE_PIN N18 [get_ports {rgb[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[8]}]
set_property PACKAGE_PIN L18 [get_ports {rgb[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[9]}]
set_property PACKAGE_PIN K18 [get_ports {rgb[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[10]}]
set_property PACKAGE_PIN J18 [get_ports {rgb[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[11]}]
set_property PACKAGE_PIN P19 [get_ports hsync]
set_property IOSTANDARD LVCMOS33 [get_ports hsync]
set_property PACKAGE_PIN R19 [get_ports vsync]
set_property IOSTANDARD LVCMOS33 [get_ports vsync]

##Buttons
set_property PACKAGE_PIN U18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

##Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports data]
set_property IOSTANDARD LVCMOS33 [get_ports data]








