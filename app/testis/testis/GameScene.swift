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
    
    override func didMove(to view: SKView) {
        Variables.scene = self
        _ = Background()
        _ = BrickGenerator()
        leftBtn = LeftButton()
        self.viewBg()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let location = touch?.location(in: self)
        let node = nodes(at: location!)
        for item in node {
            if item.name == "left" {
                leftBtn?.birckMoveLeft()
            }
        }
    }
    
    func viewBg() {
        let bg = Variables.backArray
        for item in bg {
            print(item)
        }
    }
    
}
