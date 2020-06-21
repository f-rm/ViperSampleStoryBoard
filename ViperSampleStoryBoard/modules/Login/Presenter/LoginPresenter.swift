//
//  LoginLoginPresenter.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 02/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

class LoginPresenter: LoginModuleInput, LoginViewOutput, LoginInteractorOutput {

    weak var view: LoginViewInput!
    var interactor: LoginInteractorInput!
    var router: LoginRouterInput!
    var output: LoginViewOutput?

    func viewIsReady() {

    }
}
