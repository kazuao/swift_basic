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
        
        let alert: UIAlertController = UIAlertController(title: "あらーとだよ",
                                                        message: "シンプルなアラートの実装です",
                                                        preferredStyle: .alert)
        
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK",
                                                         style: .default,
                                                         handler: { (_: UIAlertAction) -> Void in
            self.okAlertButtonTupped()
        })
        
        let cancelAlertAction: UIAlertAction = UIAlertAction(title: "Cancel",
                                                             style: .cancel,
                                                             handler: { (_: UIAlertAction) -> Void in
            self.cancelAleratButtonTupped()
        })
        
        alert.addAction(defaultAction)
        alert.addAction(cancelAlertAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    private func okAlertButtonTupped() {
        print("おーけー")
    }
    
    private func cancelAleratButtonTupped() {
        print("キャンセル")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
