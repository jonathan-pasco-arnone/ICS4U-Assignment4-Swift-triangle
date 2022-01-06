/*
* This is the class file
*
* @author  Jonathan Pasco-Arnone
* @version 1.0
* @since   2021-12-15
*/

import Foundation

// The triangle class
class Triangle {
    // Variables/Constants
    private(set) var lengthA: Double
    private(set) var lengthB: Double
    private(set) var lengthC: Double
    private(set) var area: Double
    private(set) var angleA: Double
    private(set) var angleB: Double
    private(set) var angleC: Double
    private(set) var name: String
    private(set) var perimeter: Double
    private(set) var semiperimeter: Double
    private(set) var degrees: Double

    // The constructor
    init (lengthInputA: Double, lengthInputB: Double, lengthInputC: Double) {
        // Variables/Constants
        let ninetyDegrees: Double = 90
        let oneEighty: Double = 180

        lengthA = lengthInputA
        lengthB = lengthInputB
        lengthC = lengthInputC

        degrees = oneEighty / Double.pi

        // The "degrees" changes the result from a radian to a degree
        angleA = degrees * (acos((pow(lengthB, 2)
            + pow(lengthC, 2) - pow(lengthA, 2))
            / (2 * lengthB * lengthC)))

        angleB = degrees * (acos((pow(lengthA, 2)
            + pow(lengthC, 2) - pow(lengthB, 2))
            / (2 * lengthA * lengthC)))

        angleC = degrees * (acos((pow(lengthA, 2)
            + pow(lengthB, 2) - pow(lengthC, 2))
            / (2 * lengthA * lengthB)))

        /*
        * Name
        */

        // If all of the angles are acute
        if angleA < ninetyDegrees && angleB < ninetyDegrees
            && angleC < ninetyDegrees {
            name = "Acute "
        // If any of the angles are obtuse
        } else if angleA > ninetyDegrees || angleB > ninetyDegrees
            || angleC > ninetyDegrees {
            name = "Obtuse "
        // If there is a right angle
        } else {
            name = "Right "
        }

        // If all the angles are equal
        if angleA == angleB && angleB == angleC {
            name += "Equilateral "
        // If only two of the angles are equal
        } else if angleA == angleB || angleB == angleC
            || angleA == angleC {
            name += "Isosceles"
        // If none of the angles are equal
        } else {
            name += "Scalene"
        }

        perimeter = lengthA + lengthB + lengthC
        semiperimeter = perimeter / 2

        area = (semiperimeter * (semiperimeter - lengthA) * (semiperimeter
            - lengthB) * (semiperimeter - lengthC)).squareRoot()
    }
}
