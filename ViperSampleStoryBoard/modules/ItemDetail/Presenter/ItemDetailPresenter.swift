//
//  ItemDetailItemDetailPresenter.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

class ItemDetailPresenter: ItemDetailModuleInput, ItemDetailViewOutput, ItemDetailInteractorOutput {

    weak var view: ItemDetailViewInput?
    var interactor: ItemDetailInteractorInput?
    var router: ItemDetailRouterInput?
    
    var item: Item?

    func viewIsReady() {
        
    }
}
