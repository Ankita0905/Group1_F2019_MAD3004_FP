//
//  Motorcycle.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

enum BikeType
{
    case sports
    case dualSports
    case cruiser
    
}
class Bike: Vehicle
{
    
    var type: BikeType
    var maxSpeed: Float
    init(type: BikeType, maxSpeed: Float, noOfDoor: Int, Convertable: Bool, eId: Int, make : String, model : String, plateNum: String, CommBY: commuteBy) throws
    {
      
        self.type=type
        self.maxSpeed=maxSpeed
        super.init(eId: eId , make: make, model: model , plateNum: plateNum, CommBY: CommBY)
      
    }
}
