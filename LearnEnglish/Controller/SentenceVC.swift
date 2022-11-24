//
//  SentenceVC.swift
//  LearnEnglish
//
//  Created by mac on 19/11/22.
//


import UIKit

class SentenceVC: UIViewController {
    
    var isFrom = ""
    
    var arrSentence = [Sentence]()
    
    @IBOutlet weak var tblSentence: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tblSentence.delegate = self
        tblSentence.dataSource = self
        tblSentence.register(UINib(nibName: SentenceTableViewCell.cell, bundle: nil), forCellReuseIdentifier: SentenceTableViewCell.cell)
        
        appendSentence()
        
    }
    
    
    
}

extension SentenceVC:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrSentence.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        let cell = tblSentence.dequeueReusableCell(withIdentifier: "SentenceTableViewCell") as! SentenceTableViewCell
        
        
        if isFrom == "Gujrati"{
            cell.lblTo.text = arrSentence[indexPath.row].Gujrati
            cell.lblFrom.text = arrSentence[indexPath.row].English
        }else if isFrom == "Hindi"{
            cell.lblTo.text = arrSentence[indexPath.row].Hindi
            cell.lblFrom.text = arrSentence[indexPath.row].English
            
        }else{
            
            cell.lblTo.text = arrSentence[indexPath.row].Tamil
            cell.lblFrom.text = arrSentence[indexPath.row].English
        }
        

       // cell.lblFrom.text = arrSentence[indexPath.row].From
        cell.btnCount.setTitle("\(indexPath.row + 1)", for: .normal)
       // cell.lblFrom.text = isFrom
       // cell.lblTo.text = listVovels[indexPath.row].English
        //cell.imgMain.image = UIImage(named: arrImg[indexPath.row])

        return cell
        
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//            let vc = self.storyboard?.instantiateViewController(withIdentifier: "VowelsVC") as! VowelsVC
//            vc.isWord = true
//            vc.isFrom = isFrom
//            self.navigationController?.pushViewController(vc, animated: true)
//
//
//
//    }
//
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return tblSentence.estimatedRowHeight
    }
    
}

