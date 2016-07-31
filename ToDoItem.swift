//
//  ToDoItem.swift
//  ToDo
//
//  Created by Kyna Nguyen on 7/30/16.
//  Copyright © 2016 Kyna Nguyen. All rights reserved.
//

import Foundation

// This struct will represent each individual to-do item on the list. We make it 'equatable' so that we can make better assertions about our functions.
struct ToDoItem : Equatable {
    let title: String
    let itemDescription: String?
    let timestamp: Double?
    let location: Location?
    
    init(title: String, itemDescription: String? = nil, timestamp: Double? = nil, location: Location? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
        self.location = location
    }
}

// This makes the ToDoItem struct confrom to the Equatable protocol. It needs to be defined here, outside of the struct, in the global scope.
func ==(lhs: ToDoItem, rhs: ToDoItem) -> Bool {
//    if Location struct was not equatable, this would be:
//  if  lhs.location?.name != rhs.location?.name { }
    if lhs.location != rhs.location {
        return false
    }
    
    if lhs.timestamp != rhs.timestamp {
        return false
    }
    
    if lhs.itemDescription != rhs.itemDescription {
        return false
    }
    
    if lhs.title != rhs.title {
        return false
    }
    return true
}