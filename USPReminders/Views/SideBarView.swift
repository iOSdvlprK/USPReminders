//
//  SideBarView.swift
//  USPReminders
//
//  Created by joe on 11/2/25.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Items Count 10")
            
            List(1...5, id: \.self) { index in
                Text("List \(index)")
            }
            
            Spacer()
            
            Button("Add List") {
                
            }
        }
    }
}

#Preview {
    SideBarView()
}
