//
//  Category.swift
//  ToDo
//
//  Created by Alexandra on 6/14/18.
//  Copyright © 2018 Montgomerys Designs. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var colour: String = ""
    let items = List<Item>()
}
