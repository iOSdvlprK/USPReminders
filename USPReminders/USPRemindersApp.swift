//
//  USPRemindersApp.swift
//  USPReminders
//
//  Created by joe on 11/1/25.
//

import SwiftUI

@main
struct USPRemindersApp: App {
    var body: some Scene {
        WindowGroup {
            let viewContext = CoreDataManager.shared.persistentContainer.viewContext
            HomeScreen()
                .environment(\.managedObjectContext, viewContext)
        }
    }
}
