//
//  iEqualsVC.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/21/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

class iEqualsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSolveButton()
        addClearAllButton()
        configureTapGesture()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var inertiaTF: UITextField!
    @IBOutlet weak var massTF: UITextField!
    

    
    @IBOutlet weak var answerBox: UITextView!
    @IBOutlet weak var setUpBox: UITextView!
    @IBOutlet weak var heightTF: UITextField!
    
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
            btn.leadingAnchor.constraint(equalTo: heightTF.leadingAnchor),
            btn.topAnchor.constraint(equalTo: view.topAnchor, constant:244)
            ])
        btn.addTarget(self, action: #selector(iEqualsVC.btnAction(_ :)), for: .touchUpInside)
    }
    
    func addClearAllButton() {
        let btn2 = UIButton.createClearAllButton()
        view.addSubview(btn2)
        btn2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btn2.widthAnchor.constraint(equalToConstant: 100),
            btn2.heightAnchor.constraint(equalToConstant: 25),
            btn2.trailingAnchor.constraint(equalTo: heightTF.trailingAnchor),
            btn2.topAnchor.constraint(equalTo: view.topAnchor, constant: 244
            )
            ])
        btn2.addTarget(self, action: #selector(iEqualsVC.btnClearAction(_ :)), for: .touchUpInside)
    }
    
    @objc func btnAction(_ sender: UIButton!) {
        
        if inertiaTF.text == String("") {
            inertiaTF.text = String("0.0")
        }
        if massTF.text == String("") {
            massTF.text = String("0.0")
        }
        if heightTF.text == String("") {
            heightTF.text = String("0.0")
        }
        
        a = Double(inertiaTF.text!)!
        b = Double(massTF.text!)!
        c = Double(heightTF.text!)!
        
        answer = a + (b * pow(c, 2))
        
        answerBox.text = "I = \(answer)"
        setUpBox.text = "Inertia = Inertia(cent. mass) + Mass * Height^2\nInertia = \(a) + \(b) * \(c)^2\nInertia = \(answer)"
        
    }
    
    @objc func btnClearAction(_ sender: UIButton!) {
        inertiaTF.text = ""
        massTF.text = ""
        heightTF.text = ""
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(iEqualsVC.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
}

extension iEqualsVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
