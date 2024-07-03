//
//  UnderstandingCoreDataApp.swift
//  UnderstandingCoreData
//
//  Created by Buhle Radzilani on 2024/07/03.
//

import SwiftUI

@main
struct UnderstandingCoreDataApp: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
