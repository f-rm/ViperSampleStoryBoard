//
//  LoginLoginPresenterTests.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 02/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import XCTest

class LoginPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: LoginInteractorInput {

    }

    class MockRouter: LoginRouterInput {

    }

    class MockViewController: LoginViewInput {

        func setupInitialState() {

        }
    }
}
