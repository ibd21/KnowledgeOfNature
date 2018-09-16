//
//  bEqualVC.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/21/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

class bEqualVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        addClearAllButton()
        addSolveButton()
        configureTapGesture()
    }
    
    @IBOutlet weak var denistyTF: UITextField!
    @IBOutlet weak var volumeTF: UITextField!
    
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
        btn.addTarget(self, action: #selector(bEqualVC.btnAction(_ :)), for: .touchUpInside)
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
        btn2.addTarget(self, action: #selector(bEqualVC.btnClearAction(_ :)), for: .touchUpInside)
    }
    
    @objc func btnAction(_ sender: UIButton!) {
        if denistyTF.text == String("") {
            denistyTF.text = String("0.0")
        }
        if volumeTF.text == String("") {
            volumeTF.text = String("0.0")
        }
        
        a = Double(denistyTF.text!)!
        b = Double(volumeTF.text!)!
        
        
        answer = a * b * 9.8
        
        answerBox.text = "B = \(answer)"
        
        setUpBox.text = "Magnetic Induction = Density * Volume * Gravity Constant\nM.I. = \(a) * \(b) * 9.8\nM.I. = \(answer) "
    }
    
    @objc func btnClearAction(_ sender: UIButton!) {
        denistyTF.text = ""
        volumeTF.text = ""
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(bEqualVC.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
}

extension bEqualVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
