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
        
        // 宣言
        let optionalBindingString: String? = "optional yet"
        let optionalChainingString: String? = "optional yet2"
        let optionalNilCoalescingOperatorString: String? = nil
        
        // Optional Chaining
        guard let tryOptionalBindingString = optionalBindingString else {
            return print("nilだ")
        }
        print(tryOptionalBindingString)
        
        // Optional Biniding
        if let tryOptionalChainingString = optionalChainingString?.uppercased() {
            print(tryOptionalChainingString)
        } else {
            print("nilだ")
        }
        
        // Nil Coalescing Operator
        let tryNilCoalescingOperatorString = optionalNilCoalescingOperatorString ?? "nilだ"
        print(tryNilCoalescingOperatorString)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
 
