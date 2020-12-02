//
//  RuntimeError.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

import Foundation

public enum RuntimeError:Error {
    
    case invalidEmail
    case empty(title:String, name:String)
    case tooShort(title:String, name:String)
    case unknown(message:String)
    case custom(title:String, message:String)
    
    public var details:(title:String?, message:String?) {
        
        switch self {
        case .invalidEmail:
            return ("Invalid Email", "Please provide a valid email.")
        case .empty(let title, let name):
            return ("\(title) Failed", "\(name) is empty.")
        case .tooShort(let title, let name):
            return ("\(title) Failed", "\(name) is too short.")
        case .unknown(let message):
            return ("Uknown Error", message)
        case .custom(let title, let message):
            return (title, message)
        }
    }
}
