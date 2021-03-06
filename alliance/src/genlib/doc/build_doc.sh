#!/bin/sh


      LOG="build_doc.log"
     TOOL="genlib"
 SGML_DOC="$TOOL.sgm"


 detect_fail ()
 {
   echo ""                      >&2
   echo "build_doc.sh ERROR:"   >&2
   echo ""                      >&2
   echo "  Cannot find \"$1\"." >&2
   echo ""                      >&2
   echo "  Please check that DocBook is installed on your system." >&2
   echo ""                      >&2

   exit 1
 }


 detect ()
 {
   STR="`which $1 2> /dev/null`"

   if [ -z "$STR" ]; then detect_fail "$1"; fi

   echo "$STR"
 }


 DB2MAN=`detect docbook2man`
 DB2PDF=`detect db2pdf`
 DB2HTML=`detect db2html`


 rm -f $LOG


 echo ""
 echo "  o  Building MAN pages..."
 $DB2MAN $SGML_DOC > $LOG 2>&1
 mv *.1 ../man1
 mv *.3 ../man3


 echo ""
 echo "  o  Building HTML..."
 if [ -d $TOOL ]; then
   echo "     - Backuping CVS"
   mv $TOOL/CVS ./CVS-$TOOL
   mv $TOOL/stylesheet-images/CVS ./CVS-SS-$TOOL
 fi
 $DB2HTML $SGML_DOC >> $LOG 2>&1
 if [ -d $TOOL.junk ]; then rm -r $TOOL.junk; fi

 echo "     - Building Makefile.am for html subdir."
 DOC_AM="Makefile.am-doc"
 echo "" >  $DOC_AM
 echo "" >> $DOC_AM
 echo "pkghtmldir = \$(DESTDIR)\$(prefix)/doc/html/@PACKAGE@" >> $DOC_AM
 echo "pkghtml_DATA = \\"  >> $DOC_AM
 FILE_LIST=`(cd $TOOL; find . -name \*.html -exec echo {} \;)`
 set $FILE_LIST
 while [ $# -gt 0 ]; do
   LINE="               $1"
   if [ $# -gt 1 ]; then LINE="$LINE \\"; fi
   echo "$LINE" >> $DOC_AM
   shift
 done
 echo "" >> $DOC_AM
 echo "EXTRA_DIST = \$(pkghtml_DATA)" >> $DOC_AM
 mv $DOC_AM $TOOL/Makefile.am
 if [ -d ./CVS-$TOOL ]; then
   echo "     - Restoring CVS"
   mv ./CVS-$TOOL $TOOL/CVS
   mv ./CVS-SS-$TOOL $TOOL/stylesheet-images/CVS
 fi


 echo ""
 echo "  o  Building PDF..."
 $DB2PDF $SGML_DOC >> $LOG 2>&1

 echo "     - Building Makefile.am for doc dir."
 DOC_AM="Makefile.am"
 echo "" >  $DOC_AM
 echo "SUBDIRS = $TOOL" >> $DOC_AM
 echo "" >> $DOC_AM
 echo "pdfdir = \$(DESTDIR)\$(prefix)/doc/pdf" >> $DOC_AM
 echo "pdf_DATA = $TOOL.pdf"  >> $DOC_AM
 echo "" >> $DOC_AM
 echo "EXTRA_DIST = \$(pdf_DATA) \\" >> $DOC_AM
 FILE_LIST=`find . -name \*.sgm -exec echo {} \;`
 set $FILE_LIST
 while [ $# -gt 0 ]; do
   LINE="             $1"
   if [ $# -gt 1 ]; then LINE="$LINE \\"; fi
   echo "$LINE" >> $DOC_AM
   shift
 done
 echo "" >> $DOC_AM
