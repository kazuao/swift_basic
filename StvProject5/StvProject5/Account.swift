//
//  Account.swift
//  StvProject5
//
//  Created by kazua on 2018/03/19.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class Account: NSObject, FavoriteProgrammingLanguageDelegate {
    
    var favoriteProgrammingLanguage = FavoriteProgrammingLanguage()
    
    var name: String = "name"
    var age: Int     = 20
    var sex: String  = "sex"
    var lang: String = "lang"
    
    init(name: String, age: Int, sex: String, lang: String) {
        self.name = name
        self.age  = age
        self.sex  = sex
        self.lang = lang
    }
    
    func introduction() {
        if self.sex == "man" {
            print("\(self.name)くんは、\(self.lang)が得意な\(self.age)歳です。")
        } else {
            print("\(self.name)さんは、\(self.lang)が得意な\(self.age)歳です。")
        }
        favoriteProgrammingLanguage.delegate = self
        favoriteProgrammingLanguage.joinIntern()
    }
    
    func canDoObjC() {
        print("Objective-Cができる!!")
    }
}
