//
//  LeftButton.swift
//  testis
//
//  Created by Hyune J. on 2021/06/24.
//

import Foundation
import SpriteKit

class LeftButton {
    
    init() {
        let btn = SKSpriteNode()
        btn.texture = SKTexture(imageNamed: "left_btn1")
        btn.size = CGSize(width: 50, height: 50)
        btn.name = "left"
        btn.position = CGPoint(x: 50, y: -Int(Variables.scene.frame.height) + 50)
        btn.zPosition = 99
        Variables.scene.addChild(btn)
    }
    
    func birckMoveLeft() {
        if isMovale() {
            // do move left
        }
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
