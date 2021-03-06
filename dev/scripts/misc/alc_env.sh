# -*- Mode: Shell-script -*-
#             ,,,
#            (o o)
####=====oOO--(_)--OOO=========================================####
#
#  Alliance CAD system environnement
#  Usage (in Bourne-shell) : > . alc_env.sh
#  (C) 1997 Czo  -- <sirol@asim.lip6.fr>
#  $Id: alc_env.sh,v 1.1 1999/09/09 14:24:53 czo Exp $
#  $Name:  $

# Which platform for Alliance CAD

 case `uname` in
   Linux*) case `uname -r` in
	    1.*) MACHINE=Linux_aout ;;
	    *)   MACHINE=Linux_elf  ;;
	   esac ;;
   SunOS*) case `uname -r` in
            5*)  MACHINE=Solaris ;;
            *)   MACHINE=SunOS ;;
	   esac ;;
   *)     MACHINE=Unknown ;;
 esac
 export MACHINE


# Where the Alliance CAD is installed

 TOP=/users/soft5/newlabo/$MACHINE ;      export TOP

# User def 

         MBK_IN_LO=vst;                   export MBK_IN_LO
        MBK_OUT_LO=vst;                   export MBK_OUT_LO 
         MBK_IN_PH=ap;                    export MBK_IN_PH
        MBK_OUT_PH=ap;                    export MBK_OUT_PH

      MBK_WORK_LIB=.;                     export MBK_WORK_LIB
    MBK_CATAL_NAME=CATAL;                 export MBK_CATAL_NAME

	 VH_MAXERR=10;			  export VH_MAXERR
	 VH_BEHSFX=vbe;			  export VH_BEHSFX
	 VH_PATSFX=pat;			  export VH_PATSFX

      MBK_CATA_LIB=.:$TOP/cells/sclib;    export MBK_CATA_LIB
    MBK_TARGET_LIB=$TOP/cells/sclib;      export MBK_TARGET_LIB
        MBK_C4_LIB=./cellsC4;             export MBK_C4_LIB

   XPAT_PARAM_NAME=$TOP/etc/xpat.par;     export XPAT_PARAM_NAME
   XFSM_PARAM_NAME=$TOP/etc/xfsm.par;     export XFSM_PARAM_NAME

 DREAL_TECHNO_NAME=$TOP/etc/cmos_7.dreal; export DREAL_TECHNO_NAME
 GRAAL_TECHNO_NAME=$TOP/etc/cmos_7.graal; export GRAAL_TECHNO_NAME

   RDS_TECHNO_NAME=$TOP/etc/cmos_7.rds;   export RDS_TECHNO_NAME
   ELP_TECHNO_NAME=$TOP/etc/prol10.elp;   export ELP_TECHNO_NAME


## Update PATH and MANPATH
PATH=$HOME/labo/$MACHINE/bin:$TOP/bin:$PATH
export PATH
MANPATH=$TOP/man:$MANPATH
export MANPATH


# Show results
if [ "$PS1" != "" ]; then
  if [ ! $PS1 = "\$" ]; then
	alias xmbk='eval `\xmbk -c`'
	cat /users/soft5/newlabo/motd
        echo ""
        echo "Alliance settings :"
        echo ""
        echo "    MACHINE = $MACHINE"
        echo "    TOP     = $TOP"
        echo ""
  fi
fi

# EOF -- $Source: /dsk/l1/alliance/cvsroot/dev/scripts/misc/alc_env.sh,v $

