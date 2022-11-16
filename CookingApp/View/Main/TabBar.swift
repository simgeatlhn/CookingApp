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
            
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "menucard")
                    
                }
            
            NewRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus.app")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
