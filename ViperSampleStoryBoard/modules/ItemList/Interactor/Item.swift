//
//  Item.swift
//  ViperSampleStoryBoard
//
//  Created by 村岡龍治 on 2020/05/03.
//  Copyright © 2020 村岡龍治. All rights reserved.
//

import UIKit

struct Item {
    
    var name: String?
    
    var url: String?
    
    var imageUrl: String?

    var description: String?
    
    init(name: String, url: String, imageUrl: String, description: String? = nil) {
        self.name = name
        self.url = url
        self.imageUrl = imageUrl
        self.description = description
    }
}
