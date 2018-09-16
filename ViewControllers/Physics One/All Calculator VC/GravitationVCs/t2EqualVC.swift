//
//  t2EqualVC.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/21/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

class t2EqualVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSolveButton()
        addClearAllButton()
        configureTapGesture()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var gravityTF: UITextField!
    @IBOutlet weak var massTF: UITextField!
    @IBOutlet weak var accelerationTF: UITextField!
    @IBOutlet weak var answerBox: UITextView!
    @IBOutlet weak var setUpBox: UITextView!
    
    
    
    var a = 0.0;
    var b = 0.0;
    var c = 0.0;
    var answer = 0.0;
    
    func addSolveButton() {
        let btn = UIButton.createSolveButton()
        view.addSubview(btn)
        btn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btn.widthAnchor.constraint(equalToConstant: 100),
            btn.heightAnchor.constraint(equalToConstant: 25),
            btn.leadingAnchor.constraint(equalTo: accelerationTF.leadingAnchor),
            btn.topAnchor.constraint(equalTo: view.topAnchor, constant:244)
            ])
        btn.addTarget(self, action: #selector(t2EqualVC.btnAction(_ :)), for: .touchUpInside)
    }
    
    func addClearAllButton() {
        let btn2 = UIButton.createClearAllButton()
        view.addSubview(btn2)
        btn2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btn2.widthAnchor.constraint(equalToConstant: 100),
            btn2.heightAnchor.constraint(equalToConstant: 25),
            btn2.trailingAnchor.constraint(equalTo: accelerationTF.trailingAnchor),
            btn2.topAnchor.constraint(equalTo: view.topAnchor, constant: 244
            )
            ])
        btn2.addTarget(self, action: #selector(t2EqualVC.btnClearAction(_ :)), for: .touchUpInside)
    }
    
    @objc func btnAction(_ sender: UIButton!) {
        
        if gravityTF.text == String("") {
            gravityTF.text = String("0.0")
        }
        if massTF.text == String("") {
            massTF.text = String("0.0")
        }
        if accelerationTF.text == String("") {
            accelerationTF.text = String("0.0")
        }
        
        a = Double(gravityTF.text!)!
        b = Double(massTF.text!)!
        c = Double(accelerationTF.text!)!
        
        answer = ((4 * .pi * .pi) / a * b ) * pow(c, 3)
        
        answerBox.text = "T^2 = \(answer)"
        setUpBox.text = "Period^2 = (4 * Pi^2 / Gravitation Constant * Mass of Planet) * Acceleration^3 \n P^2 = (4 * Pi^2 / \(a) * \(b)) * \(c)^3 \nP^2 = \(answer) "
        
    }
    
    @objc func btnClearAction(_ sender: UIButton!) {
        gravityTF.text = ""
        massTF.text = ""
        accelerationTF.text = ""
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(t2EqualVC.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
}

extension t2EqualVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
