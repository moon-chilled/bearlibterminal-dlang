// Written in the D programming language.
import BearLibTerminal;

void main() {
	terminal.open("Yayy?");

	// Set some settings
	terminal.set("input.cursor-blink-rate=2147483647");
	terminal.set("input.cursor-symbol=0x2588");
	terminal.set("font: dvsm.ttf, use-box-drawing=false, use-block-elements=false, size=12x24");

	// Printing text
	terminal.print(0, 0, "Hello, world!");
	terminal.printf(0, 1, "String %s is %cupported %d!", "formatting", 's', 2); // Sorry about that

	// Display it on the screen
	terminal.refresh();

	// Read a string in, then print it out at the same location (since by
	// default, it disappears after you press "enter"
	string tmp = terminal.read_str(0, 3, 80, "Say something: ");
	terminal.printf(0, 3, "Say something: %s", tmp);
	terminal.printf(0, 4, "You typed %s", tmp);

	terminal.print(0, 6, "Press any key to exit");

	terminal.refresh();

	// Read an event, then exit
	terminal.read();

	terminal.close();
}
