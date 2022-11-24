//
//  ChatagoryViewController.swift
//  LearnEnglish
//
//  Created by mac on 16/11/22.
//

import UIKit
import SideMenu


class ChatagoryViewController: UIViewController  {
 

    @IBOutlet var tblMain: UITableView!
    
     var arrTblList = ["Gujrati - English" , "Hindi - English" , "Tamil - English"]
    var arrImg = ["Guj-eng" , "hnd-eng" , "tamil-eng"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        tblMain.delegate = self
        tblMain.dataSource = self
        
    }
    
    
    @IBAction func btnNotifications(_ sender: UIBarButtonItem) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "NotificationsVC") as! NotificationsVC
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func btnSideMenu(_ sender: UIBarButtonItem) {
        
       
        
        
    }
    

}

extension ChatagoryViewController:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrTblList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tblMain.dequeueReusableCell(withIdentifier: "ChatagoryTableViewCell") as! ChatagoryTableViewCell
    
        cell.lblTitle.text = arrTblList[indexPath.row]
        cell.imgMain.image = UIImage(named: arrImg[indexPath.row])
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LessonVC") as! LessonVC
        if indexPath.row == 0{
            vc.isFrom = "Gujrati"
        }else if indexPath.row == 1{
            vc.isFrom = "Hindi"
        }else{
            vc.isFrom = "Tamil"
            
        }
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 90
    }
    
}

