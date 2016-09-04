//
//  VideoCell.swift
//  03-LocalVideo
//
//  Created by 顾晨洁 on 16/9/4.
//  Copyright © 2016年 henry4app. All rights reserved.
//

import UIKit

struct Video {
    let image: String
    let title: String
    let source: String
}

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoScreenshot: UIImageView!
    @IBOutlet weak var videoSourceLabel: UILabel!
    @IBOutlet weak var videoTitleLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
