//
//  Vehicle.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
// by Kamal and Sandeep
enum VehicleError: Error
{
    case InvalidPlateNum(plateNum: String)


}
    enum commuteBy
{
    case car
    case bike
}

class Vehicle
{
    var eId: Int
    var make: String
    var model: String
    var  plateNum: String
  
    var CommBY: String
    
    init(eId : Int , make : String, model : String, plateNum: String, CommBY: String ) throws
    {
        self.eId=eId
        self.make=make
        self.model=model
        if plateNum.count<6
        {
            throw VehicleError.InvalidPlateNum(plateNum: plateNum)
        }
        self.plateNum=plateNum
        self.CommBY=CommBY


    }
    
    
    
     func printMyData()
     {
        print(" Drives a \(CommBY)")
        print(" Model: \(model)")
        print(" Make :\(make)" )
        print(" Plate Number :\(plateNum)")
    }
}
