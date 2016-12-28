import BearLibTerminal;

void main() {
	terminal.open();

	// Printing text
	terminal.print(1, 1, "Hello, world!");
	terminal.printf(1, 2, "String %s is %cupported %d!", "formatting", 's', 2); // Sorry about that

	// Display it on the screen
	terminal.refresh();

	// Hang until the user clicks "x"
	while (terminal.read() != terminal.keycode.close) {}

	terminal.close();
}
