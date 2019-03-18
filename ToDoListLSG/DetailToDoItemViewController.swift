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
    @IBOutlet weak var hourToDo: UILabel!
    var itemToWork:ToDoItem? = nil
    
    @IBAction func completed(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
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
