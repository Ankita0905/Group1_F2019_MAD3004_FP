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
    var hoursworked:Int

  
    init(PTEmpName:String,PTEmpAge:Int,PTEmpEarning:Float,Rate:Float,HoursWorked:Int)
    {
        self.rate=Rate
        self.hoursworked=HoursWorked
        super.init(EmpName:PTEmpName, EmpAge:PTEmpAge, EmpEarning:PTEmpEarning)
    }
    
    
    func printMyData() {
        <#code#>
    }
    
    
    
}
