//
//  ClientError.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

import Foundation

public enum ClientError:Error {
    
    case decode
    case server(title:String?, message:String?)
    case unknown(message:String)
    case token
    case logout
    case custom(title:String, message:String)
    
    public var details:(title:String?, message:String?) {
        
        switch self {

        case .decode:
            return ("Decoding Failed", "Unable to decode response, please try again.")
        case .server(let title, let message):
            return ("\(title ?? "") Failed", message)
        case .unknown(let message):
            return ("Unknown Error", message)
        case .token:
            return (nil, nil)
        case .logout:
            return (nil, nil)
        case .custom(let title, let message):
            return (title, message)
        }
    }
}
