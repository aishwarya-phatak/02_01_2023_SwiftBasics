//
//  ViewController.swift
//  02_01_2023_SwiftBasics
//
//  Created by Vishal Jagtap on 11/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    var marks : [Double] = [23,23,23,24,25]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        percentage(m: marks)
        
        basics6()
        misc()
        addition(number1: 10, number2: 20)          //function call
        
        var result = squareOfANumber(number: 10)
        print("Result is : \(result)")
        //basics()
        //basics2()
        //basics3()
        //basics4()
    }
    
    //passing an array to a function
    func percentage(m : [Double]){
        var total : Double = 0
        
        for eachM in m {
            total += eachM
        }
        
        print("Total is : \(total)")
        var p : Double = (total/125.0) * 100.0
        print("Percentage is : \(p)")
    }
    
    func basics4(){
        //closures
        var multiply : (Int, Int) -> Int = {(a,b) in a*b}
        print(multiply(10,12))
    }

    func addition(number1 : Int, number2 : Int){            //function definition
        print("The addition is : \(number1 + number2)")
    }
    
    //function with arguments & return type
    func squareOfANumber(number : Int)->Int{
        return number * number
    }
    
    //cube closure
    var cube = {
        (x : Int) -> Int in x * x * x
    }
    
    func misc(){
        print(cube(7))          //cube closure used
    }
    
    func basics6(){
       var x = {                                //closure x in function
            (a : Int) in a * a                  //closure calculating square
        }
        print("The value of x is : \(x(8))")        //closure x with value 8
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
    
    
    func basics2(){
        //var arrays
        var numbers : [Int] = [10,10,12,13,14,15]
        var names : [String] = ["Pooja","Pratiksha","Sejal","Tushar"]
        var percentages : [Double] = [13.23,35.23,45.56,67.45]

        for eachNumber in numbers{
            print(eachNumber + 10)
        }

        for eachName in names{
            print("Name is : \(eachName)")
        }

        for eachPercentage in percentages{
            print(eachPercentage)
        }

        var marks = [60.67,56.45,78.56,10.45,46.56]

        //way 1 --> for-in loop
        var sum : Double = 0
        for mark in marks {
            sum += mark
        }

        print("The sum of student marks is : \(sum)")

        //way 2 --> forEach loop iteration
        var sum1 : Double = 0
        marks.forEach { mark in
            sum1 += mark
        }

        print("\nSum -- \(sum1)")

        var countOfElements = marks.count
        print(countOfElements)

        var percentageOfStudent = Int(sum) / countOfElements

        print(percentageOfStudent)
        var student : [String : Any] = [
                       "firstName" : "Tushar",
                       "lastName" : "Patil",
                       "rollNumber" : 12
        ]


        for (key, value) in student{
            print("\(key) -- \(value)")
        }

        //Array
        var numberArray : [Int] = [10,10,12,23,132,34]
        var arrays1 : [Any] = [10,12,"Tejas",34.54]
        for value in arrays1{
            print(value)
        }

        arrays1.forEach { value in
            print(value)
        }

        //task --> convert the string n --> bITcODE
        //var n = "BitCode"
        //var num6 = 1234     //calculate the addition of 1+2+3+4 --> 10
        //task 3 -> array of numbers --> 34, 56, 34, 23, 56  --> sum of elements, even or odd, no is prime or not?, array reverse, minimum & maxmium elemnts from an array.

        //ranges in swift
        for i in 1...10{
            print(i * 2)
        }


        for i in 1..<11{
            print(i * 5)
        }

        print(arrays1[1...3])

        var num7 = 1
        switch(num7){
            case 1 :
                print("Case 1 executed")
            case 2 : print("Case 2 exexuted")
            case 80...100 :
                print("range from 80 to 100 executed")
            default:
                print("Default case")
        }

        //Set
        var setN : Set = ["Tushar", "Mayuri","Sachin","Pooja","Pooja"]
        var setM : Set = [1,2,3,4,1,2]

        setM.forEach {
            print($0)
        }
    }
    
    func basics3(){
        for x in stride(from: 10, to: 20, by: 2){
            print(x)
           // print(x+2)
        }
        
        for y in stride(from: 10, through: 20, by: 2){
            print(y)
        }
    }
}
