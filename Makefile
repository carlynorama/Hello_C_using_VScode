CC=clang
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=hello_world.c second_file.c
OBJDIR=obj
_OBJECTS=$(SOURCES:.c=.o)
OBJECTS = $(patsubst %,$(OBJDIR)/%,$(_OBJECTS))
EXECUTABLE=hello
DEST_DIR=bin


all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $(DEST_DIR)/$@

$(OBJDIR)/%.o: %.c
	$(CC) $(CFLAGS) $< -o $@

# `make clean` removes contents of bin folder and any random .o files
clean:
	rm -rf $(OBJDIR)/*.o
	rm -rf $(DEST_DIR)/$(EXECUTABLE)
