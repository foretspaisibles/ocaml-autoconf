ACLOCAL_AMFLAGS = -I m4

bin_SCRIPTS = gtk_test$(EXEEXT)

PACKAGES = -package lablgtk2
LIBS     = gtkInit.cmo -linkpkg

gtk_test$(EXEEXT): gtk_test.cmo
	$(OCAMLFIND) ocamlc $(PACKAGES) $(LIBS) $^ -o $@

.ml.cmo:
	ocamlfind ocamlc $(PACKAGES) -c $< -o $@

EXTRA_DIST = gtk_test.ml

CLEANFILES = *.cmi *.cmo $(bin_SCRIPTS) *~
