//
//  UITextView+Extensions.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/25/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

extension UITextView {
    
    class func answerTextView() -> UITextView {
        
        let answer = UITextView()
        answer.textAlignment = .center
        answer.backgroundColor = #colorLiteral(red: 0.9345787168, green: 0.9290229678, blue: 0.9388493896, alpha: 1)
        answer.font = UIFont(name: "SF-Pro-Text-Medium.otf", size: 28)
        answer.textColor = #colorLiteral(red: 0.8352941176, green: 0.4117647059, blue: 0.4705882353, alpha: 1)
        answer.layer.cornerRadius = 15
        
        let answerY: CGFloat = answer.frame.origin.y + answer.frame.size.height + 350
        
        let answerX: CGFloat = answer.frame.origin.x +  answer.frame.size.width + 88
        
        answer.frame = CGRect(x: answerX, y: answerY, width: 190, height: 125)

        return answer
        
    }
    
    class func setByStepTextView() -> UITextView {
        let setUp = UITextView()
        setUp.textAlignment = .center
        setUp.backgroundColor = #colorLiteral(red: 0.9345787168, green: 0.9290229678, blue: 0.9388493896, alpha: 1)
        setUp.font = UIFont(name: "SF-Pro-Text-Medium.otf", size: 24)
        setUp.textColor = #colorLiteral(red: 0.8352941176, green: 0.4117647059, blue: 0.4705882353, alpha: 1)
        setUp.layer.cornerRadius = 15
        
        
        let setUpY: CGFloat = setUp.frame.origin.y + setUp.frame.size.height + 350
        
        let setUpX: CGFloat = setUp.frame.origin.x +  setUp.frame.size.width + 88
        
        setUp.frame = CGRect(x: setUpX, y: setUpY, width: 190, height: 125)
        return setUp

    }
}
