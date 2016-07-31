//
//  ItemManager.swift
//  ToDo
//
//  Created by Kyna Nguyen on 7/31/16.
//  Copyright © 2016 Kyna Nguyen. All rights reserved.
//

import Foundation

// This class will manage the entire list of to-do items, including get, add, and removal of items. This class needs to determine which tasks are completed though how it's actually presented is up to the view controller.
class ItemManager {
// use 'var' (instead of 'let') keyword since the count will change
    var toDoCount: Int { return toDoItems.count }
    var doneCount: Int { return doneItems.count }
//    created as private to restrict the use of the entity to this source file alone - it hides implementation details
    private var toDoItems = [ToDoItem]()
    private var doneItems = [ToDoItem]()
    
    func addItem(item: ToDoItem) {
        if !toDoItems.contains(item) {
            toDoItems.append(item)
        }
    }
    
    func itemAtIndex(index: Int) -> ToDoItem {
        return toDoItems[index]
    }
    
    func checkItemAtIndex(index: Int) {
        let item = toDoItems.removeAtIndex(index)
        doneItems.append(item)
    }
    
    func doneItemAtIndex(index: Int) -> ToDoItem {
        return doneItems[index]
    }
    
    func removeAllItems() {
        toDoItems.removeAll()
        doneItems.removeAll()
    }
}