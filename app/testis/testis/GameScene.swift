//
//  GameScene.swift
//  testis
//
//  Created by Hyune J. on 2021/06/20.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        Variables.scene = self
        let bg = Background()
        let generator = BrickGenerator()
        self.viewBg()
    }
    
    func viewBg() {
        let bg = Variables.backArray
        for item in bg {
            print(item)
        }
    }
    
}
