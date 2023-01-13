//
//  SecondViewController.swift
//  02_01_2023_SwiftBasics
//
//  Created by Vishal Jagtap on 13/01/23.
//

import UIKit

class SecondViewController: UIViewController {

    var p = Person(personName: "Pooja", aadharNumber: 12345)
    
    var student = Student(firstName: "Yuvaraj", lastName: "Pawar", rollNumber: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var s1 = student
        
        //class -- reference types
        print("student -- \(student.firstName)")
        print("s1 -- \(s1.firstName)")
        
        student.firstName = "Sachin"
        print("student -- \(student.firstName)")
        print("s1 -- \(s1.firstName)")
        
        s1.firstName = "Shubham"
        print("student -- \(student.firstName)")
        print("s1 -- \(s1.firstName)")
        
        //structures are value types
        var p1 = p
        print(p.personName)
        print(p.aadharNumber)
        
        print(p1.personName)
        print(p1.aadharNumber)
        
        p.personName = "Pratiksha"
        print(p.personName)
        print(p1.personName)
        
        p1.aadharNumber = 909023
        print(p1.aadharNumber)
        print(p.aadharNumber)
    
    }
}
