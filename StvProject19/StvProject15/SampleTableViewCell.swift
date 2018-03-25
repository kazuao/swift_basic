//
//  SampleTableViewCell.swift
//  StvProject15
//
//  Created by kazua on 2018/03/20.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit

class SampleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tableImage: UIImageView! // swiftlint:disable:this private_outlet
    @IBOutlet weak var tableLabel: UILabel! // swiftlint:disable:this private_outlet
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
