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
    case invalidNoOfDoors(noOfDoor: Int)
}

enum CarType
{
    case manual
    case Automatic
}



class Car: Vehicle
{
  
    var noOfDoor: Int
    var Convertable: Bool
    var carType: CarType
    init(noOfDoor: Int, Convertable: Bool, carType: CarType, eId: Int, make : String, model : String, plateNum: String, CommBY: commuteBy) throws
    {
        if noOfDoor > 4
        {
            throw CarError.invalidNoOfDoors(noOfDoor: noOfDoor)
        }
           self.noOfDoor=noOfDoor
           self.Convertable=Convertable
           self.carType=carType
        try super.init(eId: eId , make: make, model: model , plateNum: plateNum, CommBY: CommBY)
    
    
    
  /*  catch CarError.invalidNoOfDoors(let noOfDoor)
    {
    print("Inavlid Update Name : \(noOfDoor)")
    }*/
        func SetFacultyNam(name: Int) throws {
            do{
                if noOfDoor > 4
                {
                    throw CarError.invalidNoOfDoors(noOfDoor: noOfDoor)
                }
               self.noOfDoor=noOfDoor
                
            }
            catch CarError.invalidNoOfDoors(let facultyName)
            {
                print("Inavlid Update Name : \(facultyName)")
            }
            
            
            
            
        }
}
}
