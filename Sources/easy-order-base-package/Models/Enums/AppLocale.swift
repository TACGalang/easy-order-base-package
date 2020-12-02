//
//  File.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

import Foundation

public enum AppLocale:String {
    
    case english = "en_US"
    case japanese = "ja"
    
    public var words:String {
        
        switch self {
        case .english:
            return "English"
        case .japanese:
            return "Japanese"
        }
    }
}
