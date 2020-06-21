//
//  ItemListItemListViewInput.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

protocol ItemListViewInput: class {

    /**
        @author Ryuji Muraoka
        Setup initial state of the view
    */

    func setupInitialState()
    
    func updateItems(_ items: [Item])
    
    func reloadTableViewWithData(_ items: [Item])
}
