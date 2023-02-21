//
//  TableViewCell.swift
//  FoodTableViewWithXIB
//
//  Created by lime on 2023/2/19.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageContainer: UIImageView!
    
    @IBOutlet weak var lblImage: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
}
