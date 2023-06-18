//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Santiago Varela on 18/06/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
