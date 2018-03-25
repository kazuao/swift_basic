//
//  ViewController.swift
//  StvProject15
//
//  Created by kazua on 2018/03/20.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // outlet接続
    @IBOutlet private weak var tableView: UITableView!
    
    // 宣言
    var catImg = #imageLiteral(resourceName: "Image1")
    var dogImg = #imageLiteral(resourceName: "Image2")
    var pigImg = #imageLiteral(resourceName: "Image3")
    var animalsImage = [UIImage]()
    var animalsArr = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // delegate / datasource
        tableView.delegate = self
        tableView.dataSource = self

        // 配列化
        animalsImage = [catImg, dogImg, pigImg]
        
        // plistから取得する
        guard let filePath = Bundle.main.path(forResource: "Property List", ofType: "plist") else {
            return
        }
        guard let plist = NSDictionary(contentsOfFile: filePath) else {
            return
        }
        guard let animalsArray = plist["animals"] as? [String] else {
            return
        }
        self.animalsArr = animalsArray
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animalsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         guard let cell =
            tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? SampleTableViewCell else {
                
                fatalError("TweetCell is nil.")
        }
        cell.tableLabel.text = self.animalsArr[indexPath.row]
        cell.tableImage.image = self.animalsImage[indexPath.row]
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
