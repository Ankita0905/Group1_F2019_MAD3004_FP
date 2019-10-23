//
//  Car.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

// by Kamal and Sandeep
enum CarError: Error
{
    case invalidNoOfDoors(noOfDoor: Int)
}




class Car: Vehicle
{
  
    var noOfDoor: Int
    var Convertable: Bool
    var carType: String
    init(eId: Int, make : String, model : String, plateNum: String, CommBY: String, noOfDoor: Int, Convertable: Bool, carType: String) throws
    {
        if noOfDoor > 4
        {
            throw CarError.invalidNoOfDoors(noOfDoor: noOfDoor)
        }
           self.noOfDoor = noOfDoor
           self.Convertable=Convertable
           self.carType=carType
        try super.init(eId: eId , make: make, model: model , plateNum: plateNum, CommBY: CommBY)
    
    
    
  /*  catch CarError.invalidNoOfDoors(let noOfDoor)
    {
    print("Inavlid Update Name : \(noOfDoor)")
    }*/
        func SetFacultyNam(name: Int) throws
        {
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

        func printMyData()
        {
            super.printMyData()
            print("Drives \(carType)   ")
            print("\(carType) has \(noOfDoor)")
            print("\(carType) is \(Convertable)")
        }
    
    
    
    }
}
