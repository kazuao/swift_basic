//
//  ViewController.swift
//  StvProject3
//
//  Created by kazua on 2018/03/15.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sampleStr = "HogeHoge";
        
        // if
        if (sampleStr == "HogeHoge") {
            print(sampleStr + " if")
        }
        
        // if ~ else
        if (sampleStr == "FugaFuga") {
            print(sampleStr + " Fuga")
        } else {
            print(sampleStr + " else")
        }
        
        
        // if ~ else if
        if (sampleStr == "FugaFuga") {
            print(sampleStr + " Fuga")
        } else if (sampleStr == "HogeHoge") {
            print(sampleStr + " else if")
        }
        
        // 三項演算子
        let sampleBool  = "Hoge"
        let sampleBool2 = "Fuga"
        let conditional1 = sampleBool  == "Hoge" ? "true": "false"
        let conditional2 = sampleBool2 == "Hoge" ? "true": "false"
        print(conditional1)
        print(conditional2)
        
        // for
        for i in 0..<5 {
            print("i: \(i)")
        }
        for i in (0..<5).reversed() {
            print("i: \(i)")
        }
        
        // for ~ in
        let fruits = ["apple", "orange", "melon", "banana"]
        for fruit in fruits {
            print(fruit)
        }
        let fishs = ["tuna": "マグロ", "aji": "アジ", "saba": "サバ"]
        for (key, value) in fishs {
            print("key: \(key), value: \(value)")
        }
        
        // switch
        let value = "b"
        switch value {
        case "a":
            print("a")
        case "b":
            print("b")
            fallthrough
        default:
            print(" to c")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

