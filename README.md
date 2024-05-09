# multiturtle
Sync up multiple ComputerCraft turtles to do one big task! Helpful for digging out tunnels, or building big paths.

## Requirements
Material wise, you'll need:
- At least 1x Turtle (any kind), with preferred tool
- 1x Computer (any kind)<br>

And either:
- Amount of turtles + 1x Wired Modem AND 1x Hard Drive AND 1x Floppy Disk (preferred)<br>

OR
- Amount of turtles + 1x Wireless Modem

## Simple Setup
### Wired Modems
If you're using wired modems, connect up everything in the requirements. Don't connect a turtle to the computer & disk drive's modem, as it'll make it out of sync. Put startsequence.lua and a turtle software from the [startup folder](https://github.com/connorhedgehog/multiturtle/tree/main/startup) in the computer, put the turtle software in a startup/ directory on the disk, and run startupsequence.
### Wireless Modems
If you're using wireless modems, ignore the first two sentences of the last section. Make sure your turtles and computer have wireless modems, then read the last sentence.

## Detailed Setup
### Modem Placement
The placement of everything is pretty simple, but there's a few specifics because of CC quirks. If you're using wireless modems, you don't have to worry about this! Check out this diagram:<br>

![diagram](https://github.com/connorhedgehog/multiturtle/assets/70295743/4da3a84a-cddf-447c-b5a9-945c27ab5868)

You shouldn't connect a turtle to the same modem as the disk drive and computer, seen by where the X is. This will make that turtle out of sync. You can otherwise place them however, and as many as you'd like.

### Software
To start, you'll have to pick a script for your turtles to run from the [startup folder](https://github.com/connorhedgehog/multiturtle/tree/main/startup).

Run the command for downloading your pick from startup/readme.md, plus this one to download the starting file:
```
wget https://raw.githubusercontent.com/connorhedgehog/multiturtle/main/startsequence.lua
```

Or just download and import them manually. From here, make sure your disk drive is connected and has a disk in it before running this set of commands:
```
mkdir startup
```
Here, get the file name of your earlier turtle software pick. Here, we'll use tunnel1.lua:
```
move tunnel1.lua startup
```
```
move startup/ disk/
```
Now, you're ready to go! Just start up startsequence.lua.
