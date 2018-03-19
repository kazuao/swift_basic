//
//  ViewController.swift
//  StvProject9
//
//  Created by kazua on 2018/03/19.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func showAlertBtn(_ sender: Any) {
        
        let alert: UIAlertController =
            UIAlertController(title: "Alert!", message: "Sample Alert!", preferredStyle: .alert)
        
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: .default) { (_: UIAlertAction) -> Void in }
        
        alert.addAction(defaultAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
