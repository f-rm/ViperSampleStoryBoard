//
//  ItemDetailItemDetailInitializer.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class ItemDetailModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var itemDetailViewController: ItemDetailViewController!

    override func awakeFromNib() {
        let configurator = ItemDetailModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: itemDetailViewController)
    }
    
    override init() {
        let configurator = ItemDetailModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: itemDetailViewController)
    }

}
