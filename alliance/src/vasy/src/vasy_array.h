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
| Tool    :                     VASY                          |
|                                                             |
| File    :                 vasy_array.h                      |
|                                                             |
| Authors :                Jacomme Ludovic                    |
|                                                             |
| Date    :                   13.12.99                        |
|                                                             |
\------------------------------------------------------------*/


# ifndef VASY_ARRAY_H
# define VASY_ARRAY_H

/*------------------------------------------------------------\
|                                                             |
|                           Constants                         |
|                                                             |
\------------------------------------------------------------*/

# define VASY_VBH_TYPE_ARRAY_MASK   0x1
# define VASY_VBH_TYPE_VECTOR_MASK  0x2

/*------------------------------------------------------------\
|                                                             |
|                            Macro                            |
|                                                             |
\------------------------------------------------------------*/

# define IsVasyVbhTypeArray( T )    ((T)->FLAGS &   VASY_VBH_TYPE_ARRAY_MASK)
# define SetVasyVbhTypeArray( T )   ((T)->FLAGS |=  VASY_VBH_TYPE_ARRAY_MASK)
# define ClearVasyVbhTypeArray( T ) ((T)->FLAGS &= ~VASY_VBH_TYPE_ARRAY_MASK)

# define IsVasyVbhTypeVector( T )    ((T)->FLAGS &   VASY_VBH_TYPE_VECTOR_MASK)
# define SetVasyVbhTypeVector( T )   ((T)->FLAGS |=  VASY_VBH_TYPE_VECTOR_MASK)
# define ClearVasyVbhTypeVector( T ) ((T)->FLAGS &= ~VASY_VBH_TYPE_VECTOR_MASK)

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

  extern void VasyExpandArrayVbhFig();

# endif
