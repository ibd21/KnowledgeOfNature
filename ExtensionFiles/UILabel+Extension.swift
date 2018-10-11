//
//  UILabel+Extension.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/25/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

extension UILabel {

    class func formulaLabel() -> UILabel {
        let label = UILabel()
        
        label.textAlignment = .center
        label.frame.origin.y = 32
        label.font = UIFont(name: "SF-Display_Medium.otf", size: 42)
        label.textColor = #colorLiteral(red: 0.8352941176, green: 0.4117647059, blue: 0.4705882353, alpha: 1)
        return label
    }

}
