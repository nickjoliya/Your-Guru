//
//  SideMenuMainVC.swift
//  LearnEnglish
//
//  Created by mac on 23/11/22.
//

import UIKit

class SideMenuMainVC: UIViewController {
    
    
    var arrTblList = ["Feedback","Share","Rate us","Privacy policy","Help & Support"]
    var arrImg = ["Feedback" , "Share" , "review", "privacy-policy","ask"]

    @IBOutlet weak var tblSideMenu: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tblSideMenu.delegate = self
        tblSideMenu.dataSource = self
        
        
        
    }
    
    

}


extension SideMenuMainVC:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrTblList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let  cell =  tblSideMenu.dequeueReusableCell(withIdentifier: "SideMenuTableViewCell"  ) as! SideMenuTableViewCell
        
    
        cell.lblTitle.text = arrTblList[indexPath.row]
        cell.imgSidemenu.image = UIImage(named: arrImg[indexPath.row])
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       // let vc = self.storyboard?.instantiateViewController(withIdentifier: "LessonVC") as! LessonVC
        if indexPath.row == 0{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "FeedbackVC") as! FeedbackVC
            self.navigationController?.pushViewController(vc, animated: true)
        }else if indexPath.row == 1{
            //vc.isFrom = "Hindi"
        }else{
           // vc.isFrom = "Tamil"
            
        }
       // self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 60
    }
    
}

