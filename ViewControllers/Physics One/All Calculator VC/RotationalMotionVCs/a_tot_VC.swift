//
//  a_tot_VC.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/21/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

class a_tot_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addClearAllButton()
        addSolveButton()
        configureTapGesture()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBOutlet weak var accelerationRTF: UITextField!
    @IBOutlet weak var accelerationTTF: UITextField!
    @IBOutlet weak var answerBox: UITextView!
    @IBOutlet weak var setUpBox: UITextView!
    
    
    var a = 0.0;
    var b = 0.0;
    var answer = 0.0;
    var answerSqr = 0.0;
    
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
        btn.addTarget(self, action: #selector(a_tot_VC.btnAction(_ :)), for: .touchUpInside)
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
        btn2.addTarget(self, action: #selector(a_tot_VC.btnClearAction(_ :)), for: .touchUpInside)
    }
    
    
    @objc func btnAction(_ sender: UIButton!) {
        if accelerationRTF.text == String("") {
            accelerationRTF.text = String("0.0")
        }
        if accelerationTTF.text == String("") {
            accelerationTTF.text = String("0.0")
        }
        
        a = Double(accelerationRTF.text!)!
        b = Double(accelerationTTF.text!)!
        
        
        answer = (pow(a, 2)) + (pow(b, 2))
        answerSqr = sqrt(pow(a, 2) + pow(b, 2))
        
        answerBox.text = "a(tot)^2 = \(answer)\na(tot) = \(answerSqr)"
        
        setUpBox.text = "Total Acceleration^2 = Acceleration (r)^2 + Acceleration (t)^2\nTot. Acceleration^2 = \(a)^2 + \(b)^2\nTot. Acceleration^2 = \(answer)"
    }
    
    
    @objc func btnClearAction(_ sender: UIButton!) {
        accelerationTTF.text = ""
        accelerationRTF.text = ""
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(a_tot_VC.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
}

extension a_tot_VC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
