PACKAGE	= ocaml-autoconf
VERSION	= 1.0

prefix  = /usr/local
datadir = $(prefix)/share
mandir  = $(datadir)/man

INSTALL = install
MKDIR_P = mkdir -p

all: man ocaml.m4.txt

man: ocaml.m4.1

ocaml.m4.1: ocaml.m4.pod
	pod2man -c "Autoconf macros" --release "$(PACKAGE)-$(VERSION)" $< > $@

ocaml.m4.txt: ocaml.m4.pod
	pod2text $< > $@

clean:
	rm -f *~ ocaml.m4.1 ocaml.m4.txt

install: install-macro install-man

install-macro:
	$(MKDIR_P) $(DESTDIR)$(datadir)/aclocal/
	$(INSTALL) -m 0644 ocaml.m4 $(DESTDIR)$(datadir)/aclocal/

install-man:
	$(MKDIR_P) $(DESTDIR)$(mandir)/man1/
	$(INSTALL) -m 0644 ocaml.m4.1 $(DESTDIR)$(mandir)/man1/

.PHONY: man install-macro install-man
