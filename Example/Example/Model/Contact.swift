//
//  Contact.swift
//  Example
//
//  Created by Enrique Bermúdez on 3/27/19.
//  Copyright © 2019 Enrique Bermúdez. All rights reserved.
//

import Foundation

struct Contact {
    let name:String
    let phone:String
    let address:String
}

extension Contact {
    static func dummyContacts() -> [Contact] {
        return [Contact(name: "Isaiah X. Elliott", phone: "(0112) 552 4476", address: "P.O. Box 259, 245 Ut St."),
                Contact(name: "Forrest J. Dickson", phone: "0814 166 2660", address: "P.O. Box 474, 3353 Netus Rd."),
                Contact(name: "Malcolm Q. Malone", phone: "+3467434232", address: "2135 Eu St.")]
    }
}
