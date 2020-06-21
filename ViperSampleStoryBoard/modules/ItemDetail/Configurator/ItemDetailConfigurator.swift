//
//  ItemDetailItemDetailConfigurator.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class ItemDetailModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ItemDetailViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ItemDetailViewController) {

        let router = ItemDetailRouter()

        let presenter = ItemDetailPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ItemDetailInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
