//
//  WordsVC.swift
//  LearnEnglish
//
//  Created by mac on 17/11/22.
//

import UIKit

class WordsVC: UIViewController {

    @IBOutlet weak var tblWords: UITableView!
    
    var arrWordCatagory = [Words]()
    var isFrom = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tblWords.delegate = self
        tblWords.dataSource = self
        tblWords.register(UINib(nibName: SentenceTableViewCell.cell, bundle: nil), forCellReuseIdentifier: SentenceTableViewCell.cell)
        
        apendData()
    }
    
    
    
}

extension WordsVC:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrWordCatagory.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        let cell = tblWords.dequeueReusableCell(withIdentifier: "SentenceTableViewCell") as! SentenceTableViewCell
        
        
        if isFrom == "Gujrati"{
            cell.lblTo.text = arrWordCatagory[indexPath.row].Gujrati
            cell.lblFrom.text = arrWordCatagory[indexPath.row].English
        }else if isFrom == "Hindi"{
            cell.lblTo.text = arrWordCatagory[indexPath.row].Hindi
            cell.lblFrom.text = arrWordCatagory[indexPath.row].English
            
        }else{
            
            cell.lblTo.text = arrWordCatagory[indexPath.row].Tamil
            cell.lblFrom.text = arrWordCatagory[indexPath.row].English
        }

        cell.btnCount.setTitle("\(indexPath.row + 1)", for: .normal)
      

        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
       
        
    }
    
    
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        if let cell1 = cell as? SentenceTableViewCell{
            
            cell1.backView.applyGradient(isVertical: false, colorArray: [UIColor.orange.cgColor , UIColor.white.cgColor])
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//  
//            let vc = self.storyboard?.instantiateViewController(withIdentifier: "VowelsVC") as! VowelsVC
//            vc.isWord = true
//            vc.isFrom = isFrom
//            self.navigationController?.pushViewController(vc, animated: true)



    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 90
    }
    
}
