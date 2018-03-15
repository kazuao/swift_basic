//
//  ViewController.swift
//  StvProject1
//
//  Created by kazua on 2018/03/15.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // BOOL型
        let sampleBool1 = true
        let sampleBool2 = false
        print(sampleBool1)
        print(sampleBool2)
        
        // String型
        let sampleString = "stringのサンプル出力です"
        print(sampleString)
        
        // Integer型
        let sampleInteger = 12345
        print(sampleInteger)
        
        // Number型いろいろ
        let sampleDouble = 1.11
        print(sampleDouble)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

