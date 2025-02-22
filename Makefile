# Compiler settings
CC = gcc
CFLAGS = -Wall -g -I./include  # Include the header file directory

# Directories
SRC_DIR = src
LIB_DIR = lib
INCLUDE_DIR = include

# Files
SRC = $(SRC_DIR)/main.c
LIB = $(LIB_DIR)/addition.c

EXEC =raj

# Default target to create the executable
all: $(EXEC)

# Rule to link object files and create the executable
$(EXEC): $(SRC_DIR)/main.o $(LIB_DIR)/addition.o
	$(CC) $(SRC_DIR)/main.o $(LIB_DIR)/addition.o -o $(EXEC)

# Rule to compile source files
$(SRC_DIR)/main.o: $(SRC_DIR)/main.c
	$(CC) $(CFLAGS) -c $(SRC_DIR)/main.c -o $(SRC_DIR)/main.o
$(LIB_DIR)/addition.o: $(LIB_DIR)/addition.c
	$(CC) $(CFLAGS) -c $(LIB_DIR)/addition.c -o $(LIB_DIR)/addition.o

# Clean rule to remove object files and executable
clean:
	rm -f $(OBJ) $(EXEC)
