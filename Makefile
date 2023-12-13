# Compiler and flags
CXX = g++
CXXFLAGS = -Wall -std=c++11

# Source files
SOURCES = HelloWorld.cpp

# Targets for executables
EXECUTABLES = $(SOURCES:.cpp=.exe)

# Targets for other formats
HEX_FILES = $(SOURCES:.cpp=.hex)
SLN_FILES = $(SOURCES:.cpp=.sln)

all: Build1

Build1: $(EXECUTABLES) $(HEX_FILES)

Build2: $(SLN_FILES)

%.exe: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ $<

%.hex: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ $<

%.sln: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ $@

clean:
	rm -f $(EXECUTABLES) $(HEX_FILES) $(SLN_FILES)
