/*******************************************************************************

    An implementation of the Java Debug Wire Protocol (JDWP) for JOP
    Copyright (C) 2007 Paulo Abadie Guedes

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
    
*******************************************************************************/

package com.jopdesign.debug.jdwp.event;

import com.jopdesign.debug.jdwp.constants.ConstraintKindConstants;
import com.jopdesign.debug.jdwp.model.ReferenceType;

/**
 * ClassConstraint.java
 * 
 * 
 * @author Paulo Abadie Guedes
 *
 * 19/06/2007 - 21:48:26
 * 
 */
public class ClassConstraint extends BasicConstraint
{
  private ReferenceType referenceType;
  
  /**
   * @param type
   */
  public ClassConstraint(byte type, ReferenceType referenceType)
  {
    super(ConstraintKindConstants.ClassOnly);
    
    this.referenceType = referenceType;
  }
  
  /**
   * Accept only events created by a given type or any compatible type:
   * the same class or subclasses. For interfaces, any classe which 
   * implement the interface.
   */
  public boolean satisfyConstraint(Event event)
  {
    boolean result = false;
    
    int classId = event.getClassId();
    
    // TODO: finish this implementation later.
    // Will need accedd to the SymbolTable for this. For now, don't restrict.
//    result = referenceType.isAssignmentCompatibleWith(classId);
    result = true;
    
    return result;
  }
}
