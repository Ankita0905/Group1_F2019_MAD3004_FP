//
//  CommissionBasedPartTime.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class CommissionBasedPartTime:PartTime
{
    var commissionPer:Float
    init(ComTEmpID: Int, ComTEmptype: String, ComTEmpName: String, ComTEmpAge: Int, ComTEmpEarning: Float, Rate: Float, HoursWorked: Float,CommissionPer:Float)
    {
        self.commissionPer=CommissionPer
        
    }
}
