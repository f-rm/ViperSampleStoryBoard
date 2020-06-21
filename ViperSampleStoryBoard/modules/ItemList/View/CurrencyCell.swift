//
//  CurrencyCell.swift
//  ViperSampleStoryBoard
//
//  Created by 村岡龍治 on 2020/05/06.
//  Copyright © 2020 村岡龍治. All rights reserved.
//

import UIKit

class CurrencyCell: UITableViewCell {
    
    @IBOutlet weak var currencyImageView: UIImageView?
    
    @IBOutlet weak var currencyNameLabel: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(item: Item) {
        if let imageUrl = item.imageUrl {
            self.currencyImageView?.sd_setImage(with: URL(string: imageUrl), completed: { (image, error, type, url) in
                if error != nil {
                    print(error)
                } else {
                    self.currencyImageView?.image = image
                }
            })
            self.currencyNameLabel?.text = item.name
        }
    }
    
}
