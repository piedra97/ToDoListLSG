//
//  ToDoItemsManager.swift
//  ToDoListLSG
//
//  Created by Alumne on 11/03/2019.
//  Copyright © 2019 Alumne. All rights reserved.
//

import Foundation

class ToDoItemsManager{
    
    var items:[ToDoItem]=[ToDoItem]()
    
    func addItem(item: ToDoItem){
        self.items.append(item)
    }
    
    func deleItem(index: Int){
        self.items.remove(at: index)
    }
    
    func markItemsAsCompleted(itemIndex: Int){
        self.items[itemIndex].markAsCompleted()
    }
}
