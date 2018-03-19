//
//  ViewController.swift
//  StvProject10
//
//  Created by kazua on 2018/03/19.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func showActionSheetBtn(_ sender: Any) {
        
        let alertController: UIAlertController =
            UIAlertController(title: "alert", message: "SNSを選択してください", preferredStyle: .actionSheet)
        
        let facebookAction: UIAlertAction =
            UIAlertAction(title: "Facebook", style: .default, handler: { (_: UIAlertAction) -> Void in
                print("Facebookボタンを押しました。")
            })
        let twitterAction: UIAlertAction =
            UIAlertAction(title: "Twitter", style: .default, handler: { (_: UIAlertAction) -> Void in
                print("Twitterボタンを押しました。")
            })
        let lineAction: UIAlertAction =
            UIAlertAction(title: "LINE", style: .default, handler: { (_: UIAlertAction) -> Void in
                print("LINEボタンを押しました。")
            })
        
        alertController.addAction(facebookAction)
        alertController.addAction(twitterAction)
        alertController.addAction(lineAction)
        
        present(alertController, animated: true, completion: nil)
    }
}
