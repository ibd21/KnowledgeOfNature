//
//  uEqualVC.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/21/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

class uEqualVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSolveButton()
        addClearAllButton()
        configureTapGesture()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var gravityTF: UITextField!
    @IBOutlet weak var massOneTF: UITextField!
    @IBOutlet weak var massTwoTF: UITextField!
    @IBOutlet weak var radiusTF: UITextField!
    
    @IBOutlet weak var answerBox: UITextView!
    @IBOutlet weak var setUpBox: UITextView!
    
    var a = 0.0;
    var b = 0.0;
    var c = 0.0;
    var d = 0.0;
    var answer = 0.0;
    
    func addSolveButton() {
        let btn = UIButton.createSolveButton()
        view.addSubview(btn)
        btn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btn.widthAnchor.constraint(equalToConstant: 100),
            btn.heightAnchor.constraint(equalToConstant: 25),
            btn.leadingAnchor.constraint(equalTo: radiusTF.leadingAnchor),
            btn.topAnchor.constraint(equalTo: view.topAnchor, constant:244)
            ])
        btn.addTarget(self, action: #selector(uEqualVC.btnAction(_ :)), for: .touchUpInside)
    }
    
    func addClearAllButton() {
        let btn2 = UIButton.createClearAllButton()
        view.addSubview(btn2)
        btn2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btn2.widthAnchor.constraint(equalToConstant: 100),
            btn2.heightAnchor.constraint(equalToConstant: 25),
            btn2.trailingAnchor.constraint(equalTo: radiusTF.trailingAnchor),
            btn2.topAnchor.constraint(equalTo: view.topAnchor, constant: 244)
            ])
        btn2.addTarget(self, action: #selector(uEqualVC.btnClearAction(_ :)), for: .touchUpInside)
    }
    
    
    
    @objc func btnAction(_ sender: UIButton!) {
        if gravityTF.text == String("") {
            gravityTF.text = String("0.0")
        }
        if massOneTF.text == String("") {
            massOneTF.text = String("0.0")
        }
        if massTwoTF.text == String("") {
            massTwoTF.text = String("0.0")
        }
        if radiusTF.text == String("") {
            radiusTF.text = String("0.0")
        }
        
        a = Double(gravityTF.text!)!
        b = Double(massOneTF.text!)!
        c = Double(massTwoTF.text!)!
        d = Double(radiusTF.text!)!
        
        answer = ( -(a * b * c) / d)
        
        answerBox.text = "U = \(answer)"
        setUpBox.text = "Gravitation Potential = ( Gravity Constant * Mass of Planet * Mass of Planet ) / Radius \n G.P. = ( \(a) * \(b) * \(c) ) / \(d) \nG.P. = \(answer)"
    }
    
    @objc func btnClearAction(_ sender: UIButton!) {
        
        gravityTF.text = ""
        massTwoTF.text = ""
        massOneTF.text = ""
        radiusTF.text = ""
        
        
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(uEqualVC.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
}

extension uEqualVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
