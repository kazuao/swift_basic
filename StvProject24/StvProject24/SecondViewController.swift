//
//  SecondViewController.swift
//  StvProject24
//
//  Created by kazua on 2018/04/03.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var catchLabel: UILabel!
    
    var param = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if param != "" {
            catchLabel.text = param
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
