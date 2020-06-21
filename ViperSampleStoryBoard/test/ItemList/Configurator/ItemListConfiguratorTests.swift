//
//  ItemListItemListConfiguratorTests.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import XCTest

class ItemListModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = ItemListViewControllerMock()
        let configurator = ItemListModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "ItemListViewController is nil after configuration")
        XCTAssertTrue(viewController.output is ItemListPresenter, "output is not ItemListPresenter")

        let presenter: ItemListPresenter = viewController.output as! ItemListPresenter
        XCTAssertNotNil(presenter.view, "view in ItemListPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in ItemListPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is ItemListRouter, "router is not ItemListRouter")

        let interactor: ItemListInteractor = presenter.interactor as! ItemListInteractor
        XCTAssertNotNil(interactor.output, "output in ItemListInteractor is nil after configuration")
    }

    class ItemListViewControllerMock: ItemListViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
