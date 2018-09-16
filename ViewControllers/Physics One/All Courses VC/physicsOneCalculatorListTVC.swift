//
//  coursePhysicsOneViewController.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/26/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

class physicsOneCalculatorListTVC: UITableViewController {

    let cellIdentifiers = ["PhysicsOneMultCell", "PhysicsOneSingleCell"]
    let sectionIdentifer = ["Physics One: Multiple Formulas", "Physics One: Single Formulas"]
    
    let physOneCalcMult: [(String, MultiCalcOneType)] = [("1D / 2D MOTION", .oneDTwoDMotion), ("CIRCULAR MOTION", .circularMotion), ("ENERGIES", .energies), ("ROTATIONAL MOTION", .rotationalMotion), ("FLUIDS", .fluid), ("GRAVITATION", .gravitation)]
    
    let physOneCalcSingle: [(String, CalculatorType)] = [("NEWTON'S LAWS", .newtonsLaw), ("FRICTION", .frictionVC), ("MOMENTUM & IMPULSE", .momentumImpulseVC)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionIdentifer.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionIdentifer[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return physOneCalcMult.count
        case 1:
            return physOneCalcSingle.count
        default:
            fatalError()
        }
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view:UIView, forSection: Int) {
        if let tableViewHeaderFooterView = view as? UITableViewHeaderFooterView {
            tableViewHeaderFooterView.textLabel?.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            tableViewHeaderFooterView.textLabel?.textAlignment = .center
            tableViewHeaderFooterView.textLabel?.font = UIFont(name: "SF-Pro-Display-Light.otf", size: 40)
        }
    }
    
    
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell
        
        cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifiers[indexPath.section], for: indexPath)

        // Configure the cell...

        cell.textLabel?.textAlignment = .center
        cell.textLabel?.textColor = #colorLiteral(red: 0.8352941176, green: 0.4117647059, blue: 0.4705882353, alpha: 1)
        cell.layer.cornerRadius = 18
        cell.textLabel?.font = UIFont(name: "SF-Pro-Display-Medium.otf", size: 35)
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = physOneCalcMult[indexPath.row].0
        case 1:
           cell.textLabel?.text = physOneCalcSingle[indexPath.row].0
        default:
            break
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let calculatorSingleViewController = segue.destination as? CalculatorContainerViewController {
            let selectedRow = tableView.indexPathForSelectedRow!.row
            calculatorSingleViewController.calculatorType = physOneCalcSingle[selectedRow].1
        } else if let calculatorMultiViewController = segue.destination as? CalculatorTableViewController {
            let selectedRow = tableView.indexPathForSelectedRow!.row
            calculatorMultiViewController.multiCalcType = physOneCalcMult[selectedRow].1
        }
    }
}
