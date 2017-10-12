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

for x in stride(from: 25, through: 275, by: 50) {
    for y in stride(from: 275, through: 25, by: -50) {
    canvas.drawEllipse(centreX: x, centreY: y, width: 3, height: 3)
        
        var randumb = random(from: 1, toButNotIncluding: 3)
        var randcolor = random(from: 1, toButNotIncluding: 361)
        canvas.lineColor = Color(hue: randcolor, saturation: 100, brightness: 100, alpha: 100)
        if randumb == 1 {
            canvas.drawLine(fromX: x-25, fromY: y-25, toX: x+25, toY: y+25)
        } else {
            canvas.drawLine(fromX: x-25, fromY: y+25, toX: x+25, toY: y-25)
        }
        
}
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
