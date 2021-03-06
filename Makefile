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
CFLAGS = -std=gnu99 -LOSLib: $(LDFLAGS) -I$(IDIR) -IOSLib: \
		 -W -Wall -Wextra -pedantic

# Objects:
_OBJ = tailwimp.o ibar.o menu.o appwin.o screen.o choices.o manage.o report.o \
       control.o wininfo.o resources.o sfstring.o sfconfig.o url.o prog_info.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

# Targets:
all: tailwimp help

$(ODIR)/%.o: $(SRCDIR)/%.c $(IDIR)/%.h $(ODIR)
	$(CC) -c -o $@ $< $(CFLAGS)

$(ODIR):
	$(MKDIR) $(ODIR)

tailwimp: $(OBJ) $()
	$(CC) -o $(APPDIR)/!RunImage $^ $(CFLAGS)

help: README.md ReleaseNotes.md
	$(CP) README/md $(APPDIR).!Help ~C F
	$(CP) ReleaseNotes/md $(APPDIR).ReleaseNotes ~C F
	$(CP) LICENSE $(APPDIR).LICENSE ~C F

.PHONY: clean, cleanall

clean:
	$(RM) $(ODIR).o.prog_info
	$(RM) $(ODIR).o.resources
	$(RM) $(ODIR).o.sfconfig
	$(RM) $(ODIR).o.sfconfig
	$(RM) $(ODIR).o.sfstring
	$(RM) $(ODIR).o.tailwimp
	$(RM) $(ODIR).o.choices
	$(RM) $(ODIR).o.control
	$(RM) $(ODIR).o.wininfo
	$(RM) $(ODIR).o.appwin
	$(RM) $(ODIR).o.manage
	$(RM) $(ODIR).o.report
	$(RM) $(ODIR).o.screen
	$(RM) $(ODIR).o.ibar
	$(RM) $(ODIR).o.menu
	$(RM) $(ODIR).o.url
	$(RM) $(ODIR).o
	$(RM) $(ODIR)

cleanall: clean
	$(RM) $(APPDIR).!RunImage
	$(RM) $(APPDIR).!Help
	$(RM) $(APPDIR).ReleaseNotes
	$(RM) $(APPDIR).LICENSE
