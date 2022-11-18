//
//  TabBar.swift
//  CookingApp
//
//  Created by simge on 15.11.2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "homekit")
                }
            
            NewRecipeView()
                .tabItem {
                    Label("New Recipe", systemImage: "plus.app")
                }
            
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "menucard")
                }
        }
        .accentColor(.indigo)
    }
}




struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}
