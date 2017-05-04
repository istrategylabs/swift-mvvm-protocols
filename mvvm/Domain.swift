//
//  Domain.swift
//  mvvm
//
//  Created by Thomas Degry on 12/16/16.
//  Copyright © 2016 Thomas Degry. All rights reserved.
//

import Foundation

enum DomainStatus {
    case Available
    case Taken
    case Other
}

struct Domain {
    var domainName: String
    var domainStatus: DomainStatus
}
