//
//  Notes.swift
//  ToDo
//
//  Created by Alexandra on 7/9/18.
//  Copyright © 2018 Montgomerys Designs. All rights reserved.
//

import Foundation
import RealmSwift

class Notes: Object {
    @objc dynamic var text: String = ""
    @objc dynamic var textView : String = " "
}
