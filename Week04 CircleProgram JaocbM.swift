import Foundation
//variables
var d = 0.00 // diameter
var r = 0.00 // radius
var a = 0.00 // answer
var m = ("") // meassurment format

//constants
let pi = 3.14

//calculation
m = ("mm")
d = 8.00
a = (d * d)
a = a * pi

//results
print("results: for a circle with a diameter of \(String(d))\(m). the area is \(String(a))\(m).")
