//
//  SentenceTableViewCell.swift
//  LearnEnglish
//
//  Created by mac on 19/11/22.
//

import UIKit

class SentenceTableViewCell: UITableViewCell {
    
    
    static var cell = "SentenceTableViewCell"

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var lblTo: UILabel!
    @IBOutlet weak var lblFrom: UILabel!
    @IBOutlet weak var btnCount: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
