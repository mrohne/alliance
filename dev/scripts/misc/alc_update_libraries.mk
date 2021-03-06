#!/bin/sh
# -*- Mode: shell-script -*-
#
# Script to update Alliance XXX/etc/libraries.mk whith 
# the newest libs found in XXX/lib/
# and the newest includes found in XXX/include/. 
#
# Creates XXX/etc/libraries.mk.update and gives warnings to stderr
# then copy old libraries.mk to libraries.mk.`date`
# then copy new libraries.mk.update to libraries.mk
#
# Usage :
# Requires 1 arg : XXX which is the path to
#                  etc/libraries.mk, lib/ and include/
# Eg : update_libraries.mk.sh /users/soft5/labo_pc
#
# Author : Olivier SIROL
# Date   : April 1997 
# $Id: alc_update_libraries.mk,v 1.1 1999/09/09 14:24:53 czo Exp $

# DO_UPDATE: 0 chk only, 1 write file, 2 print stdout

DO_UPDATE=2

if [ $# -ge 1 ] ; then 
    if [ $1 = "-u" ] ; then 
	DO_UPDATE=1
	shift
    fi
    if [ $1 = "-c" ] ; then 
	DO_UPDATE=0
	shift
    fi
fi

if [ $# -lt 1 ] ; then 
     echo "Usage : `basename  $0` [-c|-u] XXX"
     echo "where XXX is the path to :"
     echo "               lib       : XXX/lib/lib*.a"
     echo "               header    : XXX/include/*.h"
     echo "               makefile  : XXX/etc/libraries.mk"
     echo "if -c is specified as first arg, only check (no files are written)"
     echo "if -u is specified as first arg, write libraries.mk"
     echo "whithout first arg, print to stdout"
     exit 1
fi

if  [ -d $1/lib ] && [ -d $1/include ] && [ -f $1/etc/libraries.mk ] ; then

ROOT_DIR=$1;
LIBMK=$1/etc/libraries.mk;


#if [ $DO_UPDATE -eq 1 ] ; then
#    LIBMK_UPD=$LIBMK.update
#    LIBMK_OLD=$LIBMK.`date +%Y_%m_%d`
#else
#    if [ $DO_UPDATE -eq 2 ] ; then
#	LIBMK_UPD=
#    else
#	LIBMK_UPD=> /dev/null
#    fi
#fi


(cat $LIBMK) | gawk  -v ROOT_DIR=$ROOT_DIR '
BEGIN {
# On cree un tableau contennant
#     - le nom des librairies installees
#     - le numero de version 
#     - un flag pour verifier par la suite quelles sont dans libraries.mk
#
  FIRSTPASS=0;
  OLD_PREFIX="";
  OLD_NUMBER="0";
  i=1;
  MAFONC = "(cd "ROOT_DIR"/lib ; ls -1 lib*.a | sort)";
  while (MAFONC | getline)
       {
        LIB_NAME=$0;
        sub ( /.a$/ , "", LIB_NAME); 
        sub ( /^lib/ , "", LIB_NAME);
        LIB_PREFIX=LIB_NAME;
        LIB_NUMBER=LIB_NAME;
        sub ( /[0-9]*$/ , "", LIB_PREFIX);
        sub ( LIB_PREFIX , "", LIB_NUMBER);
  if (OLD_PREFIX==LIB_PREFIX && FIRSTPASS)
    {
      if ((LIB_NUMBER+0) > (OLD_NUMBER+0))
	OLD_NUMBER=LIB_NUMBER;
    }
  else
    {
      if (!FIRSTPASS)
	FIRSTPASS=1; 
      else
	{
	  HL[1,i]=OLD_PREFIX;
	  HL[2,i]=OLD_NUMBER;
	  HL[3,i]=0;
	  i++;
	}
      OLD_PREFIX=LIB_PREFIX;
      OLD_NUMBER=LIB_NUMBER;
    }
}
HL[1,i]=OLD_PREFIX;
HL[2,i]=OLD_NUMBER;
HL[3,i]=0;
MAX_HL=i;
close (MAFONC);

# On cree un autre tableau pour les headers

  FIRSTPASS=0;
  OLD_PREFIX="";
  OLD_NUMBER="0";
  i=1;
  MAFONC = "(cd  "ROOT_DIR"/include ; ls -1 *.h | sort)";
  while (MAFONC | getline)
       {
        LIB_NAME=$0;
        sub ( /.h$/ , "", LIB_NAME); 
        LIB_PREFIX=LIB_NAME;
        LIB_NUMBER=LIB_NAME;
        sub ( /[0-9]*$/ , "", LIB_PREFIX);
        sub ( LIB_PREFIX , "", LIB_NUMBER);
  if (OLD_PREFIX==LIB_PREFIX && FIRSTPASS)
    {
      if ((LIB_NUMBER+0) > (OLD_NUMBER+0))
	OLD_NUMBER=LIB_NUMBER;
    }
  else
    {
      if (!FIRSTPASS)
	FIRSTPASS=1; 
      else
	{
	  HH[1,i]=OLD_PREFIX;
	  HH[2,i]=OLD_NUMBER;
	  HH[3,i]=0;
	  i++;
	}
      OLD_PREFIX=LIB_PREFIX;
      OLD_NUMBER=LIB_NUMBER;
    }
}
HH[1,i]=OLD_PREFIX;
HH[2,i]=OLD_NUMBER;
HH[3,i]=0;
MAX_HH=i;
close (MAFONC);

}

#
# process du libraries.mk
# on remplace les numeros inc/lib par les derniers numeros de version
# si inc/lib introuvable, on ne modifie pas la ligne
# Il doit y avoir une seul maro par ligne du type
#               xxxx_L   ou
#               xxxx_LIB ou
#               xxxx_H
#
# warnings sur stderr 
#


# si commentaire, on laisse tomber
/# Last updated on/ {
		     printf("# Last updated on %s\n", strftime("on %A %d %B %Y at %H:%M %Z"));
		     next;
		    }

/^[ \t]*#/  {
             print;
             next;
            }
