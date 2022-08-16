//
//  GameScene.swift
//  CookRush
//
//  Created by Patrick Wyzlic on 8/14/22.
//

import SpriteKit

class GameScene: SKScene {
    
    let myFirstNode = SKNode()
    //Creates a red box node
    let myFirstSpriteNode = SKSpriteNode(color: UIColor.red, size: CGSize(width: 200.0, height: 200.0))
    let myFirstTexturedSpriteNode = SKSpriteNode(imageNamed: "smallspaceship")
    
    override func didMove(to view: SKView) {
        addChild(myFirstNode)
        
        myFirstSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        
        myFirstSpriteNode.anchorPoint = CGPoint.zero
        
        //Initializing the sprite node
        addChild(myFirstSpriteNode)
        
        myFirstTexturedSpriteNode.size = CGSize(width: 100.0, height: 100.0)
        myFirstSpriteNode.addChild(myFirstTexturedSpriteNode)
    }
}
