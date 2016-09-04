//
//  CarouselCell.swift
//  CarouselEffect
//
//  Created by 顾晨洁 on 16/9/4.
//  Copyright © 2016年 henry4app. All rights reserved.
//

import UIKit

class CarouselCell: UICollectionViewCell {
    
    @IBOutlet weak var featuredIV: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var interest: Interest! {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        titleLabel.text = interest.title
        featuredIV.image = interest.featuredImage
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
    }
}
