//
//  ViewController.swift
//  StvProject_17
//
//  Created by kazua on 2018/03/25.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    let image1 = #imageLiteral(resourceName: "Image6")
    let image2 = #imageLiteral(resourceName: "Image7")
    let image3 = #imageLiteral(resourceName: "Image8")
    let image4 = #imageLiteral(resourceName: "Image9")
    let image5 = #imageLiteral(resourceName: "Image10")
    let image6 = #imageLiteral(resourceName: "Image11")
    
    var collectionImage = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionImage = [image1, image2, image3, image4, image5, image6]
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell =
            collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
                as? CollectionViewCell else {
            fatalError("fatal Errorだよ")
        }
        
        cell.collectionImage.image = collectionImage[indexPath.row]
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
