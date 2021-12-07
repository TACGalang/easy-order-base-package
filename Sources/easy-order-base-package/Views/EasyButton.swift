//
//  EasyButton.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

open class EasyButton: UIButton {

    // Title label
    let buttonTitle:UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .largeButtonTitle
        label.isUserInteractionEnabled = false
        
        return label
    }()
    
    // Icon
    let buttonIcon:UIImageView = {
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = false
        
        return imageView
    }()
    
    // Container that holds buttonIcon and title
    let contentView:UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = false
        
        return view
    }()
    
    /**
        Custom UIButton with minimal corner radius and shadow.
     
     - Parameter title: Text title.
     - Parameter titleColor: Text color.
     - Parameter bgColor: Background color.
     - Parameter shadowColor: Shadow color.
     */
    public convenience init(withTitle title:String,
                     withTitleColor titleColor:UIColor,
                     withBackgroundColor bgColor:UIColor,
                     withShadowColor shadowColor:CGColor? = nil) {
        self.init(type: .system)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        buttonTitle.text = title
        buttonTitle.textColor = titleColor
        buttonIcon.tintColor = titleColor
        backgroundColor = bgColor
        layer.cornerRadius = 5.0
        layer.shadowColor = shadowColor == nil ? bgColor.modified(withNewSaturation: 1.0, brightnest: 1).cgColor : shadowColor
        layer.shadowOffset = CGSize(width: 0, height: 20.0)
        layer.shadowRadius = 15.0
        layer.shadowOpacity = 0.38
        
        self.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    /**
        Custom UIButton with fully rounded sides and stroke.
     
     - Parameter title: Text.
     - Parameter titleColor: Text color
     - Parameter bgColor: Background color.
     - Parameter strokeColor: Color of the stroke.
     - Parameter cornerRadius: Radius of in every corner default is 25.0
     */
    public convenience init(withTitle title:String,
                     withTitleColor titleColor:UIColor,
                     withBackgroundColor bgColor:UIColor,
                     withStrokeColor strokeColor:UIColor,
                     withRoundCorner cornerRadius:CGFloat = 25.0) {
        self.init(type: .system)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        buttonTitle.text = title
        buttonTitle.textColor = titleColor
        buttonIcon.tintColor = titleColor
        backgroundColor = bgColor
        layer.cornerRadius = cornerRadius
        layer.borderColor = strokeColor.cgColor
        layer.borderWidth = 1.0
        
        self.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    public func display(withIcon iconImage:UIImage) {

        buttonIcon.image = iconImage
    }
  
    public func setButton(titleLabel title:String) {
      buttonTitle.text = title
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        let shadowRadiusanimation = CABasicAnimation(keyPath: "shadowRadius")
        shadowRadiusanimation.fromValue = 15.0
        shadowRadiusanimation.toValue = 5.0
        shadowRadiusanimation.duration = 0.1
        
        let shadowOffsetAnimation = CABasicAnimation(keyPath: "shadowOffset")
        shadowOffsetAnimation.fromValue = CGSize(width: 0, height: 20.0)
        shadowOffsetAnimation.toValue = CGSize(width: 0, height: 5.0)
        shadowOffsetAnimation.duration = 0.1
        
        layer.add(shadowRadiusanimation, forKey: shadowRadiusanimation.keyPath)
        layer.add(shadowOffsetAnimation, forKey: shadowOffsetAnimation.keyPath)
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 0, height: 5.0)
        
        UIView.animate(withDuration: 0.1) {
            
            self.transform = CGAffineTransform(scaleX: 0.99, y: 0.99)
        }
        
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.1) {
            
            let shadowRadiusanimation = CABasicAnimation(keyPath: "shadowRadius")
            shadowRadiusanimation.fromValue = 5.0
            shadowRadiusanimation.toValue = 15.0
            shadowRadiusanimation.duration = 0.1
            
            let shadowOffsetAnimation = CABasicAnimation(keyPath: "shadowOffset")
            shadowOffsetAnimation.fromValue = CGSize(width: 0, height: 5.0)
            shadowOffsetAnimation.toValue = CGSize(width: 0, height: 20.0)
            shadowOffsetAnimation.duration = 0.1
            
            self.layer.add(shadowRadiusanimation, forKey: shadowRadiusanimation.keyPath)
            self.layer.add(shadowOffsetAnimation, forKey: shadowOffsetAnimation.keyPath)
            self.layer.shadowRadius = 15.0
            self.layer.shadowOffset = CGSize(width: 0, height: 20.0)
            
            UIView.animate(withDuration: 0.1) {
                
                self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            }
        }
    }
    
    // MARK: - Layout
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(contentView)
        contentView.addSubview(buttonTitle)
        contentView.addSubview(buttonIcon)
        
        let iconSize:CGFloat = buttonIcon.image == nil ? 0.0 : 20.0
        
        let views = [
            "contentView":contentView,
            "buttonTitle":buttonTitle,
            "buttonIcon":buttonIcon
        ]
        
        let metrics = [
            "iconSize":iconSize
        ]
        
        contentView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        contentView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        buttonIcon.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[buttonIcon(iconSize)]", options: [], metrics: metrics, views: views))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[buttonTitle]-|", options: [], metrics: metrics, views: views))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[buttonIcon(iconSize)]-[buttonTitle]-|", options: [], metrics: metrics, views: views))
    }
}
#endif
