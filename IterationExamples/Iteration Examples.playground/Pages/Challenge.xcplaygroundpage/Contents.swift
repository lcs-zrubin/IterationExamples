//: [Previous](@previous) / [Next](@next)
//: # Challenge
//: Extend the code you wrote on the following page to generate this image:
//:
//: ![challenge](challenge.png "Challenge")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Below this line, try combining a loop and four statements that draw lines to generate the goal

canvas.translate(byX: 150, byY: 150)
for i in stride(from: 45, through: 360, by: 45) {
    canvas.rotate(by: 45)
    canvas.lineColor = Color(hue: i, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawLine(fromX: 100, fromY: 42, toX: 100, toY: -42)
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
