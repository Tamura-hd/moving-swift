//
//  MoveScene.swift
//  Moving
//
//  Created by Tamura-hd on 2017/09/20.
//  Copyright © 2017年 hirukado-design. All rights reserved.
//

import Foundation
import SpriteKit

class MoveScene: SKScene {

    //キャラクタノード
    var charaNode: SKSpriteNode! 

    //現在シーン設定時の呼び出しメソッド
    override func didMove(to view: SKView) {
        //背景画像のノードを作成
        let backNode = SKSpriteNode(imageNamed: "helloween2")
        
        //背景画像のサイズをシーンのサイズと同じにする。
        backNode.size = self.frame.size

        //背景画像の位置をシーンの中央にする。
        backNode.position = CGPoint(x: self.frame.midX, y: self.frame.midY)

        //キャラのノードを作成
        charaNode = SKSpriteNode(imageNamed: "obake2")

        //キャラの位置をシーンの中央にする。
        charaNode.position = CGPoint(x: self.frame.midX, y: self.frame.midY)

        //ノードをシーンに追加
        self.addChild(backNode)
        self.addChild(charaNode)
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //タッチした座標を取得する。
        let location = touches.first!.location(in: self)
        
        let action1 = SKAction.wait(forDuration: 0.2)
        
        //タッチした位置まで移動するアクションを作成
        let action2 = SKAction.move(to: CGPoint(x:location.x, y:location.y + 20), duration: 0.5)
        
        //移動速度
        action2.timingMode = SKActionTimingMode.linear

        let actionAll = SKAction.sequence([action1, action2])
        
        //アクションを実行
        charaNode.run(actionAll)
    }

}
