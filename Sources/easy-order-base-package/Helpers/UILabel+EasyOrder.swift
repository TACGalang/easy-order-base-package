//
//  UILabel+Hypenate.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

public extension UILabel {
    
    /**
     Hypen a UILabel when the word is cut.
     */
    public func hyphenate() {
        
        guard let attr = self.attributedText else { return }
        
        let paragraphStyle = NSMutableParagraphStyle()
        let attstr = NSMutableAttributedString(attributedString: attr)
        
        paragraphStyle.hyphenationFactor = 1.0
        attstr.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange(0..<attstr.length))
        
        self.attributedText = attstr
    }
}
#endif
