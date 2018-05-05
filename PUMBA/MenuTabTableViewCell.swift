//
//  MenuTabTableViewCell.swift
//  PUMBA
//
//  Created by apple on 06/05/18.
//  Copyright © 2018 Sonkar. All rights reserved.
//

import UIKit

class MenuTabTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
