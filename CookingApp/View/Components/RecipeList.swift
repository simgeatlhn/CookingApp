//
//  RecipeList.swift
//  CookingApp
//
//  Created by simge on 15.11.2022.
//

import SwiftUI

struct RecipeList: View {
    
    var recipes: [Recipe]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing:10)], spacing: 16) {
                ForEach(recipes) { recipe in
                    RecipeCard(recipe: recipe)
                    
                }
            }
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            RecipeList(recipes: Recipe.allRecipe)
        }
    }
}
