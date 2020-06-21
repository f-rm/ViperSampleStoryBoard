//
//  LoginLoginViewController.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 02/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginViewInput {

    var output: LoginViewOutput?
    
    @IBOutlet weak var UserIdField: UITextField?
    
    @IBOutlet weak var passwordField: UITextField?

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewIsReady()
    }


    // MARK: LoginViewInput
    func setupInitialState() {
    }
}
