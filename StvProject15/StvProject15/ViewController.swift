//
//  ViewController.swift
//  StvProject15
//
//  Created by kazua on 2018/03/20.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet private weak var tableView: UITableView!
    
    var catImg = #imageLiteral(resourceName: "Image1")
    var dogImg = #imageLiteral(resourceName: "Image2")
    var pigImg = #imageLiteral(resourceName: "Image3")
    var animalsImage = [UIImage]()
    var animalsArr = [String?]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        animalsImage = [catImg, dogImg, pigImg]
        
        let filePath = Bundle.main.path(forResource: "Property List", ofType: "plist")
        
        let plist = NSDictionary(contentsOfFile: filePath!)
        
        if plist!["animals"] != nil {
            let animalsArray = plist!["animals"]
            self.animalsArr = (animalsArray as? [String])!
            print(animalsArr)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animalsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell =
            tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? SampleTableViewCell
        
        cell?.tableLabel.text = self.animalsArr[indexPath.row]
        cell?.tableImage.image = self.animalsImage[indexPath.row]
        
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
