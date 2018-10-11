//
//  UIButton+Extensions.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/20/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

extension UIButton {
    
    class func createSolveButton() -> UIButton {
        let btn = UIButton(type: .custom)
        btn.backgroundColor = #colorLiteral(red: 0.8352941176, green: 0.4117647059, blue: 0.4705882353, alpha: 1)
        btn.setTitleColor(#colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1), for: .normal)
        btn.layer.cornerRadius = 8.0
        btn.setTitle("SOLVE", for: .normal)
        btn.layer.masksToBounds = true
        return btn
        }
    
    class func createClearAllButton() -> UIButton {
        let btn2 = UIButton(type: .custom)
        btn2.backgroundColor = #colorLiteral(red: 0.8352941176, green: 0.4117647059, blue: 0.4705882353, alpha: 1)
        btn2.setTitleColor(#colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1), for: .normal)
        btn2.layer.cornerRadius = 8.0
        btn2.setTitle("CLEAR ALL", for: .normal)
        btn2.layer.masksToBounds = true
        return btn2
    }
    
        
        

    }

