//
//  ProfileCell.swift
//  FacebookMe
//
//  Created by simyo on 2021/08/19.
//

import UIKit

class ProfileCell: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var shortIntroduction: UILabel!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
