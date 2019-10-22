//
//  FullTime.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class FullTime:Employee,IPrintable
{
    var salary:Float
    var bonus:Float
    
    
    init(PTEmpID: Int,PTEmptype: String, PTEmpName:String,PTEmpAge:Int,PTEmpEarning:Float,Salary:Float,Bonus:Float)
    {
        self.salary=Salary
        self.bonus=Bonus
    }
    
    
    
}
