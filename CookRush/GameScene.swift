//
//  GameScene.swift
//  CookRush
//
//  Created by Patrick Wyzlic on 8/14/22.
//

import SpriteKit

class GameScene: SKScene {
    
    let myFirstNode = SKNode()
    
    override func didMove(to view: SKView) {
        addChild(myFirstNode)
    }
}
