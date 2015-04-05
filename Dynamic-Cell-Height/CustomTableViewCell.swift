//
//  CustomTableViewCell.swift
//  Dynamic-Cell-Height
//
//  Created by Barrett Breshears on 4/5/15.
//  Copyright (c) 2015 Barrett Breshears. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var label1:UILabel!
    @IBOutlet var label2:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
