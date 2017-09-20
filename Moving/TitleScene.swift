//
//  TitleScene.swift
//  Moving
//
//  Created by Tamura-hd on 2017/09/22.
//  Copyright © 2017年 hirukado-design. All rights reserved.
//

import Foundation
import SpriteKit

class TitleScene: SKScene {
    
    override func didMove(to view: SKView) {
        let titleLabel = SKLabelNode(fontNamed: "Chalkduster")
        titleLabel.text = "Move..."
        titleLabel.fontSize = 45
        titleLabel.position = CGPoint(x: self.frame.midX, y: self.frame.maxY - 170)
        self.addChild(titleLabel)
        
        let startButton = SKLabelNode(fontNamed: "Copperplate")
        startButton.text = "START"
        startButton.fontSize = 35
        startButton.position = CGPoint(x: self.frame.midX, y: self.frame.minY + 120)
        startButton.name = "START"
        self.addChild(startButton)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: AnyObject! = touches.first
        let location = touch.location(in: self)
        let touchedNode = self.atPoint(location)
        
        if (touchedNode.name != nil) {
            if touchedNode.name == "START" {
                let newScene = MoveScene(size: self.scene!.size)
                newScene.scaleMode = SKSceneScaleMode.aspectFill
                self.view!.presentScene(newScene)
            }
        }
    }

    override func update(_ currentTime: TimeInterval) {
        //
    }
    
}
