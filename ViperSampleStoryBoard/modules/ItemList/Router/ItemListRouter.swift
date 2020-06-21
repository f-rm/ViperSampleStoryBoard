//
//  ItemListItemListRouter.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class ItemListRouter: ItemListRouterInput {
    
    private unowned let viewController: UIViewController

    init(viewController: UIViewController) {
        self.viewController = viewController
    }

    func showItemDetail(_ item: Item) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc: ItemDetailViewController = storyBoard.instantiateViewController(withIdentifier: "itemDetail") as! ItemDetailViewController
        vc.item = item
        viewController.navigationController?.pushViewController(vc, animated: true)
    }
    
}
