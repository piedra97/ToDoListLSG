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
    var newItem:ToDoItem?
    
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
            cell.backgroundColor = UIColor.green
            /*cell.accessoryType = UITableViewCell.AccessoryType.checkmark*/
        } /*else {
            cell.accessoryType = UITableViewCell.AccessoryType.none */
        
        cell.accessoryType = .detailDisclosureButton
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            toDoItemManager.deleItem(index: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
     }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        toDoItemManager.markItemsAsCompleted(itemIndex: indexPath.row)
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dtdvc = segue.destination as? DetailToDoItemViewController{
            dtdvc.itemToWork = newItem
        }
    }
    
    @IBAction func goBack(segue: UIStoryboardSegue) {
        switch segue.identifier {
        case "Save Segue":
            if let aNewItem = newItem {
                toDoItemManager.addItem(item: aNewItem)
                tableView.reloadData()
            }
        case "Detail Segue":
            tableView.reloadData()
        default:
            break
    }
        
    }
}
