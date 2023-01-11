//
//  ViewController.swift
//  02_01_2023_SwiftBasics
//
//  Created by Vishal Jagtap on 11/01/23.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        basics()
    }
    
    func basics(){
        //Swift features
        //1 - type inference

        var num1 : Int = 0
        var num2 : Int = 24

        var numberThree : Int = Int()       //internally 0 is assigned

        var num3 = 20           //by type inference the datatype of num3 - Int
        var result = num1 + num2
        print("Result of addition is - \(result)")
        print(result)
        //task - mention variable and use all the arithmatic operators
        var number1 = 100
        number1 = 2230

        let name = "Tushar"

        var stduentName : String = "Rohan"
        var s : String = ""
        var charA : Character = "x"

        var percentage : Float = 56.45
        var average : Double = 0.78

        var n1 = 20

        var firstName = "Sachin"
        var lastName = "Pathak"
        var name1 = firstName + lastName            //way1
        print("FullName : \(name1)")
        firstName += lastName                       //compressed form of operator -- way2

        //===   !==
        var address : String = """
        BitCode Technologies,
        Karve Road
        Pune - 411 004
        """

        print(address)

        let numberFour : Int = Int()
        let numberFive : Int = 199

        let nameOfStudent : String = String()
        //Optionals

        var count : Int? = 10        //count - optional integer
        print(count! + 10)           //way 1 - force unwrapping

        var total1 : Int! = 104
        print(total1!)

        //way 2
        //nil coalescing --> ??

        var totalMarks : Int?
        var value = totalMarks ?? 400           //totalMarks ?? defaultValue
        print(value)

        var stringName : String?
        print(stringName ?? "Bitcode")


        //way 3 -- traditional if else statement
        var color : String? = "Yellow"
        if color != nil{
            print(color!)
        } else {
            print("Nil Value for color")
        }

        //way 4 & 5 -- optional binding
        //if-let
        //guard-let

        var age : Int? = 15
        if let temp = age{
            print("The value of temp is not nil so it is unwrapped and checked for nil -- \(temp)")
        } else {
            print("The value is nil")
        }

        //Dictionary
        //dictionary --> key value pairs
        //if you want heterogenous collection you need to mention [String : Any] while defining dictionary

        var student : [String : Any] = [
                       "firstName" : "Tushar",
                       "lastName" : "Patil",
                       "rollNumber" : 12
        ]

        func checkValue(key : String){
            guard let keyPresent = student[key] else {
                print("\nThe key didn't match in the dictionary")
                return
            }
            print("Key that is a part of dictionary -- \(keyPresent)")
        }
        checkValue(key: "rollNo")
    }
}
