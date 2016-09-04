//
//  Interest.swift
//  CarouselEffect
//
//  Created by 顾晨洁 on 16/9/4.
//  Copyright © 2016年 henry4app. All rights reserved.
//

import UIKit

class Interest: NSObject {

    var title = ""
    var featuredImage: UIImage!
    
    init(title: String, featuredImage: UIImage!) {
        self.title = title
        self.featuredImage = featuredImage
    }
    
    static func createInterests() -> [Interest] {
        return [
            Interest(title: "Hello there, i miss u.", featuredImage: UIImage(named: "hello")),
            Interest(title: "🐳🐳🐳🐳🐳", featuredImage: UIImage(named: "dudu")),
            Interest(title: "Training like this, #bodyline", featuredImage: UIImage(named: "bodyline")),
            Interest(title: "I'm hungry, indeed.", featuredImage: UIImage(named: "wave")),
            Interest(title: "Dark Varder, #emoji", featuredImage: UIImage(named: "darkvarder")),
            Interest(title: "I have no idea, bitch", featuredImage: UIImage(named: "hhhhh")),
        ]
    }
    
    
}
