//
//  physicsTwoCalculatorListTVC.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/27/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

class physicsTwoCalculatorListTVC: UITableViewController {
    
    let cellIdentifiers = ["PhysicsTwoMultCell"]
    let sectionIdentifiers = ["Physics Two"]

   
    
    let physOneCalcMult: [(String, MultiCalcOneType)] = [("Electric Charge ", .electricCharge), ("Electric Potential", .electricPotential), ("Electric Current", .electricCurrent), ("Magnetism", .magnetism)]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionIdentifiers.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionIdentifiers[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return physOneCalcMult.count
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

        default:
            break
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let calculatorMultiViewController = segue.destination as? CalculatorTableViewController {
            let selectedRow = tableView.indexPathForSelectedRow!.row
            calculatorMultiViewController.multiCalcType = physOneCalcMult[selectedRow].1
        } else {
            
        }
    }
}
