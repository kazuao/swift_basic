//
//  FavoriteProgrammingLanguage.swift
//  StvProject5
//
//  Created by kazua on 2018/03/19.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

@objc protocol FavoriteProgrammingLanguageDelegate {
    @objc optional func canDoObjC()
}

class FavoriteProgrammingLanguage: NSObject {
    
    weak var delegate: FavoriteProgrammingLanguageDelegate?
    
    func joinIntern() {
        print("インターンに参加する！")
        // デリゲートを呼ぶ
        self.delegate?.canDoObjC?()
    }
}
