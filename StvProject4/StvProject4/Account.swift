//
//  Account.swift
//  StvProject4
//
//  Created by kazua on 2018/03/16.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class Account: NSObject {
    
    var name: String = "Taro"
    var age: Int = 20
    var sex: String  = "man"
    var lang: String = "Kotlin"
    
    init(name: String, age: Int, sex: String, lang: String) {
        self.name = name
        self.age = age
        self.sex = sex
        self.lang = lang
    }

    func introduction() {
        if sex == "man" {
            print("\(name)くんは、\(lang)が得意な\(age)歳です。")
        } else {
            print("\(name)さんは、\(lang)が得意な\(age)歳です。")
        }
    }
}
