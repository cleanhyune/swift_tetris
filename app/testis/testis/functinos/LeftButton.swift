//
//  LeftButton.swift
//  testis
//
//  Created by Hyune J. on 2021/06/24.
//

import Foundation
import SpriteKit

class LeftButton {
    
    var btn = SKSpriteNode()
        
    init() {
        btn = SKSpriteNode()
        btn.texture = SKTexture(imageNamed: "left_btn1")
        btn.size = CGSize(width: 50, height: 50)
        btn.name = "left"
        btn.position = CGPoint(x: 50, y: -Int(Variables.scene.frame.height) + 50)
        btn.zPosition = 99
        Variables.scene.addChild(btn)
    }
    
    func birckMoveLeft() {
        if isMovale() {
            Variables.dx -= 1
            var action = SKAction()
            for (i, item) in Variables.brickArrays.enumerated() {
                let x = Int(item.x) + Variables.dx
                let y = Int(item.y) + Variables.dy
                
                Variables.backArray[y][x + 1] -= 1
                Variables.backArray[y][x] += 1
                
                action = SKAction.moveBy(x: -CGFloat(Variables.brickValue.brickSize), y: 0, duration: 0.1)
                Variables.brickNode[i].run(action)
            }
            anim()
        }
    }
    
    func anim() {
        var textures = Array<SKTexture>()
        for i in 1...15 {
            let name = "left_btn\(i)"
            let texture = SKTexture(imageNamed: name)
            textures.append(texture)
        }
        let action = SKAction.animate(with: textures, timePerFrame: 0.03)
        btn.run(action)
    }
    
    func isMovale() -> Bool {
        let nowBrick = Variables.brickArrays
        var left = nowBrick[0]
        
        for item in nowBrick {
            if left.x > item.x {
                left = item
            }
        }
        
        let xValue = Int(left.x) + Variables.dx - 1
        if Variables.backArray[Variables.dy][xValue] != 0 {
            return false
        }
        return true
    }
}
