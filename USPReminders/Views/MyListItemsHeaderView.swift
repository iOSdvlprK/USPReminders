//
//  MyListItemsHeaderView.swift
//  USPReminders
//
//  Created by joe on 11/14/25.
//

import SwiftUI

struct MyListItemsHeaderView: View {
    let name: String
    let count: Int
    let color: Color
    
    var body: some View {
        HStack {
            Text(name)
                .font(.system(size: 28))
                .fontWeight(.bold)
                .foregroundStyle(color)
                .padding()
            
            Spacer()
            
            Text("\(count)")
                .font(.system(size: 32))
                .foregroundStyle(color)
                .padding()
        }
    }
}

#Preview {
    MyListItemsHeaderView(name: "Groceries", count: 6, color: Color.green)
}
