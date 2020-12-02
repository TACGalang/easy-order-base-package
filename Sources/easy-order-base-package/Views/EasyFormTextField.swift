//
//  EasyFormTextField.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

public class EasyFormTextField: UITextField {
    
    // Title label
    public let titleLabel:UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .subTitles
        label.textColor = .subMain
        
        return label
    }()

    // Icon Drop Down Image View
    public let iconDropDown:UIImageView = {
        
        let imageView = UIImageView(image: #imageLiteral(resourceName: "dropDownIcon"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.isHidden = true
        
        return imageView
    }()
    
    /**
     Initialize a FormTextField.
     
     - Parameter placeHolderString: String placeholder.
     - Parameter title: Optional String of the title label.
     */
    convenience public init(withPlaceHolder placeHolderString:String,
                     withTitle title:String? = nil) {
        self.init()
        
        translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.text = title
        
        layer.cornerRadius = 10.0
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.mediumGray.cgColor
        
        backgroundColor = .white

        placeholder = placeHolderString
        
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        leftViewMode = .always
    }
    
    public func removeBorder() {
        
        backgroundColor = .clear
        layer.borderColor  = UIColor.clear.cgColor
    }
    
    public func largerFont() {
        
        font = .textFieldMedium
        textColor = .mediumGray
    }
    
    public func Highlight() {
        
        font = .textFieldBold
        textColor = .darkBlack
    }
    
    // MARK: - Layout
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(titleLabel)
        addSubview(iconDropDown)
        
        heightAnchor.constraint(equalToConstant: 35.0).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: topAnchor, constant: -5).isActive = true
        
        iconDropDown.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        iconDropDown.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconDropDown.heightAnchor.constraint(equalToConstant: 8.0).isActive = true
        iconDropDown.widthAnchor.constraint(equalToConstant: 8.0).isActive = true
    }
}
#endif
