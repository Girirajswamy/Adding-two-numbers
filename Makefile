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
$(EXEC): $(SRC_DIR)/%.o $(LIB_DIR)/%.o
	$(CC) $(SRC_DIR)/%.o $(LIB_DIR)/%.o -o $(EXEC)

# Rule to compile source files
$(SRC_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $(SRC_DIR)/%.c -o $(SRC_DIR)/%.o
$(LIB_DIR)/%.o: $(LIB_DIR)/%.c
	$(CC) $(CFLAGS) -c $(LIB_DIR)/%.c -o $(LIB_DIR)/%.o

# Clean rule to remove object files and executable
clean:
	rm -f $(OBJ) $(EXEC)
