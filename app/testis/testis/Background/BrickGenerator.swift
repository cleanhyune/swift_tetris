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
        for item in brick {
            let x = Int(item.x) + Variables.dx
            let y = Int(item.y) + Variables.dy
            Variables.backArray[y][x] = 1
            
            let xValue = x * brickValue.brickSize
            let yValue = y * brickValue.brickSize
            
            let brick = SKSpriteNode()
            brick.color = brickValue.color
            brick.size = CGSize(width: brickValue.brickSize, height: brickValue.brickSize)
            brick.name = brickValue.brickName
            brick.zPosition = brickValue.zPosition
            print("x is \(xValue) and y is \(yValue)")
            brick.position = CGPoint(x: xValue, y: yValue)
            Variables.scene.addChild(brick)
        }
    }
    
}
