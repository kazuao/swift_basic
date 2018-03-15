//
//  ViewController.swift
//  StvProject2
//
//  Created by kazua on 2018/03/15.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Array型
        let sampleArrString: [String]  = ["醤油", "味噌", "塩", "豚骨"]
        print(sampleArrString)
        let sampleArrInteger = [99, 12, 16, 23]
        print(sampleArrInteger)
        let sampleArrDouble  = [12.3, 54, 32.445, 11.1]
        print(sampleArrDouble)
        print(sampleArrDouble[2])
        
        // Dictionary型
        let sampleDic: [String: String] = ["豚": "pig", "牛": "beef", "鳥": "chicken"];
        print(sampleDic)
        print(sampleDic["牛"]!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

