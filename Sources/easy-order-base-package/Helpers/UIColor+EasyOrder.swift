//
//  UIColor+EasyOrder.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

public extension UIColor {
    
    // MARK: - Main
    public static let main: UIColor = #colorLiteral(red: 0.9529411765, green: 0.5960784314, blue: 0.2039215686, alpha: 1)
    public static let subMain: UIColor = #colorLiteral(red: 0.3647058824, green: 0.4980392157, blue: 0.5450980392, alpha: 1)
    public static let thirdMain: UIColor = #colorLiteral(red: 0.2352941176, green: 0.262745098, blue: 0.2784313725, alpha: 1)
    
    // MARK: - Backgrounds
    public static let darkBlack: UIColor = #colorLiteral(red: 0.1882352941, green: 0.1882352941, blue: 0.1882352941, alpha: 1)
    public static let mediumDarkGray: UIColor = #colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
    public static let mediumGray: UIColor = #colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1)
    public static let backgroundGray: UIColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)
    public static let pureWhite: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
    // MARK: - Component
    public static let componentGreen: UIColor = #colorLiteral(red: 0.3803921569, green: 0.8431372549, blue: 0.5490196078, alpha: 1)
    public static let componentDisable: UIColor = #colorLiteral(red: 0.9176470588, green: 0.9333333333, blue: 0.9411764706, alpha: 1)
    
    // MARK: - Status
    public static let statusGreen:UIColor = #colorLiteral(red: 0.2274509804, green: 0.8078431373, blue: 0.2549019608, alpha: 1)
    public static let statusRed:UIColor = #colorLiteral(red: 0.9058823529, green: 0.2549019608, blue: 0.2, alpha: 1)
    public static let statusBlue:UIColor = #colorLiteral(red: 0.2784313725, green: 0.3490196078, blue: 0.5764705882, alpha: 1)
    public static let statusYellow:UIColor = #colorLiteral(red: 1, green: 1, blue: 0.003921568627, alpha: 1)
    
    // MARK: - Initialization
    /**
     Creates an UIColor from a HEX String in format.
     ## Example Format:
     - "#36363636"
     */
    public convenience init(hexString: String) {
        
        let hexString: String = (hexString as NSString).trimmingCharacters(in: .whitespacesAndNewlines)
        let scanner = Scanner(string: hexString as String)
        
        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }
        
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        
        self.init(red:red, green:green, blue:blue, alpha:1)
    }
    
    // MARK: - Helpers
    /**
     Modified a saturation and brightness of a UIColor .
     ## Example Parameter:
     - (withNewSaturation saturation: 0, brightnest: 0)
     */
    public func modified(withNewSaturation saturation: CGFloat,
                         brightnest: CGFloat) -> UIColor {
        
        var currentHue: CGFloat = 0.0
        var currentSaturation: CGFloat = 0.0
        var currentBrigthness: CGFloat = 0.0
        var currentAlpha: CGFloat = 0.0
        
        if self.getHue(&currentHue, saturation: &currentSaturation, brightness: &currentBrigthness, alpha: &currentAlpha){
            return UIColor(hue: currentHue,
                           saturation:  saturation,
                           brightness: brightnest,
                           alpha: currentAlpha)
        } else {
            return self
        }
    }
}
#endif
