//
//  kcHerosMultiApp.swift
//  kcHerosMulti
//
//  Created by Marta Maquedano on 15/3/23.
//

import SwiftUI

@main
struct kcHerosMultiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            /*ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
             */
        }
    }
}
