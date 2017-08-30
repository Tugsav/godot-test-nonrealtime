# godot-test-nonrealtime
Godot test project for demonstrating example use of the non-realtime simulation PR

To test on linux, cd to the project directory and start the project via godot from cmd line using the options:

--disable-render-loop --fixed-fps X

where X is any integer


example command sequence:

cd /path/to/test/project

/path/to/godot/binary --disable-render-loop --fixed-fps 2
