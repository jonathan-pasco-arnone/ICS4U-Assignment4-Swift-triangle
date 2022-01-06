// 
//  Created by Jonathan Pasco-Arnone
//  Created on 2021-12-16
//  Version 1.0
//  Copyright (c) 2021 Jonathan Pasco-Arnone. All rights reserved.
//
//  In order to compile and run these files,
//  I had to use the following command:
//  swiftc -o combined *.swift; ./combined
//  This program uses a custom class.

// Making an error case.
enum MyError: Error {
    case invalidInteger(String)
}

func isValid(lengthA: Double, lengthB: Double, lengthC: Double) -> Bool {
    var returnBool: Bool = false

    // If any two sides are less than the other
    if lengthA + lengthB < lengthC || lengthA + lengthC < lengthB
        || lengthB + lengthC < lengthA {

        // The triangle is invalid
        print("\nInvalid inputs\n")

    // If the triangle either isn't set or is set to an impossible length
    } else if lengthA <= 0 || lengthB <= 0 || lengthC <= 0 {
        // The triangle is invalid
        print("\nPlease use real lengths\n\n")
        returnBool = false
    } else {

        // The triangle is valid
        returnBool = true
    }

    return returnBool
}

var triangleValid: Bool = false
var sideA: Double = 0
var sideB: Double = 0
var sideC: Double = 0

print("Please input the three sides")

while !triangleValid {
    do {

        // Inputs
        print("\nSide A: ")

        // Unwraps the input
        if let sideInputA: Double = Double(readLine()!) {
            sideA = sideInputA
        } else {
            throw MyError.invalidInteger("Error")
        }

        print("\nSide B: ")

        // Unwraps the input
        if let sideInputB: Double = Double(readLine()!) {
            sideB = sideInputB
        } else {
            throw MyError.invalidInteger("Error")
        }

        print("\nSide C: ")

        // Unwraps the input
        if let sideInputC: Double = Double(readLine()!) {
            sideC = sideInputC
        } else {
            throw MyError.invalidInteger("Error")
        }

    } catch {
        print("Please input again")
    }

    triangleValid = isValid(lengthA: sideA, lengthB: sideB, lengthC: sideC)
}

// Defining variables
let fullTriangle: Triangle = Triangle(lengthInputA: sideA,
    lengthInputB: sideB, lengthInputC: sideC)

print("The area is: ", fullTriangle.area)
print("Angle A is: ", fullTriangle.angleA)
print("Angle B is: ", fullTriangle.angleB)
print("Angle C is: ", fullTriangle.angleC)
print("The name is: ", fullTriangle.name)
print("The perimeter is: ", fullTriangle.perimeter)
