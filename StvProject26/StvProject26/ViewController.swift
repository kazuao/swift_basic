//
//  ViewController.swift
//  StvProject26
//
//  Created by kazua on 2018/04/17.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // インスタンス生成
        let userDefualts = UserDefaults.standard
        
        // userDefaultsに保存
        userDefualts.set(true, forKey: "boolKey")
        userDefualts.set(1, forKey: "intKey")
        userDefualts.set(2.222, forKey: "doubleKey")
        userDefualts.set("hogehoge", forKey: "stringKey")
        
        // userDefaultsから読み込み
        let boolLog = userDefualts.bool(forKey: "boolKey")
        let integerLog = userDefualts.integer(forKey: "intKey")
        let doubleLog = userDefualts.double(forKey: "doubleKey")
        guard let stringLog = userDefualts.object(forKey: "stringKey") else {
            return
        }
        
        // 出力
        print(boolLog)
        print(integerLog)
        print(doubleLog)
        print(stringLog)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
