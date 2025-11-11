//
//  MyListViewModel.swift
//  USPReminders
//
//  Created by joe on 11/10/25.
//

import SwiftUI
import CoreData

struct MyListViewModel: Identifiable {
    private let myList: MyList
    
    init(myList: MyList) {
        self.myList = myList
    }
    
    var id: NSManagedObjectID {
        myList.objectID
    }
    
    var name: String {
        myList.name ?? ""
    }
    
    var color: Color {
        Color(myList.color ?? .clear)
    }
    
    // 2. If you ever need to update the name/color from SwiftUI
    mutating func update(name: String) {
        myList.name = name
    }
    mutating func update(color: NSColor) {
        myList.color = color
    }
}

// 1. Make it Equatable for free diffing
extension MyListViewModel: Equatable {
    static func == (lhs: MyListViewModel, rhs: MyListViewModel) -> Bool {
        lhs.id == rhs.id
    }
}
