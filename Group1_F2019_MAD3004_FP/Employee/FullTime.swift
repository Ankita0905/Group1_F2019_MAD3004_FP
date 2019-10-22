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
    
    
    init(FTEmpID: Int,FTEmptype: String, FTEmpName:String,FTEmpAge:Int,FTEmpEarning:Float,Salary:Float,Bonus:Float)
    {
        self.salary=Salary
        self.bonus=Bonus
        super.init(EmpID: FTEmpID,EmpName:FTEmpName, EmpAge:FTEmpAge, EmpEarning:FTEmpEarning, EmpType: FTEmptype)
    }
    
    
    func printMyData() {
        print(" Employee Is \(empType)")
        print(" Emp ID :\(empID)\n","Name :\(name)\n","Age :\(age)\n","Salary :\(salary)\n","Bonus :\(bonus)\n")
    }
    
    override func calEarnings()
    {
       let total=salary+bonus
        print("Total Earnings : \(total)")
        
    }
    
    
    
}
