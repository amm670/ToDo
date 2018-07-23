//
//  Item.swift
//  ToDo
//
//  Created by Alexandra on 6/14/18.
//  Copyright © 2018 Montgomerys Designs. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var text : String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
