# Simple nmake Makefile with multiple targets to demonstrate different echo messages

# Default target
all: message1 message2
	@echo Default target: Running all message targets.

# Target 1: Display a basic message and LIB variable
message1:
	!MESSAGE Linking $(LIB)
	@echo === Message 1 ===
	@echo Hello, this is the first echo example!
	@echo LIB environment variable:
	@echo $(LIB)

# Target 2: Display system information
message2:
	@echo === message2  ===
	@echo Displaying system-related information.
	@echo PATH environment variable:
	@echo $(PATH)

# Clean target (does nothing in this case)
clean:
	@echo Nothing to clean.

.PHONY: all message1 message2 clean