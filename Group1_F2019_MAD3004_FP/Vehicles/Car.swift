//
//  Car.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
enum CarError: Error
{
}

enum cartype
{
}


}
class Car: Vehicle
{
    var noOfDoor: Int
    var Convertable: Bool
    init(noOfDoor: Int, Convertable: Bool, eId: Int, make : String, model : String, plateNum: String, CommBY: commuteBy)
    {
        self.noOfDoor=noOfDoor
        self.Convertable=Convertable
        super.init(eId: eId , make: make, model: model , plateNum: plateNum, CommBY: CommBY)
}
