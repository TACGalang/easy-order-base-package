//
//  UIFont+EasyOrder.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

public extension UIFont {

    public static var textField:UIFont = {
        return UIFont.systemFont(ofSize: 20.0 + Constants.additionalSize.createCGFloat, weight: .regular)
    }()
    
    public static var largeButtonTitle:UIFont = {
        
        return UIFont.systemFont(ofSize: 15.0 + Constants.additionalSize.createCGFloat, weight: .bold)
    }()
    
    public static var regularButtonTitle:UIFont = {
        
        return UIFont.systemFont(ofSize: 10.0 + Constants.additionalSize.createCGFloat, weight: .medium)
    }()
    
    public static var titles:UIFont = {
        return UIFont.systemFont(ofSize: 20.0 + Constants.additionalSize.createCGFloat, weight: .bold)
    }()
    
    public static var subTitles:UIFont = {
        return UIFont.systemFont(ofSize: 15.0 + Constants.additionalSize.createCGFloat, weight: .medium)
    }()
    
    public static var subInfo:UIFont = {
        return UIFont.systemFont(ofSize: 10.0 + Constants.additionalSize.createCGFloat, weight: .medium)
    }()
    
    public static var info:UIFont = {
        return UIFont.systemFont(ofSize: 15.0 + Constants.additionalSize.createCGFloat, weight: .regular)
    }()
    
    public static var infoHightLight:UIFont = {
        return UIFont.systemFont(ofSize: 15.0 + Constants.additionalSize.createCGFloat, weight: .semibold)
    }()
    
    public static var infoData:UIFont = {
        return UIFont.systemFont(ofSize: 13.0 + Constants.additionalSize.createCGFloat, weight: .regular)
    }()
    
    public static var subInfoHightLight:UIFont = {
        return UIFont.systemFont(ofSize: 13.0 + Constants.additionalSize.createCGFloat, weight: .bold)
    }()
    
    public static var textFieldMedium:UIFont = {
        return UIFont.systemFont(ofSize: 20.0 + Constants.additionalSize.createCGFloat, weight: .medium)
    }()
    
    public static var textFieldBold:UIFont = {
        return UIFont.systemFont(ofSize: 20.0 + Constants.additionalSize.createCGFloat, weight: .bold)
    }()
    
    public static var orderCellTitle:UIFont = {
        return  UIFont.systemFont(ofSize: 15.0 + Constants.additionalSize.createCGFloat, weight: .regular)
    }()
    
    public static var orderCellSubTitle:UIFont = {
        return UIFont.systemFont(ofSize: 10.0 + Constants.additionalSize.createCGFloat, weight: .regular)
    }()
    
    public static var orderCellInfo:UIFont = {
        return UIFont.systemFont(ofSize: 15.0 + Constants.additionalSize.createCGFloat, weight: .regular)
    }()
    
    public static var orderCellQuantity:UIFont = {
        return UIFont.systemFont(ofSize: 13.0 + Constants.additionalSize.createCGFloat, weight: .semibold)
    }()
    
    public static var orderCellSideInfo:UIFont = {
        return UIFont.systemFont(ofSize: 10.0 + Constants.additionalSize.createCGFloat, weight: .medium)
    }()
    
    public static var orderCellSideInfoInput:UIFont = {
        return UIFont.systemFont(ofSize: 20.0 + Constants.additionalSize.createCGFloat, weight: .bold)
    }()
    
    public static var fieldTopLabel:UIFont = {
        return UIFont.systemFont(ofSize: 12.0 + Constants.additionalSize.createCGFloat, weight: .bold)
    }()
}
#endif
