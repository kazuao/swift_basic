//
//  ViewController.swift
//  StvProject6
//
//  Created by kazua on 2018/03/19.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var changeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeLabel.text = NSLocalizedString("SwiftLectureStarted", comment: "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
