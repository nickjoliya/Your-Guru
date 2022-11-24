//
//  ConcetpTableViewCell.swift
//  LearnEnglish
//
//  Created by mac on 17/11/22.
//

import UIKit

class ConcetpTableViewCell: UITableViewCell {
    
    
    static var cell = "ConcetpTableViewCell"

    @IBOutlet weak var lblTo: UILabel!
    
    @IBOutlet weak var lblFrom: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
