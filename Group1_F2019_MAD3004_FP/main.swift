//
//  main.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

//var a = Intern( IName: "Karan", IAge: 23, IEarning: 1000.0, SchoolName: "Lambton",IEmpType: "Intern")
//print(a.calBirthYear())
//a.printMyData()
//var b=PartTime(PTEmpName: "Sandeep", PTEmpAge: 23, PTEmpEarning: 2000.0, Rate: 28, HoursWorked: 29)
//b.printMyData()

func readJsonFileArray(jsonFileName: String)
{
    let url = Bundle.main.url(forResource: "DataofEmp", withExtension: "json")
    
    guard let jsonData = url else{
        return
    }
    
    guard let data = try? Data(contentsOf: jsonData) else {
        return
    }
    
    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else {
        return
    }
    //print(json)
    var userList = [String: User]()
     if let jsonArray = json as? [Any]
     {
         var user: User!
         for userObject in jsonArray
         {
             user = User()
             if let jsonDictionay =  userObject as? [String: Any]
             {
               if let emptype = jsonDictionay["emptype"] as? String
                {
                    //print(emptype)
                    user.emptype = emptype
                }
                 if let name = jsonDictionay["name"] as? String
                 {
                     //print(name)
                     user.name = name
                 }
         
                 if let id = jsonDictionay["id"] as? Int
                 {
                     //print(id)
                     user.id = id
                 }
                if let age = jsonDictionay["age"] as? Int
                {
                    //print(age)
                    user.age = age
                }
                if let hrs = jsonDictionay["hoursworked"] as? Float
                {
                    //print(hrs)
                    user.hourswork = hrs
                }
                if let ComPTrate = jsonDictionay["rate"] as? Float
                {
                    //print(ComPTrate)
                    user.rate = ComPTrate
                }
                if let ComPTcommission = jsonDictionay["comission"] as? Float
                {
                   // print(ComPTcommission)
                    user.commssion = ComPTcommission
                }
                if let commuteBy = jsonDictionay["commBy"] as? String
                {
                     //print(commuteBy)
                    user.commuteBy = commuteBy
                }
                if let make = jsonDictionay["make"] as? String
                {
                     //print(make)
                    user.make = make
                }
                if let modelof = jsonDictionay["model"] as? String
                {
                     //print(modelof)
                    user.model = modelof
                }
                if let plateNumIs = jsonDictionay["plate"] as? String
                {
                     //print(plateNumIs)
                    user.plate = plateNumIs
                }
                if let noOfD = jsonDictionay["noOfDoors"] as? Int
                {
                     //print(noOfD)
                    user.noOfDoors = noOfD
                }
                if let con = jsonDictionay["convertable"] as? Bool
                {
                     //print(con)
                    user.convertable = con
                }
                if let Ctype = jsonDictionay["carType"] as? String
                {
                     //print(Ctype)
                    user.carType = Ctype
                }
                if let MaxSpeed = jsonDictionay["maxSpeed"] as? Float
                {
                     //print(Ctype)
                    user.maxSpeed = MaxSpeed
                }
                if let biketype = jsonDictionay["BikeType"] as? String
                {
                     //print(biketype)
                    user.bikeType = biketype
                }
            }
            userList[user.name!] = user
                       
            if user.emptype == "Intern"{
                      //  print("\n\n\n")
                let obj = Intern(IempID: user.id!,IName: user.name!, IAge: user.age!, IEarning: 100.0, SchoolName: "Lambton", IEmpType: user.emptype!)
                        obj.printMyData()
                if user.commuteBy=="Motorcycle"
                               {
                                   let mObj = try? Motorcycle(type: user.bikeType!, maxSpeed: user.maxSpeed!, eId: user.id!, make: user.make!, model: user.model!, plateNum: user.plate!, CommBY: user.commuteBy!)
                                mObj?.printMyData()
                               }
                
             }
           else if user.emptype=="PartTime"
                      {
                         // print("\n\n")
                        let PTobj = PartTime(PTEmpID: user.id!,PTEmptype: user.emptype!, PTEmpName: user.name!, PTEmpAge: user.age!, Rate: user.rate!, HoursWorked: user.hourswork!)
                          PTobj.printMyData()
                          
                      }
           else if user.emptype=="ComPartTime"
            {
                let ComPTobj = CommissionBasedPartTime(ComTEmpID: user.id!, ComTEmptype: user.emptype!, ComTEmpName: user.name!, ComTEmpAge: user.age!, Rate: user.rate!, HoursWorked: user.hourswork!, CommissionPer: user.commssion!)
                ComPTobj.printMyData()
                if user.commuteBy == "car"
                {
                    let carObj = try? Car(eId: user.id!, make: user.make!, model: user.model!, plateNum: user.plate!, CommBY: user.commuteBy!, noOfDoor: user.noOfDoors!, Convertable: user.convertable!, carType: user.carType!)
                   carObj?.printMyData()

                }
               
            }
            
            
            
            
        }
        
    }
   
}


 readJsonFileArray(jsonFileName: "DataofEmp")


