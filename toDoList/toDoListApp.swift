//
//  toDoListApp.swift
//  toDoList
//
//  Created by Sunny Moon on 8/1/23.
//

import SwiftUI

@main
struct toDoListApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            HomeView().environment(\.managedObjectContext, persistenceController.container.viewContext)        }
    }
}
