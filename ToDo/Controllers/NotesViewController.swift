//
//  NotesViewController.swift
//  ToDo
//
//  Created by Alexandra on 7/9/18.
//  Copyright © 2018 Montgomerys Designs. All rights reserved.
//

import UIKit
import RealmSwift

class NotesViewController: UITableViewController {

    @IBOutlet var textView: UITextView!
    let realm = try! Realm()
    var text : String = " "
    var notes: Results<Notes>?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = text
        textView.isEditable = true
        // loadNotes()
        
    }
    
    func save(text: Notes) {
        do {
            try realm.write {
                realm.add(text)
            }
        } catch {
            print("Error saving notes \(error)")
        }
        
        tableView.reloadData()
    }
    
//    func loadNotes() {
//        notes = realm.objects(Notes.self)
//        tableView.reloadData()
//    }

}
