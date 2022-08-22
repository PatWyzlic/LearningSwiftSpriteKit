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
    
    
    //Easily observe actions
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        myFirstTexturedSpriteNode.run(SKAction.move(to: CGPoint (x: myFirstSpriteNode.size.width, y: myFirstSpriteNode.size.height), duration: 2.0))
        
        myFirstSpriteNode.run(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0))
        
        myFirstTexturedSpriteNode.run(SKAction.move(to: CGPoint (x: myFirstSpriteNode.size.width, y: myFirstSpriteNode.size.height), duration: 2.0)) {
            
            self.myFirstTexturedSpriteNode.position = CGPoint.zero
        }
        
    }
    
    
}
