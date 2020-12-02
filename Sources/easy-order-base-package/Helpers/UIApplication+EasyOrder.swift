//
//  UIApplication+SetRoot.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

import Foundation

#if canImport(UIKit)
import UIKit

public extension UIApplication {
    
    public static func setRootView(_ viewController: UIViewController) {
        UIApplication.shared.keyWindow?.rootViewController = viewController
    }
}
#endif
