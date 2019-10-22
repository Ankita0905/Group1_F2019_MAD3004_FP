//
//  FixedBasedPartTime.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class FixedBasedPartTime:PartTime
{
    var fixedAmount:Float
    
    override init(PTEmpID: Int, PTEmptype: String, PTEmpName: String, PTEmpAge: Int, PTEmpEarning: Float, Rate: Float, HoursWorked: Int,FixedAmount:Float) {
        self.fixedAmount=FixedAmount
        super .init(PTEmpID: <#T##Int#>, PTEmptype: <#T##String#>, PTEmpName: <#T##String#>, PTEmpAge: <#T##Int#>, PTEmpEarning: <#T##Float#>, Rate: <#T##Float#>, HoursWorked: <#T##Int#>)
    }
}
