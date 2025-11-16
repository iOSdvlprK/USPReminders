//
//  MyListItemsView.swift
//  USPReminders
//
//  Created by joe on 11/14/25.
//

import SwiftUI

struct MyListItemsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            List(1...10, id: \.self) { index in
                Text("Item \(index)")
            }
            
            AddNewListItemView()
        }
    }
}

#Preview {
    MyListItemsView()
}
