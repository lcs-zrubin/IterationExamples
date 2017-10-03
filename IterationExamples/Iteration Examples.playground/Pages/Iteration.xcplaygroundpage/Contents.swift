//: [Previous](@previous) / [Next](@next)

import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 400)

//Make a loop to draw 10 rectangles with increaging brightness

canvas.drawShapesWithBorders = false

for i in stride(from: 0, through: 500, by: 50) {
    
    //Changes the colour
    canvas.fillColor = Color(hue: 0, saturation: 100, brightness: i / 5, alpha: 100)
    
    //Drawing the Rectangles
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: i, width: canvas.width, height: 50)
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
