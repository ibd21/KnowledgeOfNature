//
//  i_sphere_VC.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/21/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

class i_sphere_VC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        addClearAllButton()
        addSolveButton()
        configureTapGesture()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var massTF: UITextField!
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
        btn.addTarget(self, action: #selector(i_sphere_VC.btnAction(_ :)), for: .touchUpInside)
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
        btn2.addTarget(self, action: #selector(i_sphere_VC.btnClearAction(_ :)), for: .touchUpInside)
    }
    
    @objc func btnAction(_ sender: UIButton!) {
        if massTF.text == String("") {
            massTF.text = String("0.0")
        }
        if radiusTF.text == String("") {
            radiusTF.text = String("0.0")
        }
        
        a = Double(massTF.text!)!
        b = Double(radiusTF.text!)!
        
        
        answer =  ( 2 * a * pow(b, 2)) / 5
        
        answerBox.text = "I(sphere) = \(answer)"
        
        setUpBox.text = "I = (2 * Mass * Radius^2) / 5\nI = ( 2 * \(a) * \(b)^2 )/ 5\nI = \(answer)"
    }
    
    
    @objc func btnClearAction(_ sender: UIButton!) {
        massTF.text = ""
        radiusTF.text = ""
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(i_sphere_VC.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
}

extension i_sphere_VC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
