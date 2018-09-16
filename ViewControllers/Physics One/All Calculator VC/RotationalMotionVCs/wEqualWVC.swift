//
//  wEqualWVC.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/21/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

class wEqualWVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSolveButton()
        addClearAllButton()
        configureTapGesture()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBOutlet weak var angularTF: UITextField!
    @IBOutlet weak var alphaTF: UITextField!
    @IBOutlet weak var timeTF: UITextField!
    
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
            btn.leadingAnchor.constraint(equalTo: timeTF.leadingAnchor),
            btn.topAnchor.constraint(equalTo: view.topAnchor, constant:244)
            ])
        btn.addTarget(self, action: #selector(wEqualWVC.btnAction(_ :)), for: .touchUpInside)
    }
    
    func addClearAllButton() {
        let btn2 = UIButton.createClearAllButton()
        view.addSubview(btn2)
        btn2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btn2.widthAnchor.constraint(equalToConstant: 100),
            btn2.heightAnchor.constraint(equalToConstant: 25),
            btn2.trailingAnchor.constraint(equalTo: timeTF.trailingAnchor),
            btn2.topAnchor.constraint(equalTo: view.topAnchor, constant: 244
            )
            ])
        btn2.addTarget(self, action: #selector(wEqualWVC.btnClearAction(_ :)), for: .touchUpInside)
    }
    
    @objc func btnAction(_ sender: UIButton!) {
        
        if angularTF.text == String("") {
            angularTF.text = String("0.0")
        }
        if alphaTF.text == String("") {
            alphaTF.text = String("0.0")
        }
        if timeTF.text == String("") {
            timeTF.text = String("0.0")
        }
        
        a = Double(angularTF.text!)!
        b = Double(alphaTF.text!)!
        c = Double(timeTF.text!)!
        
        answer = a + b * c
        
        answerBox.text = "ω = \(answer)"
        setUpBox.text = "Angular Velocity = Inital Angular Velocity + Alpha * Time\nAngular Velocity = \(a) + \(b) * \(c)\nFinal = \(answer)"
        
    }
    
    
    @objc func btnClearAction(_ sender: UIButton!) {
        angularTF.text = ""
        timeTF.text = ""
        alphaTF.text = ""
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(wEqualWVC.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
}

extension wEqualWVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
