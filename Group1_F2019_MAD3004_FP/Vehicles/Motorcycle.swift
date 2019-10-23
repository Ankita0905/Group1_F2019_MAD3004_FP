//
//  Motorcycle.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
// by Kamal and Sandeep

class Bike: Vehicle
{
    
    var type: String
    var maxSpeed: Float
    init(type: String, maxSpeed: Float,eId: Int, make : String, model : String, plateNum: String, CommBY: String) throws
    {
      
        self.type=type
        self.maxSpeed=maxSpeed
         try super.init(eId: eId , make: make, model: model , plateNum: plateNum, CommBY: CommBY)
    }
    
    override func printMyData()
    {
        super.printMyData()
        print("rides \(type) Bike with maxSpeed \(maxSpeed) ")
    }
}
