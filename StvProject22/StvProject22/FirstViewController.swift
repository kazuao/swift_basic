//
//  FirstViewController.swift
//  StvProject22
//
//  Created by kazua on 2018/03/29.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func presentBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Second", bundle: nil)
        guard let present = storyboard.instantiateInitialViewController() else {
            return
        }
        self.present(present, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
