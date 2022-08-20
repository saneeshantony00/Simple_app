//
//  sanHomeApp.swift
//  sanHome
//
//  Created by saneesh antony on 2022-08-20.
//

import SwiftUI

@main
struct sanHomeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
