//
//  File.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

import Foundation

public extension Optional {
    
    var isNil: Bool {
        guard case Optional.none = self else {
            return false
        }
        
        return true
    }
}
