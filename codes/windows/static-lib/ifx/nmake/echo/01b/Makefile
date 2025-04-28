# Simple nmake Makefile with multiple targets to demonstrate different echo messages

# Default target
all: message1 message2 message3
	@echo Default target: Running all message targets.

# Target 1: Display a basic message and LIB variable
message1:
	@echo === Message 1 ===
	@echo Hello, this is the first echo example!
	@echo LIB environment variable:
	@echo $(LIB)

# Target 2: Display a different message
message2:
	@echo === Message 2 ===
	@echo This is another echo example with a custom message.
	@echo Current directory:
	@echo $(MAKEDIR)

# Target 3: Display system information
message3:
	@echo === Message 3 ===
	@echo Displaying system-related information.
	@echo PATH environment variable:
	@echo $(PATH)

# Clean target (does nothing in this case)
clean:
	@echo Nothing to clean.

.PHONY: all message1 message2 message3 clean