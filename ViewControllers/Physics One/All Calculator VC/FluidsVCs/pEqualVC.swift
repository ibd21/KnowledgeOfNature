//
//  pEqualVC.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/21/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

class pEqualVC: UIViewController {

override func viewDidLoad() {
    super.viewDidLoad()
    addSolveButton()
    addClearAllButton()
    configureTapGesture()
}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
}

    @IBOutlet weak var initialPowerTF: UITextField!
    @IBOutlet weak var rhoTF: UITextField!
    @IBOutlet weak var heightTF: UITextField!
    
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
        btn.leadingAnchor.constraint(equalTo: heightTF.leadingAnchor),
        btn.topAnchor.constraint(equalTo: view.topAnchor, constant:244)
        ])
    btn.addTarget(self, action: #selector(pEqualVC.btnAction(_ :)), for: .touchUpInside)
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
    btn2.addTarget(self, action: #selector(pEqualVC.btnClearAction(_ :)), for: .touchUpInside)
}

@objc func btnAction(_ sender: UIButton!) {
    
    if initialPowerTF.text == String("") {
        initialPowerTF.text = String("0.0")
    }
    if rhoTF.text == String("") {
        rhoTF.text = String("0.0")
    }
    if heightTF.text == String("") {
        heightTF.text = String("0.0")
    }
    
    a = Double(initialPowerTF.text!)!
    b = Double(rhoTF.text!)!
    c = Double(heightTF.text!)!
    
    answer = a + (b * 9.8 * c)
    
    answerBox.text = "P = \(answer)"
    setUpBox.text = "Power = Initial Power + Rho * Graity Constant * Height\nPower = \(a) + \(b)  * 9.8 * \(c)\nPower = \(answer)"
    
}

@objc func btnClearAction(_ sender: UIButton!) {
    initialPowerTF.text = ""
    heightTF.text = ""
    rhoTF.text = ""
}

private func configureTapGesture() {
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(pEqualVC.handleTap))
    view.addGestureRecognizer(tapGesture)
}

@objc func handleTap() {
    view.endEditing(true)
}

}

extension pEqualVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
