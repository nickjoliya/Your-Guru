//
//  VowelsVC.swift
//  LearnEnglish
//
//  Created by mac on 17/11/22.
//

import UIKit


class VowelsVC: UIViewController {
    
    

    @IBOutlet weak var lblFrom: UILabel!
    @IBOutlet weak var tblVovels: UITableView!
    var listVovels = [Vowels]()
    
    var isFrom = ""
    var isWord = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tblVovels.delegate = self
        tblVovels.dataSource = self
        lblFrom.text = isFrom
        
        //isFrom = TopicCarbonVC.isFrom
        
        tblVovels.register(UINib(nibName: ConcetpTableViewCell.cell, bundle: nil), forCellReuseIdentifier: ConcetpTableViewCell.cell)
        
        if isWord{
            if isFrom == "Gujrati"{
                appendVovelsFromGujrati()
            }else if isFrom == "Hindi"{
                appendVovelsFromHindi()
            }else{
                appendVovelsFromTamil()
            }
        }else{
            if isFrom == "Gujrati"{
                appendVovelsFromGujrati()
            }else if isFrom == "Hindi"{
                appendVovelsFromHindi()
            }else{
                appendVovelsFromTamil()
            }
        }
        
        
        

        // Do any additional setup after loading the view.
    }
    
    
    
}

extension VowelsVC:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listVovels.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tblVovels.dequeueReusableCell(withIdentifier: "ConcetpTableViewCell") as! ConcetpTableViewCell
    
        cell.lblFrom.text = listVovels[indexPath.row].Gujrati
        cell.lblTo.text = listVovels[indexPath.row].English
        //cell.imgMain.image = UIImage(named: arrImg[indexPath.row])
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0{
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "LessonVC") as! LessonVC
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        }else if indexPath.row == 1{
            
           // let vc = self.storyboard?.instantiateViewController(withIdentifier: "PracticeVC") as! PracticeVC
            //self.navigationController?.pushViewController(vc, animated: true)
        }else{
            //let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuizVC") as! QuizVC
            //self.navigationController?.pushViewController(vc, animated: true)
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 50
    }
    
}
