//
//  ItemListItemListConfigurator.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class ItemListModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ItemListViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ItemListViewController) {

        let router = ItemListRouter(viewController: viewController)

        let presenter = ItemListPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ItemListInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
