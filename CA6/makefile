CC = g++
CFLAGS = --std=c++11
SRC_DIR = src
BUILD_DIR = build
MODULES := uint4 messagePreprocess
MAIN_SRC := $(SRC_DIR)/MD5.cpp
OUTPUT_DIR := output

# List of source files for modules
MODULE_SRCS := $(wildcard $(addsuffix /*.cpp,$(addprefix $(SRC_DIR)/,$(MODULES))))
# Corresponding object files for modules
MODULE_OBJS := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(MODULE_SRCS))

# Main target
output: $(MODULE_OBJS) $(MAIN_SRC)
	$(CC) $(CFLAGS) $(MAIN_SRC) $(MODULE_OBJS) -o MD5
	mkdir -p $(OUTPUT_DIR)

# Rule to compile each module source file into object files
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

# Clean target
clean:
	rm -rf $(BUILD_DIR) MD5 $(OUTPUT_DIR)

# PHONY targets
.PHONY: output clean
