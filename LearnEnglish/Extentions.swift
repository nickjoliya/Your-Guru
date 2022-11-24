//
//  Extentions.swift
//  LearnEnglish
//
//  Created by mac on 17/11/22.
//

import Foundation
import UIKit

@IBDesignable extension UIView {
    @IBInspectable var borderColor: UIColor? {
        get {
            guard let cgColor = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: cgColor)
        }
        set { layer.borderColor = newValue?.cgColor }
    }

    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    @IBInspectable var shadowRadius: CGFloat {
            get { return layer.shadowRadius }
            set { layer.shadowRadius = newValue }
        }
    
    @IBInspectable var shadowOpacity: CGFloat {
           get { return CGFloat(layer.shadowOpacity) }
           set { layer.shadowOpacity = Float(newValue) }
       }

       @IBInspectable var shadowOffset: CGSize {
           get { return layer.shadowOffset }
           set { layer.shadowOffset = newValue }
       }
    
    @IBInspectable var shadowColor: UIColor? {
            get {
                guard let cgColor = layer.shadowColor else {
                    return nil
                }
                return UIColor(cgColor: cgColor)
            }
            set { layer.shadowColor = newValue?.cgColor }
        }
    
    func applyGradient(isVertical: Bool, colorArray: [UIColor]) {
            layer.sublayers?.filter({ $0 is CAGradientLayer }).forEach({ $0.removeFromSuperlayer() })
             
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = colorArray.map({ $0.cgColor })
            if isVertical {
                //top to bottom
                gradientLayer.locations = [0.0, 1.0]
            } else {
                //left to right
//                gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
//                gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
                gradientLayer.locations = [0.0, 1.0]
                gradientLayer.startPoint = CGPoint(x: 0, y: 0)
                gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            
            
            
            }
            //gradientLayer.cornerRadius = 15
            gradientLayer.cornerRadius = self.layer.cornerRadius
            backgroundColor = .clear
            gradientLayer.frame = bounds
            layer.insertSublayer(gradientLayer, at: 0)
        }

}


extension UIColor{
    
    public convenience init?(hexAlpha: String) {
        
        let r, g, b, a: CGFloat
        
        var formatted = hexAlpha.replacingOccurrences(of: "0x", with: "")
        formatted = formatted.replacingOccurrences(of: "#", with: "")
        
        if formatted.count == 8 {
            let scanner = Scanner(string: formatted)
            var hexNumber: UInt64 = 0
            
            if scanner.scanHexInt64(&hexNumber) {
                r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                a = CGFloat(hexNumber & 0x000000ff) / 255
                
                self.init(red: r, green: g, blue: b, alpha: a)
                return
            }
            else{
                
                return nil
            }
        }
        else{
            
            if let hex = Int(formatted, radix: 16) {
                let red = CGFloat(CGFloat((hex & 0xFF0000) >> 16)/255.0)
                let green = CGFloat(CGFloat((hex & 0x00FF00) >> 8)/255.0)
                let blue = CGFloat(CGFloat((hex & 0x0000FF) >> 0)/255.0)
                self.init(red: red, green: green, blue: blue, alpha: 1)
                
            }
            else {
                return nil
            }
        }
    }
    
}
