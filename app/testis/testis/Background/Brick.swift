//
//  Brick.swift
//  testis
//
//  Created by Hyune J. on 2021/06/20.
//

import Foundation
import SpriteKit

class Brick {
    
    struct Bricks {
        var color = UIColor()
        var points = Array<CGPoint>()
        let brickSize = 35
        let zPosition = CGFloat(1)
        var brickName = String()
    }
    
    func bricks() -> Bricks {
        var bricks = [Bricks()]
        
        var brick1 = [CGPoint]()
        brick1.append(CGPoint(x: 0, y: 0))
        brick1.append(CGPoint(x: 1, y: 0))
        brick1.append(CGPoint(x: -1, y: 0))
        brick1.append(CGPoint(x: 0, y: 1))
        
        var brick2 = [CGPoint]()
        brick2.append(CGPoint(x: 0, y: 0))
        brick2.append(CGPoint(x: 1, y: 0))
        brick2.append(CGPoint(x: 2, y: 0))
        brick2.append(CGPoint(x: -1, y: 0))
        
        var brick3 = [CGPoint]()
        brick3.append(CGPoint(x: 0, y: 0))
        brick3.append(CGPoint(x: 1, y: 0))
        brick3.append(CGPoint(x: 2, y: 0))
        brick3.append(CGPoint(x: 0, y: 1))
        
        var brick4 = [CGPoint]()
        brick4.append(CGPoint(x: 0, y: 0))
        brick4.append(CGPoint(x: 1, y: 0))
        brick4.append(CGPoint(x: 0, y: 1))
        brick4.append(CGPoint(x: 1, y: 1))
        
        var brick5 = [CGPoint]()
        brick5.append(CGPoint(x: 0, y: 0))
        brick5.append(CGPoint(x: -1, y: 0))
        brick5.append(CGPoint(x: 0, y: 1))
        brick5.append(CGPoint(x: 1, y: 1))
        
        bricks.append(Bricks(color: .red, points: brick1, brickName: "brick1"))
        bricks.append(Bricks(color: .blue, points: brick2, brickName: "brick2"))
        bricks.append(Bricks(color: .green, points: brick3, brickName: "brick3"))
        bricks.append(Bricks(color: .orange, points: brick4, brickName: "brick4"))
        bricks.append(Bricks(color: .purple, points: brick5, brickName: "brick5"))
        
        let random = Int.random(in: 0..<5)
        
        return bricks[random]
    }
    
}
