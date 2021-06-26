import Foundation
import SpriteKit

class RightButton {
    
    var btn = SKSpriteNode()
    
    init() {
        btn = SKSpriteNode()
        btn.texture = SKTexture(imageNamed: "right_btn1")
        btn.size = CGSize(width: 50, height: 50)
        btn.name = "right"
        btn.position = CGPoint(x: Int(Variables.scene.frame.maxX) - 50,
                               y: -Int(Variables.scene.frame.height) + 50)
        btn.zPosition = 99
        Variables.scene.addChild(btn)
    }
        
    func brickMoveRight() {
        if isMovale() {
            Variables.dx += 1
            var action = SKAction()
            for(i, item) in Variables.brickArrays.enumerated() {
                let x = Int(item.x) + Variables.dx
                let y = Int(item.y) + Variables.dy
                
                Variables.backArray[y][x - 1] -= 1
                Variables.backArray[y][x] += 1
                action = SKAction.moveBy(x: CGFloat(Variables.brickValue.brickSize), y: 0, duration: 0.1)
                Variables.brickNode[i].run(action)
            }
            anim()
        }
    }
    
    func isMovale() -> Bool {
        let nowBrick = Variables.brickArrays
        var right = nowBrick[0]
        
        for item in nowBrick {
            if(item.x > right.x) {
                right = item
            }
        }
        
        let xValue = Int(right.x) + Variables.dx + 1
        if Variables.backArray[Variables.dy][xValue] != 0 {
            return false
        }
        return true
    }
    
    func anim() {
        var textures = Array<SKTexture>()
        for i in 1...15 {
            let name = "right_btn\(i)"
            let texture = SKTexture(imageNamed: name)
            textures.append(texture)
        }
        let action = SKAction.animate(with: textures, timePerFrame: 0.03)
        btn.run(action)
    }
    
}
