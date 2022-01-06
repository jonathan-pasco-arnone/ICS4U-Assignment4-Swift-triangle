/*
* This is the class file
*
* @author  Jonathan Pasco-Arnone
* @version 1.0
* @since   2021-12-15
*/

// The triangle class
class Triangle {
    private(set) var speed: Int
    let maxSpeed: Int
    private(set) var quantityWheels: Int
    var colour: String

    // The constructor
    init (startColour: String, startMaxSpeed: Int, startLicensePlate: String,
          initialQuantityWheels: Int) {
        licensePlate = startLicensePlate
        colour = startColour
        maxSpeed = startMaxSpeed
        quantityWheels = initialQuantityWheels
        speed = 0
    }
}
