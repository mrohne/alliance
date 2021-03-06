/*------------------------------------------------------------\
|                                                             |
| This file is part of the Alliance CAD System Copyright      |
| (C) Laboratoire LIP6 - Département ASIM Universite P&M Curie|
|                                                             |
| Home page      : http://www-asim.lip6.fr/alliance/          |
| E-mail         : mailto:alliance-users@asim.lip6.fr       |
|                                                             |
| This progam is  free software; you can redistribute it      |
| and/or modify it under the  terms of the GNU Library General|
| Public License as published by the Free Software Foundation |
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
| Tool    :                     Sch                           |
|                                                             |
| File    :                  schfree.c                        |
|                                                             |
| Date    :                   28.01.97                        |
|                                                             |
\------------------------------------------------------------*/
/*------------------------------------------------------------\
|                                                             |
|                         Include Files                       |
|                                                             |
\------------------------------------------------------------*/

# include "mut.h"
# include "aut.h"
# include "mlo.h"
# include "scl.h"

# include <stdio.h>
# include <string.h>
# include "schfree.h"
# include "scherror.h"

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
|                     Sch Free Functions                      |
|                                                             |
\------------------------------------------------------------*/
/*------------------------------------------------------------\
|                                                             |
|                      Sch Free Figure                        |
|                                                             |
\------------------------------------------------------------*/
 
void freeschfig( Figure )

  schfig_list *Figure;
{
  autfreeblock( (char *)Figure );
}

/*------------------------------------------------------------\
|                                                             |
|                        Sch Free Box                         |
|                                                             |
\------------------------------------------------------------*/

void freeschbox( Box )

  schbox_list *Box;
{
  autfreeheap( (char *)Box, sizeof( schbox_list ));
}

/*------------------------------------------------------------\
|                                                             |
|                        Sch Free Connector                   |
|                                                             |
\------------------------------------------------------------*/

void freeschcon( Connector )

  schcon_list *Connector;
{
  autfreeheap( (char *)Connector, sizeof( schcon_list ));
}

/*------------------------------------------------------------\
|                                                             |
|                        Sch Free Net                         |
|                                                             |
\------------------------------------------------------------*/

void freeschnet( Net )

  schnet_list *Net;
{
  autfreeheap( (char *)Net, sizeof( schnet_list ));
}

/*------------------------------------------------------------\
|                                                             |
|                        Sch Free Wire                        |
|                                                             |
\------------------------------------------------------------*/

void freeschwir( Wire )

  schwir_list *Wire;
{
  autfreeheap( (char *)Wire, sizeof( schwir_list ));
}

