//
//  HomeScreen.swift
//  USPReminders
//
//  Created by joe on 11/1/25.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            SideBarView()
            Text("MyListItems")
        }
    }
}

#Preview {
    HomeScreen()
}
