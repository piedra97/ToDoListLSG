//
//  ToDoItem.swift
//  ToDoListLSG
//
//  Created by Alumne on 11/03/2019.
//  Copyright © 2019 Alumne. All rights reserved.
//

import Foundation

class ToDoItem{
    
    var name:String
    var completed:Bool
    var creatioonDate:Date
    var completitionDate:Date?
    
    init(name:String){
        self.name = name
        self.completed = false
        self.creatioonDate=Date()
    }
    
    func markAsCompleted(){
        self.completed=(completed ? false:true)
        if(self.completed){
            self.completitionDate=Date()
        }else{
            self.completitionDate=nil
        }
    }
}
