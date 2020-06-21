//
//  ItemListItemListInitializer.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class ItemListModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var itemlistViewController: ItemListViewController!

    override func awakeFromNib() {
        let configurator = ItemListModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: itemlistViewController)
    }

}
