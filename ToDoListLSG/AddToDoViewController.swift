//
//  ViewController.swift
//  ToDoListLSG
//
//  Created by Alumne on 11/03/2019.
//  Copyright © 2019 Alumne. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var newItemTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        newItemTextField.delegate = self
        
        /*NotificationCenter.default.addObserver(self, selector: #selector(AddToDoViewController.keyboardWillShow(_:)), name: Notification.Name.UIKeyboardWillShow, object: view.window)
        
        NotificationCenter.default.addObserver(self, selector: #selector(AddToDoViewController.keyboardWillHide(_:)), name: Notification.Name.UIKeyboardWillHide, object: view.window)*/
    }
    
    @objc func keyboardWillShow(_ sender: Notification){
        self.view.frame.origin.y -= 50
    }
    
    @objc func keyboardWillHide(_ sender: Notification){
        self.view.frame.origin.y += 50
    }
   
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        if segue.identifier == "Save Segue" {
            if let tdlvc = segue.destination as? ToDoListTableViewController {
                if let text = newItemTextField.text {
                    if !text.isEmpty {
                        tdlvc.newItem = ToDoItem(name: text)
                    }
                }
            }
        }
    }
    


}

