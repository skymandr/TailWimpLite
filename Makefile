# Compiler:
CC = gcc

# Definitions
RM = remove
MKDIR = cdir

# Directories:
SRCDIR = src
ODIR = obj
IDIR = inc
APPDIR = !TailWmpLt

# Linking:
LDFLAGS = -lOSLib32

# Compiler options:
CFLAGS = -O2 -L. -LOSLib: $(LDFLAGS) -I$(IDIR) -IOSLib:

# Objects:
_OBJ = tailwimp.o ibar.o menu.o win.o screen.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

# Targets:
all: tailwimp

$(ODIR)/%.o: $(SRCDIR)/%.c $(ODIR)
	$(CC) -c -o $@ $< $(CFLAGS)

$(ODIR):
	$(MKDIR) $(ODIR)

tailwimp: $(OBJ) $()
	$(CC) -o $(APPDIR)/!RunImage $^ $(CFLAGS)

.PHONY: clean, cleanall

clean:
	$(RM) $(ODIR).o.tailwimp
	$(RM) $(ODIR).o.screen
	$(RM) $(ODIR).o.ibar
	$(RM) $(ODIR).o.menu
	$(RM) $(ODIR).o.win
	$(RM) $(ODIR).o
	$(RM) $(ODIR)

cleanall: clean
	$(RM) $(APPDIR).!RunImage
