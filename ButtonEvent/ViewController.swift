//
//  ViewController.swift
//  ButtonEvent
//
//  Created by teacher on 2016/10/14.
//  Copyright © 2016年 teacher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttonWidth: CGFloat = 200
        let buttonHeight: CGFloat = 40
        let posX: CGFloat = (self.view.bounds.width - buttonWidth)/2
        let posY: CGFloat = (self.view.bounds.height - buttonHeight)/2
        btn.frame = CGRect(x: posX, y: posY, width: buttonWidth, height: buttonHeight)
        btn.addTarget(self, action: #selector(buttonTapped(sender:)), for: .touchDown)
        self.view.addSubview(btn)
    }
    
    
    @IBAction func buttonTapped(sender: UIButton) {
        
        // UIAlertController
        let alertController: UIAlertController = UIAlertController(title: "ハンドラ", message: "", preferredStyle: .alert)
        
        // 選択肢
        // 異なる方法でactionを設定してみた
        let actionOK = UIAlertAction(title: "OK", style: .default){
            action in
            print("OK")
        }
        
        // actionを追加
        alertController.addAction(actionOK)
        
        // UIAlertの起動
        present(alertController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
