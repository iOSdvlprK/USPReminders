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
}
