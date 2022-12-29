//
//  CustomCell.swift
//  FreshXCodeProject
//
//  Created by nm on 21/12/2022.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var lblSentence: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
