//
//  FirstViewController.swift
//  StvProject24
//
//  Created by kazua on 2018/04/03.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet private weak var inputText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sendBtn(_ sender: Any) {
        
        let secondVC = UIStoryboard(name: "Second", bundle: nil)
        guard let sendSecond =
            secondVC.instantiateViewController(withIdentifier: "SecondVC") as? SecondViewController else {
            return
        }
        if let unwrapText = inputText.text {
            sendSecond.param = unwrapText
        }
        show(sendSecond, sender: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
