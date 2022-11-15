//
//  RecipeCard.swift
//  CookingApp
//
//  Created by simge on 15.11.2022.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom) {
                        Text(recipe.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 0, y: 0)
                            .padding()
                    }
            }placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity) //**
                    .overlay(alignment: .bottom) {
                        Text(recipe.name)
                            .font(.headline)
                            .bold()
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 0, y: 0)
                            .padding()
                    }
                
            }
        }
        .frame(width: 160, height: 217, alignment: .top)
        .background(.gray)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.allRecipe[0])
    }
}
