//
//  ViewController.swift
//  StvProject4
//
//  Created by kazua on 2018/03/16.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ken = Account(name: "ken", age: 20, sex: "men", lang: "PHP")
    var aya = Account(name: "aya", age: 12, sex: "women", lang: "swift")
    
    var accounts: [Account] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        accounts = [ken, aya]
        
        for account in accounts {
            account.introduction()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
