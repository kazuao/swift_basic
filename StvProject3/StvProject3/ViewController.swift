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
        
        /**
         * if文のサンプルっす😎
         */
        // if
        let tryIfString = "'try if'"
    
        if !tryIfString.isEmpty {
            print("\(tryIfString) if part is correct!")
        }
        
        // if ~ else
        if tryIfString.isEmpty {
            print("\(tryIfString) else part is false!")
            
        } else {
            print("\(tryIfString) else part is correct!")
        }
        
        // if ~ else if
        if tryIfString.isEmpty {
            print("\(tryIfString) else if part is false!")
            
        } else if !tryIfString.isEmpty {
            print("\(tryIfString) else if part is correct!")
            
        } else {
            print("\(tryIfString) else if part is false!!")
        }
        
        /**
         * 三項演算子のサンプルっす😎
         */
        let tryTernaryOperatorBoolTrue = "true"
        let tryTernaryOperatorBoolFalse = "false"
        
        let conditional1 = tryTernaryOperatorBoolTrue == "true" ? "trueだよ" : "falseだよ"
        print(conditional1)
        
        let conditional2 = tryTernaryOperatorBoolFalse == "true" ? "trueだよ" : "falseだよ"
        print(conditional2)
        
        /**
         * for文のサンプルっす😎
         */
        for tryForInteger in 0 ..< 5 {
            print("Try For: \(tryForInteger)")
        }
        
        for tryForReverseInteger in (0 ..< 5).reversed() {
            print("Try For Reverse: \(tryForReverseInteger)")
        }
        
        // for ~ in
        let fruits = ["apple", "orange", "melon", "banana"]
        for fruit in fruits {
            print(fruit)
        }
        let fishes = ["tuna": "マグロ", "aji": "アジ", "saba": "サバ"]
        for (key, value) in fishes {
            print("key: \(key), value: \(value)")
        }
        
        /**
        * Switch文のサンプルっす😎
        */
        let value = "fuga"
        
        switch value {
            
        case "hoge":
            print("hogehoge")
            
        case "fuga":
            print("fugafuga")
            fallthrough
            
        default:
            print("でした")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
