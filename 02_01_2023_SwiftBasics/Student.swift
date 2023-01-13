//
//  Student.swift
//  02_01_2023_SwiftBasics
//
//  Created by Vishal Jagtap on 13/01/23.
//

import Foundation
//Model class of Student
class Student{
    var firstName : String
    var lastName : String
    var rollNumber : Int
    
    init(firstName : String, lastName : String, rollNumber : Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.rollNumber = rollNumber
    }
}
