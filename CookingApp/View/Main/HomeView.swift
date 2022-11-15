//
//  HomeView.swift
//  CookingApp
//
//  Created by simge on 15.11.2022.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: Recipe.allRecipe)
                    .searchable(text: $searchText, prompt: "search recipe...")
            }
            .navigationTitle("All Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
