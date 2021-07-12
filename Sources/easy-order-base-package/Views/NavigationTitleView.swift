//
//  NavigationTitleView.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

open class NavigationTitleView: UIView {
 
    /// Title Label
    public let titleButton:UIButton = {
        
        let label = UIButton(type: .system)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.titleLabel?.font = .largeButtonTitle
        label.setTitleColor(.white, for: .normal)
        label.titleLabel?.adjustsFontSizeToFitWidth = true
        label.contentHorizontalAlignment = .left
        
        return label
    }()
    
    // MARK: - Initialization
    override public init(frame:CGRect = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 45, height: 40)) {
        super.init(frame: frame)
        
        self.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 45).isActive = true
        self.heightAnchor.constraint(equalToConstant: 40.0).isActive = true

        self.isUserInteractionEnabled = true
    }
    
    public convenience init(withTitle title:String) {
        self.init(frame: .zero)
        
        titleButton.setTitle(title, for: .normal)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    
    public func display(navigationTitle title:String) {
        
        titleButton.setTitle(title, for: .normal)
    }
    
    // MARK: - Layout
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(titleButton)
        
        let views = [
            "titleButton":titleButton
        ]
        
        titleButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[titleButton]-|", options: [], metrics: nil, views: views))        
    }
}
#endif
