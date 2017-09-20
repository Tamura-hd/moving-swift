//
//  ViewController.swift
//  Moving
//
//  Created by Tamura-hd on 2017/09/20.
//  Copyright © 2017年 hirukado-design. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SKViewを取得する。
        let skView = self.view as! SKView
        
        //SKViewと同じサイズのSKSceneインスタンスを生成する。
        let scene = TitleScene(size:skView.frame.size)
        
        //現在シーンを設定する。
        skView.presentScene(scene)
    }

}
