//
//  ShadowExtensions.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

public extension UIView {
    
    /**
     UIView shadow extensions.
     
     - Parameter color: CGColor of the shadow.
     - Parameter opacity: Opacity of the shadow.
     - Parameter offset: Space of the shadow between the UIView.
     - Parameter radius: Blurriness of the shadow.
     */
    public func addShadow(withColor color:CGColor = UIColor.black.cgColor,
                   withOpacity opacity:Float = 0.15,
                   withOffset offset:CGSize = CGSize(width: 0, height: 7.0),
                   withRadius radius:CGFloat = 10.0) {
        
        layer.cornerRadius = 10.0
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowColor = color
        layer.shadowRadius = radius
    }
    
    /**
     Round corner extensions for FlexiCornerView
     
     - Parameter corners: List of corner.
     - Parameter radius: Radius of the corner
     */
    public func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        
        let path = UIBezierPath(roundedRect: self.bounds,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius,
                                                    height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    /**
     Round corner extensions with border for FlexiCornerView
     
     - Parameter corners: List of corner.
     - Parameter rad: Radius of the corner
     - Parameter color: Color of the border.
     - Parameter width: Width of the border.
     */
    public func roundCorners(withCorners corners: UIRectCorner,
                      radius rad: CGFloat,
                      borderColor color:CGColor,
                      borderWidth width:CGFloat)  {
        
        let path = UIBezierPath(roundedRect: self.bounds,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: rad,
                                                    height: rad))
        
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
        
        // create border layer
        
        let frameLayer = CAShapeLayer()
        frameLayer.path = path.cgPath
        frameLayer.lineWidth = width
        frameLayer.strokeColor = color
        frameLayer.fillColor = nil
        self.layer.addSublayer(frameLayer)
    }
}
#endif
