//
//  TableViewCell.swift
//  SevenWonders
//
//  Created by lime on 2023/3/18.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lblCity: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
