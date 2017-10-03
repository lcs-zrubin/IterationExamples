//: [Previous](@previous) / [Next](@next)

import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 360, height: 100)

//Make a loop to draw 10 rectangles with increaging brightness

canvas.drawShapesWithBorders = false

for i in stride(from: 0, through: 360, by: 1) {
    
    //Changes the colour
    canvas.fillColor = Color(hue: i, saturation: 100, brightness: 100, alpha: 100)
    
    //Drawing the Rectangles
    canvas.drawRectangle(bottomLeftX: i, bottomLeftY: 0, width: 1, height: canvas.height)
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
