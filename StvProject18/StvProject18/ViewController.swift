//
//  ViewController.swift
//  StvProject18
//
//  Created by kazua on 2018/03/25.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet private weak var collectionView: UICollectionView!

    let headerTitle = ["Animals", "Fishes"]
    var animalsImageArr = [#imageLiteral(resourceName: "Image6"), #imageLiteral(resourceName: "Image7"), #imageLiteral(resourceName: "Image8")]
    var fishesImageArr = [#imageLiteral(resourceName: "Image9"), #imageLiteral(resourceName: "Image10"), #imageLiteral(resourceName: "Image11")]
    var plistDic = [String: Array<String>]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        guard let filePath = Bundle.main.path(forResource: "List", ofType: "plist") else {
            return
        }
        guard let plist = NSMutableDictionary(contentsOfFile: filePath) as? [String: Array<String>] else {
            return
        }
        plistDic = plist
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return headerTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if section == 0 {
            return animalsImageArr.count
        } else {
            return fishesImageArr.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell =
            collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
                as? CollectionViewCell else {
            fatalError("fatal Error")
        }
        if indexPath.section == 0 {
            cell.collectionImage.image = animalsImageArr[indexPath.row]
            cell.collectionLabel.text = plistDic["Animals"]?[indexPath.row]
        } else {
            cell.collectionImage.image = fishesImageArr[indexPath.row]
            cell.collectionLabel.text = plistDic["Fishes"]?[indexPath.row]
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
//         例えば端末サイズの半分の width と height にして 2 列にする場合
        let width: CGFloat = UIScreen.main.bounds.width / 2
        let height = width

        return CGSize(width: width, height: height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
