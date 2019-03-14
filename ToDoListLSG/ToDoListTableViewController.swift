//
//  ToDoListTableViewController.swift
//  ToDoListLSG
//
//  Created by Alumne on 14/03/2019.
//  Copyright © 2019 Alumne. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {

    var toDoItemManager: ToDoItemsManager = ToDoItemsManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDoItemManager.items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath)

        let item: ToDoItem = toDoItemManager.items[indexPath.row]
        
        cell.textLabel?.text = item.name
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm"
        cell.detailTextLabel?.text = dateFormatter.string(from: item.creatioonDate)
        
        if item.completed{
            cell.accessoryType = UITableViewCell.AccessoryType.checkmark
        } else {
            cell.accessoryType = UITableViewCell.AccessoryType.none
        }
        
        return cell
    }

}
