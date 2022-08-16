//
//  GameViewController.swift
//  CookRush
//
//  Created by Patrick Wyzlic on 8/14/22.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            let scene = GameScene(size: view.bounds.size)
            
                scene.scaleMode = .aspectFill
                
                //Present the scene
                view.presentScene(scene)
                    
                view.ignoresSiblingOrder = true
                    
                //Display FPS on screen
                view.showsFPS = true
                //Show number of nodes on screen
                view.showsNodeCount = true
                //Draws physics bodies for detection
                view.showsPhysics = true
            }
        }
}
