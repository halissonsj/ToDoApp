//
//  ToDoApp.swift
//  ToDo
//
//  Created by Halisson da Silva Jesus on 14/04/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
