//
//  String+EasyOrder.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 10/21/19.
//  Copyright © 2019 10 FF. All rights reserved.
//

import Foundation

public extension String {
    
    /**
     Check whether the String is a valid email.
     
     - Returns:
        - Bool: Return a boolean
     */
    public func isValidEmail() -> Bool {
        
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        var valid = NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: self)
        if valid {
            valid = !self.contains("..")
        }
        return valid
    }
}
