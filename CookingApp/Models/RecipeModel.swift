//
//  RecipeModel.swift
//  CookingApp
//
//  Created by simge on 15.11.2022.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case main = "Main"
    case dessert = "Dessert"
    case drinks = "Drink"
}


struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let category: Category.RawValue
    let directions: String
    let datePublished: String
    let url: String
}

