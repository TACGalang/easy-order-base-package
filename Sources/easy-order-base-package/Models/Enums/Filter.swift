//
//  Filter.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

public enum Filter:String {
    
    case drink
    case sushi
    case complementary
    case sweets
    case courseDish
    case main
    case darts
    case speedMenu
    
    public var words:String {
        
        switch self {
        case .drink:
            return NSLocalizedString("orderViewControllerDrink", comment: "")
        case .sushi:
            return NSLocalizedString("orderViewControllerSushi", comment: "")
        case .complementary:
            return NSLocalizedString("orderViewControllerComplementary", comment: "")
        case .sweets:
            return NSLocalizedString("orderViewControllerSweets", comment: "")
        case .courseDish:
            return NSLocalizedString("orderViewControllerCourseDish", comment: "")
        case .main:
            return NSLocalizedString("orderViewControllerMain", comment: "")
        case .darts:
            return NSLocalizedString("orderViewControllerDarts", comment: "")
        case .speedMenu:
            return NSLocalizedString("orderViewControllerSpeedMenu", comment: "")
        }
    }
}
#endif
