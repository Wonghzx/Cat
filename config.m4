dnl $Id$
dnl config.m4 for extension Cat

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

 PHP_ARG_WITH(Cat, for Cat support,
 Make sure that the comment is aligned:
 [  --with-Cat             Include Cat support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(Cat, whether to enable Cat support,
dnl Make sure that the comment is aligned:
dnl [  --enable-Cat           Enable Cat support])

if test "$PHP_CAT" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-Cat -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/Cat.h"  # you most likely want to change this
  dnl if test -r $PHP_CAT/$SEARCH_FOR; then # path given as parameter
  dnl   CAT_DIR=$PHP_CAT
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for Cat files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       CAT_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$CAT_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the Cat distribution])
  dnl fi

  dnl # --with-Cat -> add include path
  dnl PHP_ADD_INCLUDE($CAT_DIR/include)

  dnl # --with-Cat -> check for lib and symbol presence
  dnl LIBNAME=Cat # you may want to change this
  dnl LIBSYMBOL=Cat # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $CAT_DIR/$PHP_LIBDIR, CAT_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_CATLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong Cat lib version or lib not found])
  dnl ],[
  dnl   -L$CAT_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(CAT_SHARED_LIBADD)

  PHP_NEW_EXTENSION(Cat, Cat.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
