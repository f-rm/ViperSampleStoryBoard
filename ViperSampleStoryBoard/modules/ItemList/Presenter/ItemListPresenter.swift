//
//  ItemListItemListPresenter.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class ItemListPresenter: ItemListModuleInput, ItemListViewOutput, ItemListInteractorOutput {

    weak var view: ItemListViewInput?
    var interactor: ItemListInteractorInput?
    var router: ItemListRouterInput?
    
    private var items: [Item] = [] {
        didSet {
            view?.updateItems(items)
        }
    }
    
    func viewIsReady() {
        print(#function)
        self.interactor?.getItemList()
    }
    
    func showItemList(items: [Item]) {
        self.items = items
        self.view?.reloadTableViewWithData(items)
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        guard indexPath.row < self.items.count else { return }
        
        let item = items[indexPath.row]
        router?.showItemDetail(item) // Routerに画面遷移を依頼
    }
}