# si macro, ca nous interresse
/=/ {
  MACRO = $0;
  NAME = $0;
  sub(/[ \t]*=.*$/, "", MACRO);
  sub(/^.*=[ \t]*/, "", NAME);

  LIB_NAME = NAME;

  if ( MACRO ~ /_L/)
{
   if (MACRO ~ /_LIB/)
     {
        sub ( /.a$/ , "", LIB_NAME); 
        sub ( /^lib/ , "", LIB_NAME);
     }
   else
        sub ( /^-l/ , "", LIB_NAME);
   
        LIB_PREFIX=LIB_NAME;
        LIB_NUMBER=LIB_NAME;
        sub ( /[0-9]*$/ , "", LIB_PREFIX);
        sub ( LIB_PREFIX , "", LIB_NUMBER);

	for (i=1; i<=MAX_HL; i++)
	  {
	    if (i==MAX_HL || HL[1,i]==LIB_PREFIX)
	      break;
	  }
	if (HL[1,i]==LIB_PREFIX)
	  {
	    if (MACRO ~ /_LIB/)
	      {
		if ((HL[2,i]+0) > (LIB_NUMBER+0))
		printf ("## CHANGED : lib%s%s.a is older than existing, changed\n",
			LIB_PREFIX, LIB_NUMBER) > "/dev/stderr";
		if ((HL[2,i]+0) < (LIB_NUMBER+0))
		printf ("## CHANGED : lib%s%s.a is newer than existing, changed\n",
			LIB_PREFIX, LIB_NUMBER) > "/dev/stderr";
		
		printf ("%-10s = lib%s%s.a\n", MACRO,LIB_PREFIX, HL[2,i]);
	      }
	    else
		printf ("%-10s =  -l%s%s\n", MACRO,LIB_PREFIX, HL[2,i]);
		HL[3,i]=1;
	  }
	else
	  {
	    printf ("%s\n", $0);
	    printf ("## Warning lib %s not found, left as is\n",
		    LIB_PREFIX) > "/dev/stderr";
	  }
}


else
  if ( MACRO ~ /_H/)

{
        sub ( /.h$/ , "", LIB_NAME); 
   
        LIB_PREFIX=LIB_NAME;
        LIB_NUMBER=LIB_NAME;
        sub ( /[0-9]*$/ , "", LIB_PREFIX);
        sub ( LIB_PREFIX , "", LIB_NUMBER);

	for (i=1; i<=MAX_HH; i++)
	  {
	    if (i==MAX_HH || HH[1,i]==LIB_PREFIX)
	      break;
	  }
	if (HH[1,i]==LIB_PREFIX)
	  {
	    if ((HH[2,i]+0) > (LIB_NUMBER+0))
		printf ("## CHANGED : %s%s.h is older than existing, changed\n",
			LIB_PREFIX, LIB_NUMBER) > "/dev/stderr";
	    if ((HH[2,i]+0) < (LIB_NUMBER+0))
		printf ("## CHANGED : %s%s.h is newer than existing, changed\n",
			LIB_PREFIX, LIB_NUMBER) > "/dev/stderr";
	    printf ("%-10s =    %s%s.h\n", MACRO,LIB_PREFIX, HH[2,i]);
	    HH[3,i]=1;
	  }
	else
	  {
	    printf ("%s\n", $0);
	    printf ("## Warning header %s not found, left as is\n",
		    LIB_PREFIX) > "/dev/stderr";
	  }
}

else
{
    printf ("## Warning : unrecognized line, left as is\n") > "/dev/stderr";
    printf ("%s\n", $0);
}


    
  next;
}


# sinon cest une ligne normale
{print;}


END {
for (i=1; i<=MAX_HL; i++)
  if (HL[3,i]==0)
    printf ("## WARNING no macro in libraries.mk for lib%s%s.a\n",
	     HL[1,i] , HL[2,i]) > "/dev/stderr";
for (i=1; i<=MAX_HH; i++)
  if (HH[3,i]==0)
    printf ("## WARNING no macro in libraries.mk for %s%s.h\n",
	    HH[1,i] , HH[2,i]) > "/dev/stderr";
    
}'
# $LIBMK_UPD



#if [ $DO_UPDATE -eq 1 ] ; then
#    cp -f $LIBMK $LIBMK_OLD
#    cp -f $LIBMK_UPD $LIBMK
#    rm -f $LIBMK_UPD
#    echo $LIBMK updated!
#    exit 0
#fi

else
    echo "`basename $0` : error, can't find file or dir"
    echo "lib       : $1/lib/lib*.a"
    echo "header    : $1/include/*.h"
    echo "makefile  : $1/etc/libraries.mk"
    exit 1
fi
