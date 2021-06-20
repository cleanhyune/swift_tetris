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
    
    init() {
        Variables.backArray = Array(repeating: Array(repeating: 0, count: row), count: col)
    }
    
    
}
