//
//  DomainTableViewCell.swift
//  mvvm
//
//  Created by Thomas Degry on 12/16/16.
//  Copyright © 2016 Thomas Degry. All rights reserved.
//

import UIKit

class DomainTableViewCell: UITableViewCell {
    func setup(vm: DomainViewModel) {
        self.textLabel?.text = vm.domain.domainName
        self.detailTextLabel?.text = vm.status
    }
}
