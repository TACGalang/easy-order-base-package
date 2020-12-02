//
//  Constants.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

import Foundation
#if canImport(UIKit)
import UIKit

enum Constants {
    case additionalSize
    
    var createCGFloat:CGFloat {
        if self == .additionalSize {
            return UI_USER_INTERFACE_IDIOM() == .pad ? 5.0 : 0.0
        } else {
            return 0.0
        }
    }
}
#endif
