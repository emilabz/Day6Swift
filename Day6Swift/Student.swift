//
//  Student.swift
//  Day6Swift
//
//  Created by MacStudent on 2019-02-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Student {
    var sid:Int
    var snm:String!
    var email:String
    init() {
        self.sid=0		
        self.snm=String()
        self.email=String()
    }
    init?(sid:Int,snm:String,email:String){
        if(sid<0){
            print("Student id must be greater than 0")
            return nil
        }
        if snm.count<10{
            print("Student name must be greater than/equal to 10 in length")
            return nil
        }
        if email.count<15{
            print("Student email must be greater than/equal to 15 in length")
            return nil
        }
        self.sid=sid
        self.snm=snm
        self.email=email
    }
    func printData(){
        print("StudentID: \(String(describing: self.sid))")
        print("Student Name: \(String(describing: self.snm))")
        print("Student email: \(String(describing: self.email))")
    }
}
