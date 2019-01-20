//
//  HomeTableViewCell.swift
//  Doodle
//
//  Created by Abraham Lee on 1/16/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {
    
    @IBOutlet weak var userDoodle: UIImageView!
    @IBOutlet weak var userDescription: UITextField!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var editButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let screen = UIScreen.main.bounds
        userDoodle.heightAnchor.constraint(equalToConstant: screen.width).isActive = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
