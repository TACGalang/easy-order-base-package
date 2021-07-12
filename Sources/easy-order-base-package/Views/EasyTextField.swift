//
//  EasyTextField.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

open class EasyTextField: UITextField {

    public let bottomLine:UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        
        return view
    }()
    
    public let topLabel:UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .fieldTopLabel
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 1
        label.isHidden = true
        
        return label
    }()
    
    public var isShouldShow:Bool = true
    
    // MARK: - Initialization
    public convenience init(withPlaceHolder placeHolder:String,
                            withTopLabel topLabelText:String? = nil) {
        self.init()
        
        addTargets()
        
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = false
        font = .textField
        topLabel.text = topLabelText
        
        let attributes:[NSAttributedString.Key: Any] = [
            NSAttributedString.Key.font: UIFont.textField,
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]

        attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: attributes)
    }
    
    public func setColor(withPlaceHolderColor placeColor:UIColor = UIColor.backgroundGray,
                         withTopLabel topLabelColor:UIColor = UIColor.main,
                         withTextColor thisTextColor:UIColor = UIColor.main) {
        
        // Set Color
        textColor = topLabelColor
        topLabel.textColor = thisTextColor
        
        // Set Placeholder color
        let attributes:[NSAttributedString.Key: Any] = [
            NSAttributedString.Key.foregroundColor: placeColor
        ]

        guard let thisPlaceHolderString = placeholder else { return }
        attributedPlaceholder = NSAttributedString(string: thisPlaceHolderString, attributes: attributes)
    }
    
    // MARK: - Actions
    func addTargets() {
        
        addTarget(self, action: #selector(onTextChange(_:)), for: UIControl.Event.editingChanged)
    }
    
    @objc func onTextChange(_ thisTextField:UITextField) {
        
        // Assign top label if it should be hidden or not
        topLabel.isHidden = (thisTextField.text?.count ?? 0 > 0) && (isShouldShow) ? false : true
    }
    
    // MARK: - Layout
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(bottomLine)
        addSubview(topLabel)
        
        let views = [
            "bottomLine":bottomLine,
            "topLabel":topLabel
        ]
        
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 30.5),
            topLabel.bottomAnchor.constraint(equalTo: topAnchor, constant: 0),
            topLabel.rightAnchor.constraint(equalTo: rightAnchor),
            topLabel.leftAnchor.constraint(equalTo: leftAnchor),
        ])
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[bottomLine(0.5)]|", options: [], metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[bottomLine]|", options: [], metrics: nil, views: views))
    }
}
#endif
