//
//  Intern.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Intern:Employee,IPrintable
{
  
    
   
    var schoolName:String
    
    init(IempID:Int,IName:String,IAge:Int,IEarning:Float,SchoolName:String,IEmpType: String)
    {
        self.schoolName=SchoolName
        super.init(EmpID: IempID, EmpName: IName, EmpAge: IAge, EmpEarning: IEarning, EmpType: IEmpType)
        //super.init(Emptype : IEmpType,EmpName: IName, EmpAge: IAge, EmpEarning: IEarning)
    }
    
    func printMyData()
    {
        print(" Employee Is \(empType)")
        print(" Emp ID :\(empID)\n","Name :\(name)\n","Year Of Birth :\(yearofBirth)\n","School :\(schoolName)\n")
    }
   
    
}
