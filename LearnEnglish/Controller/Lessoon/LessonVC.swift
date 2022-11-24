//
//  LessonVC.swift
//  TakeQuiz
//
//  Created by mac on 12/11/22.
//

import UIKit

class LessonVC: UIViewController {
  

   
    @IBOutlet var collectionLesson: UICollectionView!
    
    var arrSessionList = [ "Alphabet" ,"Words","Sentence"]
    var arrSesionImage =  ["alphabet","sentences","words"]
    
    
    var isFrom = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        
        
        collectionLesson.delegate = self
        collectionLesson.dataSource = self
    }
    


}

extension LessonVC : UICollectionViewDataSource,UICollectionViewDelegate ,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return arrSessionList.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LessonCollectionViewCell", for: indexPath) as! LessonCollectionViewCell
        cell.lblTitle.text = arrSessionList[indexPath.row]
        cell.imgLesson.image = UIImage(named: arrSesionImage[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row == 0{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "TopicCarbonVC") as! TopicCarbonVC
            vc.isFrom = isFrom
            self.navigationController?.pushViewController(vc, animated: true)
            
        }else if indexPath.row == 1{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "WordsVC") as! WordsVC
            vc.isFrom = isFrom
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SentenceVC") as! SentenceVC
            vc.isFrom = isFrom
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.frame.size.width
        
        return CGSize(width: width, height: 90)
    }
    
    
    
}
