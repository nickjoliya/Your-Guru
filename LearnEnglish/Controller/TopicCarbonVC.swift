//
//  TopicCarbonVC.swift
//  LearnEnglish
//
//  Created by mac on 17/11/22.
//

import UIKit
import CarbonKit

class TopicCarbonVC: UIViewController ,CarbonTabSwipeNavigationDelegate{
    
    
    
    @IBOutlet weak var viewContainer: UIView!
    var controller = ["Vowels","Consonants"]
    var Carbon = CarbonTabSwipeNavigation()
    var isFrom = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        carbonSetup()
    }
    
    func carbonSetup()
    {
        Carbon = CarbonTabSwipeNavigation(items: controller, delegate: self)
        Carbon.carbonSegmentedControl?.setWidth(view.frame.size.width / 2, forSegmentAt: 0)
        Carbon.carbonSegmentedControl?.setWidth(view.frame.size.width / 2, forSegmentAt: 1)
        //Carbon.carbonSegmentedControl?.setWidth(view.frame.size.width / 3, forSegmentAt: 2)

        Carbon.toolbar.barTintColor = UIColor.white
        Carbon.carbonSegmentedControl?.backgroundColor =  UIColor(hexAlpha: "#F49D1A")
        //Carbon.set(UIColor.black)
        Carbon.setSelectedColor(UIColor.white,font: UIFont.systemFont(ofSize: 16))
        Carbon.setNormalColor(UIColor.black,font: UIFont.systemFont(ofSize: 16))
       // Carbon.setIndicatorColor(UIColor.white)
        Carbon.carbonSegmentedControl?.indicator.image = UIImage(named: "gradientTabIndecator")
        Carbon.insert(intoRootViewController: self, andTargetView: viewContainer)
        Carbon.setTabBarHeight(73)
        Carbon.setIndicatorHeight(2.0)
        Carbon.setIndicatorColor(UIColor.white)
        
    }
    
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        //guard let storyboard = storyboard else{
        //    return UIViewController()
        //}
        if index == 0
        {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "VowelsVC") as! VowelsVC
            vc.isFrom = isFrom
            return vc
        }
        else {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ConsonentsVC") as! ConsonentsVC
            vc.isFrom = isFrom
            return vc
        }
    }


}
