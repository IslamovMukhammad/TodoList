//
//  TodoListApp.swift
//  TodoList
//
//  Created by Muhammad Islamov on 17/04/22.
//

import SwiftUI

/*
 
 MVVM Architecture

 Model - data point
 View - UI
 ViewModel - manages Models for View

 */

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
          NavigationView{
            ListView()
          }
        }
    }
}
