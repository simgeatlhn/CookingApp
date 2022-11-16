//
//  CookingAppApp.swift
//  CookingApp
//
//  Created by simge on 15.11.2022.
//

import SwiftUI

@main
struct CookingAppApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabBar()
                .environmentObject(recipesViewModel)
        }
    }
}
