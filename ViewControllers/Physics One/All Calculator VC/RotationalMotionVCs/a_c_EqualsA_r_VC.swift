//
//  a_c_EqualsA_r_VC.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/21/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

class a_c_EqualsA_r_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addClearAllButton()
        addSolveButton()
        configureTapGesture()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var velocityTF: UITextField!
    @IBOutlet weak var radiusTF: UITextField!
    @IBOutlet weak var answerBox: UITextView!
    @IBOutlet weak var setUpBox: UITextView!
    
    
    var a = 0.0;
    var b = 0.0;
    var answer = 0.0;
    
    
    func addSolveButton() {
        let btn = UIButton.createSolveButton()
        view.addSubview(btn)
        btn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btn.widthAnchor.constraint(equalToConstant: 100),
            btn.heightAnchor.constraint(equalToConstant: 30),
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btn.topAnchor.constraint(equalTo: view.topAnchor, constant:200)
            ])
        btn.addTarget(self, action: #selector(a_c_EqualsA_r_VC.btnAction(_ :)), for: .touchUpInside)
    }
    
    func addClearAllButton() {
        let btn2 = UIButton.createClearAllButton()
        view.addSubview(btn2)
        btn2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btn2.widthAnchor.constraint(equalToConstant: 100),
            btn2.heightAnchor.constraint(equalToConstant: 30),
            btn2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btn2.topAnchor.constraint(equalTo: view.topAnchor, constant: 238)
            ])
        btn2.addTarget(self, action: #selector(a_c_EqualsA_r_VC.btnClearAction(_ :)), for: .touchUpInside)
    }
    
    @objc func btnAction(_ sender: UIButton!) {
        if velocityTF.text == String("") {
            velocityTF.text = String("0.0")
        }
        if radiusTF.text == String("") {
            radiusTF.text = String("0.0")
        }
        
        a = Double(velocityTF.text!)!
        b = Double(radiusTF.text!)!
        
        
        answer = (pow(a, 2)) / b
        
        answerBox.text = "Acceleration = \(answer)"
        
        setUpBox.text = "Acceleration = Velocity ^2 / Radius\nAcceleration = \(a)^2 / \(b)\nAcceleration = \(answer)"
    }
    
    
    
    @objc func btnClearAction(_ sender: UIButton!) {
        velocityTF.text = ""
        radiusTF.text = ""
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(a_c_EqualsA_r_VC.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
}

extension a_c_EqualsA_r_VC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
