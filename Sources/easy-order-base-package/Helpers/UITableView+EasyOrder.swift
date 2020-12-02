//
//  UITableView+ReloadData.swift
//  EasyOrderBase
//
//  Created by Tristan Galang on 12/02/2020.
//  Copyright © 2020 10 FF. All rights reserved.
//

#if canImport(UIKit)
import UIKit

public extension UITableView {
    
    public func reloadData(completion: @escaping ()->()) {
        
        UIView.animate(withDuration: 0, animations: { self.reloadData() })
        { _ in completion() }
    }
}
#endif
