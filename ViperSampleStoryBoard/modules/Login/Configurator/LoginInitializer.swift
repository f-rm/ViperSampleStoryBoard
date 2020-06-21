//
//  LoginLoginInitializer.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 02/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class LoginModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var loginViewController: LoginViewController!

    override func awakeFromNib() {

        let configurator = LoginModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: loginViewController)
    }

}
