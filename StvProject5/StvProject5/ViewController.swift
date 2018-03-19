//
//  ViewController.swift
//  StvProject5
//
//  Created by kazua on 2018/03/19.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var ken = Account(name: "ken", age: 20, sex: "man", lang: "PHP")
    private var aya = Account(name: "aya", age: 11, sex: "woman", lang: "kotlin")
    
    private var accounts: [Account] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        accounts = [ken, aya]
        
        for account in accounts {
            account.introduction()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
