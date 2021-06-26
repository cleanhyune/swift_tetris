//
//  BrickGenerator.swift
//  testis
//
//  Created by Hyune J. on 2021/06/22.
//

import Foundation
import SpriteKit

class BrickGenerator {
    
    let brickValue = Variables.brickValue
    
    init() {
        let brick = brickValue.points
        Variables.brickNode.removeAll()
        Variables.brickArrays = brick
        for item in brick {
            let x = Int(item.x) + Variables.dx
            let y = Int(item.y) + Variables.dy
            Variables.backArray[y][x] = 1
            
            let xValue = x * brickValue.brickSize + Int(Variables.startPoint.x)
            let yValue = y * brickValue.brickSize + Int(Variables.startPoint.y)
            
            let brick = SKSpriteNode()
            brick.color = brickValue.color
            brick.size = CGSize(width: brickValue.brickSize - 1, height: brickValue.brickSize - 1)
            brick.name = brickValue.brickName
            brick.zPosition = brickValue.zPosition
            brick.position = CGPoint(x: xValue, y: -yValue)
            Variables.brickNode.append(brick)
            Variables.scene.addChild(brick)
        }
    }
    
}
