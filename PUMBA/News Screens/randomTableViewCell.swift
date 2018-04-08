//
//  randomTableViewCell.swift
//  PUMBA
//
//  Created by apple on 21/03/18.
//  Copyright © 2018 Sonkar. All rights reserved.
//

import UIKit

class randomTableViewCell: UITableViewCell {

    @IBOutlet weak var container: UIView!
    
    @IBOutlet weak var newsImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setContents()
    }
    
    @IBOutlet weak var holder: UIView!
    
    func setContents(){
        
        backgroundColor = UIColor.white
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowOffset = CGSize(width: 0, height: 3)
        container.layer.shadowOpacity = 0.8
        container.layer.shadowRadius = 5
        container.layer.masksToBounds = false
        container.layer.cornerRadius = 15
        
        newsImage.backgroundColor = UIColor.red
        newsImage.layer.cornerRadius = 15
        
        titleLabel.backgroundColor = UIColor.green
        titleLabel.numberOfLines = 0

    }
    
    

}
