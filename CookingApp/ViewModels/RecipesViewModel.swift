//
//  RecipesViewModel.swift
//  CookingApp
//
//  Created by simge on 16.11.2022.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private (set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.allRecipe
    }
    
    //save recipe
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
