AC_INIT(ocaml-autoconf-example,1.0)
AM_INIT_AUTOMAKE

AC_CONFIG_MACRO_DIR([m4])

AC_PROG_CC

AC_PROG_OCAML
if test "$OCAMLC" = "no"; then
  AC_MSG_ERROR([Please install the OCaml compiler])
fi

AC_PROG_FINDLIB
if test "$OCAMLFIND" = "no"; then
  AC_MSG_ERROR([Please install OCaml findlib (the ocamlfind command)])
fi

AC_CHECK_OCAML_PKG([lablgtk2])
if test "$OCAML_PKG_lablgtk2" = "no"; then
  AC_MSG_ERROR([Please install OCaml findlib module 'lablgtk2'.])
fi

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
