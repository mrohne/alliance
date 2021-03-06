
// This file is part of the Alliance Project.
// Copyright (C) Laboratoire LIP6 - Departement ASIM
// Universite Pierre et Marie Curie
//
// The Alliance Project  is free software;  you can  redistribute it and/or
// modify  it  under the  terms  of  the  GNU  General  Public License  as
// published by  the Free  Software Foundation; either  version 2  of  the
// License, or (at your option) any later version.
// 
// The Alliance Project  is distributed in the hope that it will be useful,
// but  WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of
// MERCHANTABILITY  or  FITNESS  FOR A  PARTICULAR PURPOSE.   See  the GNU
// General Public License for more details.
// 
// You should have received a copy  of  the  GNU  General  Public  License
// along with  the Alliance Project;  if  not,  write to the  Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
//
//
// License-Tag
//
// Date   : 29/01/2004
// Author : Christophe Alexandre  <Christophe.Alexandre@lip6.fr>
//
// Authors-Tag 
#ifndef __PINS_H
#define __PINS_H

#include "PElem.h"
#include "PBBox.h"
#include "mut.h"
#include "mlo.h"

class PIns: public PElem {
    
  protected:  
    const loins*	_instance;
    double		_width;

  public:
    PIns(const loins* ins); 

    const loins*	GetInstance() const			{ return _instance; }
    double		GetWidth() const			{ return _width; }
    
    virtual double	GetHeight() const			{ return 0; }
    virtual ~PIns() {}
    
    PBBox		GetBBox() const;
    virtual ostream&	Print(ostream& os) const = 0;
    
    ofstream&	Plot(ofstream& out) const;
};

#endif /* __PINS_H */
