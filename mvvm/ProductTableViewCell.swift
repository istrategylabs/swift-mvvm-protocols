//
//  ProductTableViewCell.swift
//  mvvm
//
//  Created by Thomas Degry on 12/16/16.
//  Copyright © 2016 Thomas Degry. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    func setup(vm: ProductViewModel) {
        self.textLabel?.text = vm.product.name
        self.detailTextLabel?.text = vm.price
    }
}
