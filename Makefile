# Compiler:
CC = gcc

# Definitions
RM = remove
MKDIR = cdir
CP = copy

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
_OBJ = tailwimp.o ibar.o menu.o win.o screen.o choices.o manage.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

# Targets:
all: tailwimp help

$(ODIR)/%.o: $(SRCDIR)/%.c $(IDIR)/%.h $(ODIR)
	$(CC) -c -o $@ $< $(CFLAGS)

$(ODIR):
	$(MKDIR) $(ODIR)

tailwimp: $(OBJ) $()
	$(CC) -o $(APPDIR)/!RunImage $^ $(CFLAGS)

help: README.md
	$(CP) README/md $(APPDIR).!Help ~C F

.PHONY: clean, cleanall

clean:
	$(RM) $(ODIR).o.tailwimp
	$(RM) $(ODIR).o.choices
	$(RM) $(ODIR).o.manage
	$(RM) $(ODIR).o.screen
	$(RM) $(ODIR).o.ibar
	$(RM) $(ODIR).o.menu
	$(RM) $(ODIR).o.win
	$(RM) $(ODIR).o
	$(RM) $(ODIR)

cleanall: clean
	$(RM) $(APPDIR).!RunImage
	$(RM) $(APPDIR).!Help
