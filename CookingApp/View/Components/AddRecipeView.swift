//
//  AddRecipeView.swift
//  CookingApp
//
//  Created by simge on 16.11.2022.
//

import SwiftUI

struct AddRecipeView: View {
   
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }
                
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category) //saved category type
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                    
                }
                
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                    
                }
                
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                    
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem {
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeDetailView(recipe: recipesVM.recipes.sorted { $0.datePublished > $1.datePublished } [0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveRecipe() //**
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        .disabled(name.isEmpty)
                    }
                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
    }
}

//save recipe
extension AddRecipeView {
    private func saveRecipe() {
        
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        let datePublished = dateFormatter.string(from: now)
        
        
        //saved from input files
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, category: selectedCategory.rawValue, directions: directions, datePublished: datePublished, url: "")
        
        recipesVM.addRecipe(recipe: recipe)
    }
}
