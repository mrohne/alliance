/*------------------------------------------------------------\
|                                                             |
| This file is part of the Alliance CAD System Copyright      |
| (C) Laboratoire LIP6 - Département ASIM Universite P&M Curie|
|                                                             |
| Home page      : http://www-asim.lip6.fr/alliance/          |
| E-mail         : mailto:alliance-users@asim.lip6.fr       |
|                                                             |
| This progam is  free software; you can redistribute it      |
| and/or modify it under the  terms of the GNU General Public |
| License as  published by the Free Software Foundation;      |
| either version 2 of the License, or (at your option) any    |
| later version.                                              |
|                                                             |
| Alliance VLSI  CAD System  is distributed  in the hope that |
| it  will be useful, but WITHOUT  ANY WARRANTY;              |
| without even the  implied warranty of MERCHANTABILITY or    |
| FITNESS FOR A PARTICULAR PURPOSE. See the GNU General       |
| Public License for more details.                            |
|                                                             |
| You should have received a copy  of the GNU General Public  |
| License along with the GNU C Library; see the file COPYING. |
| If not, write to the Free Software Foundation, Inc.,        |
| 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.                     |
|                                                             |
\------------------------------------------------------------*/

/*------------------------------------------------------------\
|                                                             |
| Tool    :                   DREAL                           |
|                                                             |
| File    :                   icon.c                          |
|                                                             |
| Authors :              Jacomme Ludovic                      |
|                                                             |
| Date    :                  28.03.95                         |
|                                                             |
\------------------------------------------------------------*/

/*------------------------------------------------------------\
|                                                             |
|                         Include Files                       |
|                                                             |
\------------------------------------------------------------*/

# include <Xm/Xm.h>
# include <X11/Intrinsic.h>
# include "mut.h"
# include "rds.h"
# include "GTB.h"
# include "GTB_icon.h"

/*------------------------------------------------------------\
|                                                             |
|                           Constants                         |
|                                                             |
\------------------------------------------------------------*/
/*------------------------------------------------------------\
|                                                             |
|                            Types                            |
|                                                             |
\------------------------------------------------------------*/
/*------------------------------------------------------------\
|                                                             |
|                          Variables                          |
|                                                             |
\------------------------------------------------------------*/
/*------------------------------------------------------------\
|                                                             |
|                          Functions                          |
|                                                             |
\------------------------------------------------------------*/
/*------------------------------------------------------------\
|                                                             |
|                        DrealSetIcon                         |
|                                                             |
\------------------------------------------------------------*/

void DrealSetIcon( ShellWidget, IconBits, IconWidth, IconHeight )

     Widget  ShellWidget;
     char   *IconBits;
     int     IconWidth;
     int     IconHeight;
{
  Pixmap IconPixmap;

  rdsbegin();

  IconPixmap = XCreatePixmapFromBitmapData( XtDisplay( ShellWidget ),
                                            RootWindowOfScreen( XtScreen( ShellWidget ) ), 
                                            IconBits, IconWidth, IconHeight,
                                            WhitePixelOfScreen( XtScreen( ShellWidget ) ),
                                            BlackPixelOfScreen( XtScreen( ShellWidget ) ),
                                            DefaultDepthOfScreen( XtScreen( ShellWidget ) ) );
  XtVaSetValues( ShellWidget,
                 XmNiconPixmap, IconPixmap,
                 XmNiconic, False,
                 NULL );

  rdsend();
}

