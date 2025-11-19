//
//  ListItemCell.swift
//  USPReminders
//
//  Created by joe on 11/19/25.
//

import SwiftUI

struct ListItemCell: View {
    @State private var active: Bool = false
    let item: MyListItemViewModel
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: Constants.Icons.circle)
                .font(.system(size: 14))
                .opacity(0.2)
            
            VStack(alignment: .leading) {
                Text(item.title)
                
                if let dueDate = item.dueDate {
                    Text(dueDate.title)
                        .opacity(0.4)
                        .foregroundStyle(dueDate.isPastDue ? .red : .primary)
                }
            }
            
            Spacer()
            
            if active {
                Image(systemName: Constants.Icons.multiplyCircle)
                    .foregroundStyle(.red)
                
                Image(systemName: Constants.Icons.exclaimationMarkCircle)
                    .foregroundStyle(.purple)
            }
        }
        .contentShape(Rectangle())
        .onHover { value in
            active = value
        }
    }
}

#Preview {
    ListItemCell(item: MyListItemViewModel(myListItem: MyListItem()))
}
