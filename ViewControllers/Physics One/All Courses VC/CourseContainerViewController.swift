//
//  CourseContainerViewController.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/26/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

enum CourseType {
    case physicsOne, physicsTwo
}

class CourseContainerViewController: UIViewController {

    var courseType: CourseType = .physicsOne
    
    @IBOutlet weak var courseContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCourses()
    }

    func setUpCourses() {
        let coursesStoryboard = UIStoryboard(name: "Courses", bundle: nil)
        
        let courseSectionVC: UIViewController
        
        switch courseType {
            
        case .physicsOne:
            courseSectionVC = coursesStoryboard.instantiateViewController(withIdentifier: "physicsOneCalculatorListTVC")
        case .physicsTwo:
            courseSectionVC = coursesStoryboard.instantiateViewController(withIdentifier: "physicsTwoCalculatorListTVC")
        }
        
        addChildViewController(courseSectionVC)
        
        courseContainerView.addSubview(courseSectionVC.view)
        courseSectionVC.view.pinToView(courseContainerView)
    }
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
