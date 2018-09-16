//
//  SIPrefixesTVC.swift
//  physicsApp5
//
//  Created by Isabel Doran on 8/29/18.
//  Copyright © 2018 Isabel Doran. All rights reserved.
//

import UIKit

class SIPrefixesTVC: UITableViewController {
    
    let cellID = ["siPrefixesCell"]
    let sectionID = ["SI Prefixes & Their Symbols"]
    
    let sectionFillers = ["10^15         peta          P", "10^12         tera           T", "10^9           giga          G", "10^6          mega         M", "10^3            kilo           k", "10^2           hecto         h", "10^1           deka         da ", "10^-1          deci          d ", "10^-2          centi           c", "10^-3           milli          m ", "10^-6          micro        µ", "10^-9          nano        n ", "10^-12         pico         p", "10^-15         femto       f"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionFillers.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "SI Prefixes & Their Symbols"
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view:UIView, forSection: Int) {
        if let tableViewHeaderFooterView = view as? UITableViewHeaderFooterView {
            tableViewHeaderFooterView.textLabel?.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            tableViewHeaderFooterView.textLabel?.textAlignment = .center
            tableViewHeaderFooterView.textLabel?.font = UIFont(name: "SF-Pro-Display-Light.otf", size: 40)
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "siPrefixesCell", for: indexPath)
        cell.textLabel?.textAlignment = .center
        cell.textLabel?.textColor = #colorLiteral(red: 0.8352941176, green: 0.4117647059, blue: 0.4705882353, alpha: 1)
        cell.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        cell.layer.cornerRadius = 12
        cell.textLabel?.font = UIFont(name: "SF-Pro-Display-Medium.otf", size: 24)
        
        // Configure the cell...
        cell.textLabel?.text = sectionFillers[indexPath.row]
        return cell
    }
    
    
}
