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
| Tool    :                   XFSM                           |
|                                                             |
| File    :                  Menu.c                           |
|                                                             |
| Authors :              Jacomme Ludovic                      |
|                                                             |
| Date    :                   04.12.96                        |
|                                                             |
\------------------------------------------------------------*/

/*------------------------------------------------------------\
|                                                             |
|                         Include Files                       |
|                                                             |
\------------------------------------------------------------*/

# include <stdio.h>
# include <Xm/Xm.h>
# include <Xm/PushBG.h>
# include <Xm/CascadeBG.h>
# include <Xm/RowColumn.h>

# include "mut.h"
# include "aut.h"
# include "abl.h"
# include "bdd.h"
# include "fsm.h"
# include "XSB.h"
# include "XTB.h"
# include "XMF.h"
# include "XME.h"
# include "XMV.h"
# include "XMT.h"
# include "XMS.h"
# include "XMH.h"
# include "XMX.h"

# include "XMX_menu.h"

/*------------------------------------------------------------\
|                                                             |
|                          Variables                          |
|                                                             |
\------------------------------------------------------------*/

  Widget XfsmMenuBar;

  XfsmMenuItem XfsmMainMenu[] =

         {
           {
             "File",
             'F',
             NULL,
             NULL,
             &xmCascadeButtonGadgetClass,
             False,
             False,
             False,
             NULL,
             (XtPointer)NULL,
             (Widget)NULL,
             (Widget)NULL,
             XfsmFileMenu
           }
           ,
           {
             "Edit",
             'E',
             NULL,
             NULL,
             &xmCascadeButtonGadgetClass,
             False,
             False,
             False,
             NULL,
             (XtPointer)NULL,
             (Widget)NULL,
             (Widget)NULL,
             XfsmEditMenu
           }
           ,
           {
             "View",
             'V',
             NULL,
             NULL,
             &xmCascadeButtonGadgetClass,
             False,
             False,
             False,
             NULL,
             (XtPointer)NULL,
             (Widget)NULL,
             (Widget)NULL,
             XfsmViewMenu
           }
           ,
           {
             "Tools",
             'T',
             NULL,
             NULL,
             &xmCascadeButtonGadgetClass,
             False,
             False,
             False,
             NULL,
             (XtPointer)NULL,
             (Widget)NULL,
             (Widget)NULL,
             XfsmToolsMenu
           }
           ,
           {
             "Setup",
             'S',
             NULL,
             NULL,
             &xmCascadeButtonGadgetClass,
             False,
             False,
             False,
             NULL,
             (XtPointer)NULL,
             (Widget)NULL,
             (Widget)NULL,
             XfsmSetupMenu
           }
           ,
           {
             "Help",
             'H',
             NULL,
             NULL,
             &xmCascadeButtonGadgetClass,
             False,
             False,
             True,
             NULL,
             (XtPointer)NULL,
             (Widget)NULL,
             (Widget)NULL,
             XfsmHelpMenu
           }
           ,
           {
             NULL
           }
         };

/*------------------------------------------------------------\
|                                                             |
|                          Functions                          |
|                                                             |
\------------------------------------------------------------*/
/*------------------------------------------------------------\
|                                                             |
|                      XfsmInitializeMenu                    |
|                                                             |
\------------------------------------------------------------*/

void XfsmInitializeMenu()

{
  autbegin();

  XfsmMenuBar = XmCreateMenuBar( XfsmMainWindow,
                                 "XfsmMenuBar", NULL, 0 );

  XfsmBuildMenus( XfsmMenuBar, XfsmMainMenu );

  XtManageChild( XfsmMenuBar );

  autend();
}

