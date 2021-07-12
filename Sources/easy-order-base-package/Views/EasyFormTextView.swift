//
//  EasyFormTextView.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

open class EasyFormTextView: UITextView {

    // Title label
    let titleLabel:UILabel = {

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .subTitles
        label.textColor = .subMain

        return label
    }()

    // Place Holder Label
    let placeHolderLabel:UILabel = {

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .textField
        label.textColor = .mediumGray

        return label
    }()

    /**
     Initialize a FormTextField.

     - Parameter placeHolderString: String placeholder.
     - Parameter title: Optional String of the title label.
     */
    public convenience init(withPlaceHolder placeHolderString:String,
                     withTitle title:String? = nil) {
        self.init()

        translatesAutoresizingMaskIntoConstraints = false
        isScrollEnabled = false
        clipsToBounds = false
        font = .textField
        textColor = .darkBlack

        layer.cornerRadius = 10.0
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.backgroundGray.cgColor

        titleLabel.text = title
        placeHolderLabel.text = placeHolderString
    }

    // MARK: - Layout
    override public func layoutSubviews() {
        super.layoutSubviews()

        addSubview(titleLabel)
        addSubview(placeHolderLabel)

        titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: topAnchor, constant: -5).isActive = true

        placeHolderLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        placeHolderLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        placeHolderLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
    }
}
#endif
