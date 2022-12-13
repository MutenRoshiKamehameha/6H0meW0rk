//
//  TableViewCell.swift
//  6H0meW0rk
//
//  Created by Байгелди Акылбек уулу on 13/12/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageProduct: UIImageView!
    
    
    @IBOutlet weak var nameProductLabel: UILabel!
    
    
    @IBOutlet weak var priceProductLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
