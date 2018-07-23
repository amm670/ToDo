//
//  SwipeTableViewController.swift
//  ToDo
//
//  Created by Alexandra on 6/26/18.
//  Copyright © 2018 Montgomerys Designs. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {
    
    var cell: UITableViewCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80.0
    }
    
    //TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            // handle action by updating model with deletion
            self.updateModel(at: indexPath)
        }
        
        let notesAction = SwipeAction(style: .destructive, title: "Notes") {action, indexPath in
            //handle action by going to notes page
            self.performSegue(withIdentifier: "goToNotes", sender: nil)
        }
        // customize the action appearance
        deleteAction.image = UIImage(named: "delete")
        notesAction.image = UIImage(named: "compose")
        notesAction.backgroundColor = .green

        return [deleteAction, notesAction]
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
        var options = SwipeTableOptions()
        options.expansionStyle = .destructive
        return options
    }
    
    func updateModel(at indexPath: IndexPath) {
        // Update our data model.
        print("Item deleted from superclass")
    }
    
}

