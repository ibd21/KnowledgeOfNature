//
//  UITextField+Extensions.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/25/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

extension UITextField {
    
    class func velocityAvgTF() -> UITextField{
        let tf = UITextField()
        tf.placeholder = "Average Velocity v(avg)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func velocityInitialTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Initial Velocity v(i)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func velocityTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Velocity v"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func xDistanceDeltaTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Change in Distance x"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func xDistanceInitialTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Initial Distnace x(i)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func xDistanceTF()  -> UITextField{
        let tf = UITextField()
        tf.placeholder = "Distance x"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func bigRRadiusTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Radius R"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func littlerRadius()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Radius r"
        tf.textAlignment = .center
         tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func yDistance()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Distance y"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func lengthLTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Length L"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func hHeightTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Height h"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func aAccelerationTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Acceleration a"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func accelerationACTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Acceleration a(c)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func accelerationATOTTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Acceleration a(tot)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func accelerationARTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Acceleration a(r)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func accelerationATTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Acceleration a(t)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func accelerationACMTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Acceleration a(cm)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func accelerationAAvgTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Acceleration a(avg)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func tTimeTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Time t"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func energyETF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Energy E"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func kineticEnergyKTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Kinetic Energy K"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func kRotKineticEnergyTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Kinetic Energy K(rot)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func kCMKineticEnergyTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Kinetic Energy K(cm)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func pMomentumTf()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Momentum p"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func powerPTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Power P"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func powerInitialPoTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Initial Power P"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func periodTTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Period T"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func angularVelocityTf() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Angular Velocity"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
        
    }
    class func alphaTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Alpha"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func thetaTF() -> UITextField{
        let tf = UITextField()
        tf.placeholder = "Theta"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func thetaInitialTf() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Initial Theta"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func torqueTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Torque"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func rhoTf() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Rho"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func volumeVTf() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Volume V"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func inertiaTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Inertia I"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func inertiaPointTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Inertia I(point)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func inertiaHoopTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Inertia I(hoop)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func inertiaDiskTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Inertia I(disk)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func inertiaShellTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Inertia I(shell)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func inertiaSphereTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Inertia I(sphere)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func inertiaRodCenterTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Inertia I(rod center)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func inertiaRodEndTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Inertia I(rod end)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func potentialEnergyUTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Potential Energy U"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func potentialEnergyUsTF()  -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Potential Energy U(s)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    class func potentialEnergyUgTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Potential Energy U(g)"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
    
    class func forceTF()  -> UITextField {
        let tf = UITextField()
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.placeholder = "Force F"
        tf.layer.cornerRadius = 10
        return tf
    }
    class func massTF() -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Mass m"
        tf.textAlignment = .center
        tf.backgroundColor = #colorLiteral(red: 0.9830765128, green: 0.9772321582, blue: 0.9875689149, alpha: 1)
        tf.layer.cornerRadius = 10
        return tf
    }
     
}
