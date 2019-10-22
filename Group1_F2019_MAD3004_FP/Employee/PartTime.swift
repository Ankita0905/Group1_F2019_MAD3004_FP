//
//  PartTime.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class PartTime:Employee,IPrintable
{
    var rate:Float
    var hoursworked:Float

  
    init(PTEmpID: Int,PTEmptype: String, PTEmpName:String,PTEmpAge:Int,PTEmpEarning:Float,Rate:Float,HoursWorked:Float)
    {
        self.rate=Rate
        self.hoursworked=HoursWorked
        super.init(EmpID: PTEmpID,EmpName:PTEmpName, EmpAge:PTEmpAge, EmpEarning:PTEmpEarning, EmpType: PTEmptype)
    }
    
    
    func printMyData() {
        print(" Employee Is \(empType)")
        print(" Emp ID :\(empID)\n","Name :\(name)\n","Age :\(age)\n","Rate :\(rate)\n","Hours Worked :\(hoursworked)\n")
    }
    
    
    
    
}
