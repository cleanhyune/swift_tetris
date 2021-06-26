//
//  GameScene.swift
//  testis
//
//  Created by Hyune J. on 2021/06/20.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var leftBtn:LeftButton?
    var rightBtn:RightButton?
    var rotationBtn:RotationButton?
    
    override func didMove(to view: SKView) {
        Variables.scene = self
        _ = Background()
        _ = BrickGenerator()
        leftBtn = LeftButton()
        rightBtn = RightButton()
        rotationBtn = RotationButton()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let location = touch?.location(in: self)
        let node = nodes(at: location!)
        for item in node {
            if item.name == "left" {
                leftBtn?.birckMoveLeft()
            } else if item.name == "right" {
                rightBtn?.brickMoveRight()
            } else if item.name == "rotation" {
                rotationBtn?.brickRotation()
            }
        }
        self.viewBg()
    }
    
    func viewBg() {
        let bg = Variables.backArray
        for item in bg {
            print(item)
        }
    }
    
}
