//
//  WordsTableViewCell.swift
//  LearnEnglish
//
//  Created by mac on 17/11/22.
//

import UIKit

class WordsTableViewCell: UITableViewCell {
    
    static var cell  = "WordsTableViewCell"

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnNumber: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    
    
}
