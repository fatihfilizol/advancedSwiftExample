//
//  main.swift
//  AdvancedSwiftProject
//
//  Created by Fatih Filizol on 15.09.2022.
//

import Foundation

let classJames =  MusicianClass(nameInput: "James", ageInput: 50, instrumentInput: "Guitar")

//print(classJames.age)


// let structJames = MusicianStruct(name: "James", age: 50, instrument: "Guitar")
var structJames = MusicianStruct(name: "James", age: 50, instrument: "Guitar")


//print(structJames.name)

classJames.age = 51
//print(classJames.age)


//Struct immutubility olduğu için hata veriyor (let ile tanımlarsak)
structJames.age = 51
//print(structJames.age)

//
//
//****************
//REFERANCE VS VALUE
//****************


let copyOfClassJames = classJames

var copyOfStructJames = structJames

//print(copyOfClassJames.age)
//print(copyOfStructJames.age)

copyOfClassJames.age = 52
copyOfStructJames.age = 52

//print(copyOfClassJames.age)
//print(copyOfStructJames.age)
//print("*************")
//print(classJames.age)
//print(structJames.age)

// Referance Types -> Class
//Copy -> Same object new referance -> 1 object + 2 referance
//
//Value Types -> Struct
//Copy -> new object -> 2 objects



//
//
//***************
// FUNCTION vs MUTATING FUNCTION
//***************

//print(classJames.age)
classJames.happyBirthday()
//print(classJames.age)
//print("************")
//print(structJames.age)
structJames.happyBirthday()
//print(structJames.age)




//
//
//***************
//TUPLE
//***************

let myTuple = (1,3)
//print(myTuple.0)

var myTuple2 = (1,3,5)
//print(myTuple2.2)

myTuple2.2 = 10
//print(myTuple2.2)

let myTuple3 = ("Ahmet", 30)

let myTuple4 = (10,[10,20,30])
//print(myTuple4.1[1])

let predifinedTuple : (String, String)
predifinedTuple.0 = "Ahmet"
predifinedTuple.1 = "Kemal"
//print(predifinedTuple.0)

let newTuple = (name:"James", metallica: true)
//print(newTuple.metallica)
//print(newTuple.name)




//
//
//*****************
// GUARD LET vs IF LET
//*****************

//Guard -> Negative && Confident
//If -> Positive

let myNumber = "5"
func convertToIntegerGuard (stringInput: String) -> Int{
    guard let myInteger = Int(stringInput) else{
        return 0
    }
    return myInteger
}

func convertToIntegerIf ( stringInput : String) -> Int {
    if let myInteger = Int(stringInput){
        return myInteger
    }
    else{
        return 0
    }
}

//print(convertToIntegerIf(stringInput: "9"))
//print(convertToIntegerGuard(stringInput: "3"))




//
//
//****************
// SWİTCH CASE & REMAINDER
//****************

let myNum = 11

let myRemainder = myNum % 3

//print(myRemainder)

if myRemainder == 1 {
    //print("it is 1")
}
else if myRemainder == 2{
    //print("it is 2")
}
else if myRemainder == 3 {
    //print("it is 3")
}

switch myRemainder{
case 1...3:
    print("it is 1-3")
case 4:
    print("it is 4")
case 5:
    print("it is 5")
default:
    print("none of the above")
}




//
//
//*****************
// BREAKPOINT
//*****************


var x = 5

//print(x)

x += 1

//print(x)




//
//
//*****************
//PROTOCOL
//*****************

protocol Running {
    func myRun ()
    
    
}
class Animal{
    func test (){
        print("Test")
    }
}

class Dog : Running{
    func myRun() {
        print("Dog is running")
    }
}
let barley = Dog()
barley.myRun()

class Cat : Animal, Running {
    func myRun() {
        print("cat is running")
    }
    
    
}
let cat = Cat()
cat.myRun()

class Turtle : Animal{
    
}

let leonardo = Turtle()
leonardo.test()

struct Bird : Running {
    func myRun() {
        print("Bird is not running")
    }
    
    
}
let bird = Bird()
bird.myRun()
print("**********************")
print("**********************")




//
//
//**********************
//Closure
//**********************

//Fonksiyona başka bir fonksiyonu parametre olarak verme
func sum (num1: Int, num2: Int) -> Int {
    return num1 + num2
}

func calculate(num1: Int, num2: Int, myFunc: (Int, Int) -> Int) -> Int{
    return myFunc(num1,num2)
}

print(calculate(num1: 3, num2: 5, myFunc: sum))
 

//Closure yapısı
let multiply = {(num1: Int, num2: Int) -> Int in
    return num1 * num2
}

print(calculate(num1: 3, num2: 5, myFunc: multiply))

print(calculate(num1: 6, num2: 3, myFunc: { (num1: Int, num2: Int) -> Int in
    return num1 * num2
}))

print(calculate(num1: 8, num2: 9, myFunc: { (num1, num2) in
    return num1 * num2
}))

print(calculate(num1: 9, num2: 9, myFunc: { (num1, num2) in num1 * num2
}))

print(calculate(num1: 5, num2: 9, myFunc: { $0 * $1 }))


let myArray = [10,20,30,40,50]

func test (num5: Int) -> Int {
    return num5 / 5
}

print(myArray.map(test))

print(myArray.map({$0 / 5}))

