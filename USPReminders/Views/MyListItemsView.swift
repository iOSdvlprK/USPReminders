//
//  MyListItemsView.swift
//  USPReminders
//
//  Created by joe on 11/14/25.
//

import SwiftUI

struct MyListItemsView: View {
    var items: [MyListItemViewModel]
    
    typealias ItemAdded = ((String, Date?) -> Void)?
    
    var onItemAdded: ItemAdded
    
    init(items: [MyListItemViewModel], onItemAdded: ItemAdded = nil) {
        self.items = items
        self.onItemAdded = onItemAdded
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            List {
                ForEach(items, id: \.listItemId) { item in
                    Text(item.title)
                }
                
                AddNewListItemView { title, dueDate in
                    onItemAdded?(title, dueDate)
                }
            }
        }
    }
}

#Preview {
    MyListItemsView(items: [])
}
