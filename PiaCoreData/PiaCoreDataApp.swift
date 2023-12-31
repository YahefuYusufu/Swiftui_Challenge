//
//  PiaCoreDataApp.swift
//  PiaCoreData
//
//  Created by yusufyakuf on 2023-12-07.
//

import SwiftUI
import SwiftData

@main
struct PiaCoreDataApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
         Item.self,Todo.self,SubStuff.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
