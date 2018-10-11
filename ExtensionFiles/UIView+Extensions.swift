//
//  UIView+Extensions.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/19/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import Foundation

import UIKit

extension UIView {
func pinToView(_ superview: UIView) {
    self.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
        self.topAnchor.constraint(equalTo: superview.topAnchor),
        self.leftAnchor.constraint(equalTo: superview.leftAnchor),
        self.bottomAnchor.constraint(equalTo: superview.bottomAnchor),
        self.rightAnchor.constraint(equalTo: superview.rightAnchor)
        ])
    }
}
