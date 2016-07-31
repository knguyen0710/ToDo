//
//  ToDoItemTests.swift
//  ToDo
//
//  Created by Kyna Nguyen on 7/30/16.
//  Copyright © 2016 Kyna Nguyen. All rights reserved.
//

@testable import ToDo
import XCTest

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_ShouldSetTitle() {
//    The underscore denotes that the return value does not matter - it is a nonfailable initializer
//        _ = ToDoItem(title: "Test Title")
        
        let item = ToDoItem(title: "Test Title")
        XCTAssertEqual(item.title, "Test Title", "Initializer should set the itme title")
    }

    func testInit_ShouldTakeTitleAndDescription() {
       let item = ToDoItem(title: "Test Title", itemDescription: "Test description")
        XCTAssertEqual(item.itemDescription, "Test description", "Initializer should set the itme description")
    }
    
    func testInit_ShouldSetTitleAndDescriptionAndTimestamp() {
        let item = ToDoItem(title: "Test title", itemDescription: "Test Description", timestamp: 0.0)
        
        XCTAssertEqual(0.0, item.timestamp, "Initializer should set the timestamp")
    }
}