//
//  ItemListItemListViewOutput.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

protocol ItemListViewOutput {

    /**
        @author Ryuji Muraoka
        Notify presenter that view is ready
    */

    func viewIsReady()
    
    func didSelectRow(at indexPath: IndexPath)
}
