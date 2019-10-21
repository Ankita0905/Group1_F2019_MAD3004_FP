//
//  Employee.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Employee{
    var name: String
    var age: Int
    var earning: Float = 1000.0
    var empType : String
    var yearofBirth : Int
    {
        get {
                    let date = Date()
                    let calendar = Calendar.current
                    let components = calendar.dateComponents([.year], from: date)
                    let year = components.year!
                    return year-age
        }
    }
    
    init(EmpName:String,EmpAge:Int,EmpEarning:Float,EmpType: String)
    {
        name = EmpName
        age = EmpAge
        earning = EmpEarning
        empType=EmpType
    }
    
    
    
    // created By Anikta and Karan
    //https://www.zerotoappstore.com/get-year-month-day-from-date-swift.html
//    func calBirthYear() -> Int {
//        let date = Date()
//        let calendar = Calendar.current
//        let components = calendar.dateComponents([.year], from: date)
//        let year = components.year!
//        return year-age
//
//
//    }
    
//   func calEarnings() -> <#return type#>
//   {
//       <#function body#>
//   }
}
