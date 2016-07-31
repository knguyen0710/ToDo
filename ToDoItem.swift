//
//  ToDoItem.swift
//  ToDo
//
//  Created by Kyna Nguyen on 7/30/16.
//  Copyright © 2016 Kyna Nguyen. All rights reserved.
//

import Foundation

struct ToDoItem {
    let title: String
    let itemDescription: String?
    let timestamp: Double?
    
    init(title: String, itemDescription: String? = nil, timestamp: Double? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
    }
}