//
//  DomainViewModel.swift
//  mvvm
//
//  Created by Thomas Degry on 12/16/16.
//  Copyright © 2016 Thomas Degry. All rights reserved.
//

import UIKit

class DomainViewModel: CellRepresentable {
    var domain: Domain
    var rowHeight: CGFloat = 60
    
    var status: String {
        switch domain.domainStatus {
        case .Available:
            return "Available"
        case .Taken:
            return "Taken"
        case .Other:
            return "Other"
        }
    }
    
    init(domain: Domain) {
        self.domain = domain
    }
    
    func cellInstance(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        // Dequeue a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "DomainCell", for: indexPath) as! DomainTableViewCell
        
        // Pass ourselves (the view model) to setup the cell
        cell.setup(vm: self)
        
        // Return the cell
        return cell
    }
}
