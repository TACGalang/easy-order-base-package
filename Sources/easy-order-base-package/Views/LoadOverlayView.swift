//
//  LoadOverlayView.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

open class LoadOverlayView: UIView {

    /// Background View with opacity 50 percent
    let backgroundView:UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .main
        view.alpha = 0.5
        
        return view
    }()
    
    /// Spinning gear view
    let indicatorView:UIActivityIndicatorView = {
        
        let view = UIActivityIndicatorView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.style = .whiteLarge
        view.startAnimating()
        view.color = .white
        
        return view
    }()
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Actions
    public func hide() {
        
        isHidden = true
    }
    
    public func show() {
        
        isHidden = false
    }
    
    // MARK: - Layout
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        isHidden = true
        backgroundColor = .clear
        addSubview(backgroundView)
        addSubview(indicatorView)
        
        let views = [
            "backgroundView":backgroundView,
            "indicatorView":indicatorView
        ]
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[backgroundView]|", options: [], metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[backgroundView]|", options: [], metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[indicatorView]|", options: [], metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[indicatorView]|", options: [], metrics: nil, views: views))
    }
}
#endif
