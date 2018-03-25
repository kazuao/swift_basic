//
//  ViewController.swift
//  StvProject16
//
//  Created by kazua on 2018/03/23.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // outlet
    @IBOutlet private weak var tableView: UITableView!
    
    // 色々定義
    let image1 = #imageLiteral(resourceName: "Image6")
    let image2 = #imageLiteral(resourceName: "Image7")
    let image3 = #imageLiteral(resourceName: "Image8")
    let image4 = #imageLiteral(resourceName: "Image9")
    let image5 = #imageLiteral(resourceName: "Image10")
    let image6 = #imageLiteral(resourceName: "Image11")
    
    var sectionTitle = ["animals", "fishes"]
    var animalImageArr = [UIImage]()
    var fishImageArr = [UIImage]()
    var plistDic = [String: Array<String>]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // imageを準備
        animalImageArr = [image1, image2, image3]
        fishImageArr = [image4, image5, image6]
        
        // delegate / datasource
        tableView.delegate = self
        tableView.dataSource = self
        
        // plist紐付け
        guard let filePath = Bundle.main.path(forResource: "List", ofType: "plist") else {
            return
        }
        guard let plist = NSDictionary(contentsOfFile: filePath) as? [String: Array<String>] else {
            return
        }
        self.plistDic = plist
    }
    
    // tableViewのセクション数
    func numberOfSections(in tableView: UITableView) -> Int {

        return self.plistDic.count
    }
    
    // tableViewのセクションタイトル
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return self.sectionTitle[section]
    }
    
    // sectionごとのcellの数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return animalImageArr.count
        } else {
            return fishImageArr.count
        }
    }
    
    // cellの中身
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell: SampleTableViewCell =
            tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? SampleTableViewCell else {
                
                fatalError("TableCell is nil.")
        }
        
        if indexPath.section == 0 {
            
            cell.tableImage.image = animalImageArr[indexPath.row]
            cell.tableLabel.text = plistDic["animals"]?[indexPath.row]
        } else {
            cell.tableImage.image = fishImageArr[indexPath.row]
            cell.tableLabel.text = plistDic["fishes"]?[indexPath.row]
        }
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
