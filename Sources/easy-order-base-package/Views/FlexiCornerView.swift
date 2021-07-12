//
//  FlexiCornerView.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

/**
 View that you can easily configured corner radius.
 */
open class FlexiCornerView: UIView {

    /// Selected corners to be enabled
    public var corners:UIRectCorner = [.topLeft, .topRight, .bottomRight, .bottomLeft]
    
    /// Radius of the selected corners
    public var radius:CGFloat = 10.0

    /// Mask border color.
    public var borderColor:CGColor = UIColor.white.cgColor
    
    /// Mask border width.
    public var borderWidth:CGFloat = 4.0
    
    /// Boolean that dictates the layout what extension will be used.
    public var hasBorder:Bool = false
    
    // MARK: - Layout
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        if hasBorder {
            roundCorners(withCorners: corners, radius: radius, borderColor: borderColor, borderWidth: borderWidth)
        } else {
            roundCorners(corners, radius: radius)
        }
    }
}
#endif
