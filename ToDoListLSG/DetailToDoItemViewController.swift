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
    
    
    @IBOutlet weak var switchButton: UISwitch!
    
    @IBAction func switched(_ sender: UISwitch) {
        if sender.isOn {
            itemToWork?.markAsCompleted()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        switchButton.isOn = false
        if let currentItemToDo = itemToWork {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd/MM/yyyy HH:mm"
            dateToDo.text = dateFormatter.string(from: currentItemToDo.creatioonDate)
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
