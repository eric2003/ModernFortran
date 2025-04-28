# Simple nmake Makefile to demonstrate echo usage

# Default target
all: example.txt

# Rule to create example.txt and echo a message
example.txt:
	@echo.Printing a message:
	@echo.Hello, this is an nmake echo example!
	@echo.Creating example.txt
	@type nul > example.txt

# Clean up generated files
clean:
	@del example.txt

.PHONY: all clean