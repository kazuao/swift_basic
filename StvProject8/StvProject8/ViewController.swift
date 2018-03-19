//
//  ViewController.swift
//  StvProject8
//
//  Created by kazua on 2018/03/19.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var backgroundImage: UIImageView!
    
    var backgroundImageArr = [UIImage]()
    
    let image1 = #imageLiteral(resourceName: "Image1")
    let image2 = #imageLiteral(resourceName: "Image2")
    let image3 = #imageLiteral(resourceName: "Image3")
    let image4 = #imageLiteral(resourceName: "Image4")
    let image5 = #imageLiteral(resourceName: "Image5")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundImageArr = [image1, image2, image3, image4, image5]
    }
    
    @IBAction func chageBtn(_ sender: Any) {
        let random = arc4random_uniform(5)
        let randomInt = Int(random)
        backgroundImage.image = backgroundImageArr[randomInt]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
