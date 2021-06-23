//
//  Background.swift
//  testis
//
//  Created by Hyune J. on 2021/06/20.
//

import Foundation
import SpriteKit

class Background {

    let row = 10
    let col = 20
    
    let brickSize = Variables.brickValue.brickSize
    let gab = Variables.gap
    let scene = Variables.scene
    
    init() {
        var bg = Array(repeating: Array(repeating: 0, count: row), count: col)
        
        let xValue = ((Int(scene.frame.width) - row * brickSize) + brickSize) / 2
        let yValue = ((Int(scene.frame.height) - col * brickSize) + brickSize) / 2
        
        Variables.startPoint = CGPoint(x: xValue, y: yValue)
        
        for i in 0..<row {
            bg[col-1][i] = 1
            scene.addChild(generateWall(x: i, y: col-1))
        }
        for i in 0..<col {
            bg[i][0] = 1
            scene.addChild(generateWall(x: 0, y: i))
        }
        for i in 0..<col {
            bg[i][row-1] = 1
            scene.addChild(generateWall(x: row-1, y: i))
        }
        for i in 0..<row {
            bg[0][i] = 1
            scene.addChild(generateWall(x: i, y: 0))
        }
        Variables.backArray = bg
    }
    
    func generateWall(x: Int, y: Int) -> SKSpriteNode {
        let brick = SKSpriteNode()
        brick.size = CGSize(width: brickSize - gab, height: brickSize - gab)
        brick.color = .gray
        brick.name = "wall"
        brick.zPosition = 1
        let xValue = x * brickSize + Int(Variables.startPoint.x)
        let yValue = y * brickSize + Int(Variables.startPoint.y)
        brick.position = CGPoint(x: xValue, y: -yValue)
        return brick
    }
    
    
}
