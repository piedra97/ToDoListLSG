//
//  DetailToDoItemViewController.swift
//  ToDoListLSG
//
//  Created by Alumne on 18/03/2019.
//  Copyright © 2019 Alumne. All rights reserved.
//

import UIKit

class DetailToDoItemViewController: UIViewController {

    @IBOutlet weak var dateToDo: UILabel!
    @IBOutlet weak var nameToDo: UILabel!
    
    var itemToWork:ToDoItem?
    
    
    @IBAction func completed(_ sender: UISwitch) {
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if let currentItemToDo = itemToWork {
            dateToDo.text = DateFormatter().string(from: currentItemToDo.creatioonDate)
            nameToDo.text = currentItemToDo.name
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
