//
//  RotationButton.swift
//  testis
//
//  Created by Hyune J. on 2021/06/26.
//

import Foundation
import SpriteKit

class RotationButton {
    
    var btn = SKSpriteNode()
    
    init() {
        btn = SKSpriteNode()
        btn.texture = SKTexture(imageNamed: "rotaion_btn1")
        btn.size = CGSize(width: 50, height: 50)
        btn.name = "rotation"
        btn.position = CGPoint(x: Int(Variables.scene.frame.maxX) / 2,
                               y: -Int(Variables.scene.frame.height) + 50)
        btn.zPosition = 99
        Variables.scene.addChild(btn)
    }
    
    func brickRotation() {
        if self.isRotable() {
            let sinX = CGFloat(1)
            let cosX = CGFloat(0)
            var rotatedBrick = Array<CGPoint>()
            var action = SKAction()
            for (i, item) in Variables.brickArrays.enumerated() {
                let r = item.y
                let c = item.x
                let currentX = Int(item.x) + Variables.dx
                let currentY = Int(item.y) + Variables.dy
                Variables.backArray[currentY][currentX] -= 1
                
                let newBrickX = (c * cosX) - (r * sinX)
                let newBrickY = (c * sinX) + (r * cosX)
                
                rotatedBrick.append(CGPoint(x: newBrickX, y: newBrickY))
                
                let newX = Int(newBrickX) + Variables.dx
                let newY = Int(newBrickY) + Variables.dy
                Variables.backArray[newY][newX] += 1
                
                let xValue = Int(newX) * Variables.brickValue.brickSize + Int(Variables.startPoint.x)
                let yValue = Int(newY) * Variables.brickValue.brickSize + Int(Variables.startPoint.y)
                action = SKAction.move(to: CGPoint(x: xValue, y: -yValue), duration: 0)
                Variables.brickNode[i].run(action)
            }
            
            Variables.brickArrays = rotatedBrick
        }
        
    }
    
    func isRotable() -> Bool {
        return true
    }
    
}
