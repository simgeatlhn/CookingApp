//
//  RecipeDetailView.swift
//  CookingApp
//
//  Created by simge on 16.11.2022.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(width: 400 , height: 500)
            .background(.gray)
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black.opacity(0.8))
                
                VStack(alignment: .leading, spacing: 20) {
                    Text(recipe.description)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Ingredients")
                            .foregroundColor(.indigo)
                            .font(.headline)
                            .bold()
                            .foregroundColor(.black)
                        Text(recipe.ingredients)
                    }
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Directions")
                            .foregroundColor(.indigo)
                            .font(.headline)
                            .bold()
                            .foregroundColor(.black)
                        Text(recipe.directions)
                    }
                }
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top) //**
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: Recipe.allRecipe[0])
    }
}
