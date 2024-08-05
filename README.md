#  Gamecube Controller for Basys 3

## Description

This is a simple implementation of the Gamecube controller protocol in Verilog. It's **very important** to connect your controller correctly to avoid damaging or shorting your controller or the Basys3 board.

More information on how to implement this into your own designs is contained within the `gamecube.v` file found in `verilog_files/inputs_on_leds/src`.


## Connecting a Controller

### Recommended Materials

- **Gamecube Extension Cord:** [Amazon Link](https://a.co/d/5di0RBq)
- **Similar Header Pins:** [Amazon Link](https://a.co/d/1t0p9pt)


### Extension Cord Pinout

Note: Colors may differ, use a multimeter to ensure accuracy:

| Pin | Color  | Function                |
| :-: | :----: | :---------------------- |
| 1   | White  | 5V Rumble Motor Power   |
| 2   | Red    | Data Line               |
| 3   | Black  | Ground                  |
| 4   | Yellow | Ground                  |
| 5   | None   | Unused                  |
| 6   | Green  | 3.3V Controller Power   |


### Connecting the Extension Cord to the Basys3 Board

Using the extension cord linked above you can make your own homemade Basys3 board connection by connecting the pins as follows:
1. **Pin 6 of the extension cord** (3.3V Controller Power) is connected to **Pin 1 of the homemade connection**.
2. **Pins 3 and 4 of the extension cord** (Ground) are soldered together and connected to **Pin 2 of the homemade connection**.
3. **Pin 2 of the extension cord** (Data Line) is connected to **Pin 6 of the homemade connection**.
4. **Pin 1 of the extension cord** (5V Rumble Motor Power) is not used and left inside the extension cord.

You can solder these connections to the header pins, similar to the ones linked above, and shrink-wrap it all together.

| ![cord pins picture](https://github.com/easton-mcbeth/Basys3-GameCube-Controller/blob/main/readme_images/gamecube_connection.png) |
| :-------------------------------: |
| *Homemade Connection and Pin Numbers* |

With the current bitstream the homemade connection must be connected to the top row of header JA in the correct orientation to function properly.

| ![connection to board picture](https://github.com/easton-mcbeth/Basys3-GameCube-Controller/blob/main/readme_images/connection_to_board.png) |
| :-------------------------------: |
| *Connections to the Basys3 Board* |


### Important Considerations

- **Different Extension Cord:** If you have a different extension cord, you can use a multimeter in continuity mode to figure out your respective pinout.
- **Correct Connection:** It is very important that you connect the pins correctly to avoid shorting the controller or the Basys3 board.
- **Pull-up Resistor:** Some Gamecube protocol explanations mention connecting a pull-up resistor between the data line and the 3.3V power supply. I found that this wasn't necessary, but if you have connected everything correctly and are getting incorrect results, try using a 1k ohm pull-up resistor.

For more details on the Gamecube protocol implemented, visit: [https://www.int03.co.uk/crema/hardware/gamecube/gc-control.html](https://www.int03.co.uk/crema/hardware/gamecube/gc-control.html)


## Available Bitstreams

### Inputs on Leds

`gamecube_leds.bit` contains the simplest implementation of the the module. It maps the controller inputs to leds on the Basys3 Board. This bitstream is useful for testing if you have connected your controller correctly. 

Keep in mind that this version maps all of the buttons but only will detect joystick movement, not the entire value. If you would like to see specific joystick or analog values you can find more information in the `top.v` file found in `verilog_files/inputs_on_leds/src`.

### VGA Input Viewer

`vga_input_viewer.bit` contains a vga inplementation. By connecting a vga monitor to the Basys3 board you will be able to cleanly see your inputs on the screen. 

In this bitstream pressing the start button will recenter the joysticks so they accurately represent your controller's factory deadzone.

## Future Plans

- Currently this is a very simple implementation of the Gamecube protocol. I would like to expand this to include support for N64 controllers. This would mean adding functionality to recognize the type of controller connected.
- The VGA input viewer has a WNS of around -2.7. While everything still functions correctly I would like to look into how to fix this.