//
//  ViewController.swift
//  StvProject5
//
//  Created by kazua on 2018/03/19.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var ken = Account(name: "Ken", age: 20, sex: "man", lang: "Swift")
    private var aya = Account(name: "Aya", age: 11, sex: "woman", lang: "kotlin")
    
    private var accounts: [Account] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        callAccountIntroduction()
    }
    
    private func callAccountIntroduction() {
        accounts = [ken, aya]
        
        for account in accounts {
            account.introduction()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
