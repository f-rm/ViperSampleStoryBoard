//
//  UIImageView+.swift
//  ViperSampleStoryBoard
//
//  Created by 村岡龍治 on 2020/05/05.
//  Copyright © 2020 村岡龍治. All rights reserved.
//

import UIKit

extension UIImageView {
    public func setImage(fromUrl url: String) {
        URLSession.shared.dataTask(with: URLRequest(url: URL(string: url)!)) { (data, response, error) in
            guard let data = data, let _ = response, error == nil else {
                return
            }
            DispatchQueue.main.async(execute: {
                self.image = UIImage(data: data)
            })
        }.resume()
    }
}
