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
let canvas = Canvas(width: 600, height: 600)

// Below this line, try combining a loop and four statements that draw lines to generate the goal

//Horizonal Position
for x in stride(from: 50, through: 550, by: 100) {
    //Veritcal Position
    for y in stride(from: 50, through: 550, by: 100) {
        
        //Decide the hue
        let a = random(from: 1, toButNotIncluding: 361)
        
        //Size of circle and saturation
        for z in stride(from: 100, through: 20, by: -20) {

            let c = random(from: 75, toButNotIncluding: 101)
            canvas.drawShapesWithBorders = false
            
            canvas.fillColor = Color.init(hue: a, saturation: z-20, brightness: 90, alpha: 100)
       
            //draw dots & grid
    canvas.drawEllipse(centreX: x, centreY: y, width: 3, height: 3)
        canvas.drawEllipse(centreX: x, centreY: y, width: z, height: z)
        
}
}
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
