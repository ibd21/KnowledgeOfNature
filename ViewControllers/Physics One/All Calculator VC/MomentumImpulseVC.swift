//
//  MomentumImpulseVC.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/20/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

class MomentumImpulseVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSolveButton()
        addClearAllButton()
        configureTapGesture()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBOutlet weak var massTF: UITextField!

    
    
    @IBOutlet weak var answerBox: UITextView!
    @IBOutlet weak var setUpBox: UITextView!
    @IBOutlet weak var velocityTF: UITextField!
    
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
        btn.addTarget(self, action: #selector(MomentumImpulseVC.buttonAction(_ :)), for: .touchUpInside)
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
        btn2.addTarget(self, action: #selector(MomentumImpulseVC.btnClearAction(_ :)), for: .touchUpInside)
    }
    
    @objc func buttonAction(_ sender: UIButton!) {
        
        if massTF.text == String("") {
            massTF.text = String("0.0")
        }
        if velocityTF.text == String("") {
            velocityTF.text = String("0.0")
        }
        
        a = Double(massTF.text!)!
        b = Double(velocityTF.text!)!
        
        answer = a * b
        
        answerBox.text = "p = \(answer)"
        setUpBox.text = "Momentum = Mass * Velocity\nMomentum = \(a) * \(b)\nMomentum = \(answer)"
        
    }

    
    @objc func btnClearAction(_ sender: UIButton!) {
        massTF.text = String("")
        velocityTF.text = String("")
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(MomentumImpulseVC.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
}

extension MomentumImpulseVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
