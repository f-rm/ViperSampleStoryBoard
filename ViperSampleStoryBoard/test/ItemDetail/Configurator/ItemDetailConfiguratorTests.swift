//
//  ItemDetailItemDetailConfiguratorTests.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import XCTest

class ItemDetailModuleConfiguratorTests: XCTestCase {

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
        let viewController = ItemDetailViewControllerMock()
        let configurator = ItemDetailModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "ItemDetailViewController is nil after configuration")
        XCTAssertTrue(viewController.output is ItemDetailPresenter, "output is not ItemDetailPresenter")

        let presenter: ItemDetailPresenter = viewController.output as! ItemDetailPresenter
        XCTAssertNotNil(presenter.view, "view in ItemDetailPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in ItemDetailPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is ItemDetailRouter, "router is not ItemDetailRouter")

        let interactor: ItemDetailInteractor = presenter.interactor as! ItemDetailInteractor
        XCTAssertNotNil(interactor.output, "output in ItemDetailInteractor is nil after configuration")
    }

    class ItemDetailViewControllerMock: ItemDetailViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
