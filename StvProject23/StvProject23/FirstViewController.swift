//
//  FirstViewController.swift
//  StvProject23
//
//  Created by kazua on 2018/03/29.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Second", bundle: nil)
        guard let show = storyboard.instantiateInitialViewController() else {
            return
        }
        self.navigationController?.pushViewController(show, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
