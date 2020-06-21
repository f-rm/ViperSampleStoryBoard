//
//  ItemListItemListViewController.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit
import SDWebImageSVGCoder

class ItemListViewController: UIViewController, ItemListViewInput {

    var output: ItemListViewOutput?
    
    var input: ItemListViewInput?
    
    var items: [Item]?
        
    @IBOutlet weak var tableView: UITableView?

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInitialState()
        self.output?.viewIsReady()
    }
    
    func setupInitialState() {
        print(#function)
        self.title = "アイテム一覧"
        self.tableView?.register(UINib(nibName: "CurrencyCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    func reloadTableViewWithData(_ items: [Item]) {
        self.items = items
        DispatchQueue.main.async {
            self.tableView?.reloadData()
        }
    }
    
    func updateItems(_ items: [Item]) {
        self.items = items
    }
}

extension ItemListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let items = self.items else { return 0 }
        return items.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CurrencyCell = CurrencyCell()
        
        if let cell = self.tableView?.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CurrencyCell,
            let item = self.items?[indexPath.row] {
                cell.configure(item: item)
                return cell
        }
        
        return cell
    }
    
}

extension ItemListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function)
        if let item = self.items?[indexPath.row] {
            output?.didSelectRow(at: indexPath)
        }
    }
    
}
