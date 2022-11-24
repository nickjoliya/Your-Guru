//
//  FeedbackVC.swift
//  LearnEnglish
//
//  Created by mac on 23/11/22.
//

import UIKit

class FeedbackVC: UIViewController {

    @IBOutlet weak var txtFeedback: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnShare(_ sender: UIButton) {
        
        txtFeedback.text = ""
        let alert = UIAlertController(title: "Thanks", message: "Your Feedback Send Successfully!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true)
    }
    
   
}
