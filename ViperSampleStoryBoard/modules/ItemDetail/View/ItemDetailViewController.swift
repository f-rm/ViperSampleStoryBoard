//
//  ItemDetailItemDetailViewController.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit
import WebKit
import PKHUD

class ItemDetailViewController: UIViewController, ItemDetailViewInput {

    @IBOutlet weak var webView: WKWebView?
    
    var output: ItemDetailViewOutput?
    
    var item: Item?

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInitialState()
        self.showItemDetail()
    }


    // MARK: ItemDetailViewInput
    func setupInitialState() {
        webView?.navigationDelegate = self
    }
    
    func showItemDetail() {
        HUD.show(.progress)
        if let urlString = item?.url,
            let url = URL(string: urlString) {
            webView?.load(URLRequest(url: url))
        }
    }
}

extension ItemDetailViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        HUD.hide()
    }
}
