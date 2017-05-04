//
//  ProductViewModel.swift
//  mvvm
//
//  Created by Thomas Degry on 12/16/16.
//  Copyright © 2016 Thomas Degry. All rights reserved.
//

import UIKit

class ProductViewModel: CellRepresentable {
    var product: Product
    var rowHeight: CGFloat = 80
    
    var price: String {
        guard let price = product.price else {
            return "free"
        }
        
        return "$\(price)"
    }
    
    init(product: Product) {
        self.product = product
    }
    
    func cellInstance(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        // Dequeue a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        
        // Pass ourselves (the view model) to setup the cell
        cell.setup(vm: self)
       
        // Return the cell
        return cell
    }
}
