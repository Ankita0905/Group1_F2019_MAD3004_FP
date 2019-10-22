//
//  CommissionBasedPartTime.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class CommisionBAsedPartTime:PartTime
{
    var commissionPer:Float
    
    init(ComTEmpID: Int, ComTEmptype: String, ComTEmpName: String, ComTEmpAge: Int, ComTEmpEarning: Float, Rate: Float, HoursWorked: Float,CommissionPer:Float)
    {
        self.commissionPer=CommissionPer
        super.init(PTEmpID: ComTEmpID, PTEmptype: ComTEmptype, PTEmpName: ComTEmpName, PTEmpAge: ComTEmpAge, PTEmpEarning: ComTEmpEarning, Rate: Rate, HoursWorked: HoursWorked)
    }
    
    func calHours()->Float
    {
        return rate*hoursworked
    }

    
}
