//
//  ItemListItemListInteractor.swift
//  ViperSampleStoryBoard
//
//  Created by Ryuji Muraoka on 03/05/2020.
//  Copyright © 2020 personal. All rights reserved.
//

import Foundation

class ItemListInteractor: ItemListInteractorInput {

    weak var output: ItemListInteractorOutput?

    func getItemList() {
        print(#function)
        
        var items: [Item] = []
        
        if let url =  URL(string: "https://itunes.apple.com/search?term=facebook&media=software&entity=software&country=jp&lang=ja_jp&limit=10") {
            let task: URLSessionTask  = URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
                do {
                    let json = try JSONSerialization.jsonObject(with: data!) as! [String:Any]
                    if let results = json["results"] as? [[String:Any]] {
                        for item in results {
                            if let trackName = item["trackName"] as? String,
                                let trackViewUrl = item["trackViewUrl"] as? String,
                                let artworkUrl512 = item["artworkUrl512"] as? String {
                                let item = Item(name: trackName, url: trackViewUrl, imageUrl: artworkUrl512)
                                items.append(item)
                            }
                        }
                        self.output?.showItemList(items: items)
                    }
                }
                catch {
                    print(error)
                }
            })
            task.resume()
        }
    }    
}
