//
//  RecipeModel.swift
//  CookingApp
//
//  Created by simge on 15.11.2022.
//

import Foundation

enum Category: String {
    case breakfast = "Breakfast"
    case souo = "Soup"
    case main = "Main"
    case desser = "Dessert"
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

extension Recipe {
    // array equal to array
    static let allRecipe: [Recipe] = [
        Recipe(
           name: "Turkish Kebabs",
           image: "https://www.allrecipes.com/thmb/dGgkyxJSvQRCpQ2NxZ5R-c-XEYE=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/3588657-785e209b843f4268b8d179fb958e26b6.jpg",
           description: "This is my version of Turkish kebabs which I made 'off the cuff' after searching unsuccessfully for a recipe online. The original sandwiches are made from meat that is pressed into a loaf and grilled on a rotating spit. The meat is shaved off as it gets crispy and then put into a pita sandwich. My recipe calls for thin slices of meat to be marinated and then broiled to get the same effect without a huge rotating grill. Serve in a warmed pita with goat cheese, tzatziki sauce, lettuce, tomatoes, onions, and pepperoncinis.",
           ingredients: "2 large onions, chopped, 2 garlic cloves, crushed, ½ cup olive oil, 2 tablespoons lemon juice, 1 teaspoon dried oregano, 1 teaspoon ground black pepper, ½ teaspoon ground turmeric, 1 pinch curry powder, 1 teaspoon salt, 1 pound beef flank steak, thinly sliced",
           category: "Main",
           directions: "Place the chopped onions in a large ceramic bowl and crush with the bottom of a glass until juice is rendered and onions look translucent. Stir in 2 crushed garlic cloves, 1/2 cup olive oil, 2 tablespoons lemon juice, oregano, 1 teaspoon black pepper, turmeric, curry powder, and 1 teaspoon salt. Mix well; add the sliced beef and toss to coat. Cover the bowl with plastic wrap, and marinate in the refrigerator overnight.Combine the sour cream, 2 tablespoons olive oil, 1 tablespoon lemon juice, 1/2 teaspoon salt, 1/2 teaspoon black pepper, dill, and 1 crushed clove of garlic. Mix well; cover the bowl with plastic wrap and refrigerate overnight.Preheat the oven's broiler and set the oven rack about 6 inches from the heat source.Remove the meat from the marinade mixture, brushing off extra onions. Spread the slices on a baking sheet without overlapping, and salt to taste. Broil about 3 minutes per side or until browned and crispy, turning halfway through cooking.Divide the cooked meat between the pita breads, and drizzle with tzatziki sauce to serve.",
           datePublished: "15-11.22",
           url: "https://www.allrecipes.com/recipe/218488/turkish-kebabs/"
        ),
        Recipe(
           name: "Turkish Kebabs",
           image: "https://www.allrecipes.com/thmb/dGgkyxJSvQRCpQ2NxZ5R-c-XEYE=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/3588657-785e209b843f4268b8d179fb958e26b6.jpg",
           description: "This is my version of Turkish kebabs which I made 'off the cuff' after searching unsuccessfully for a recipe online. The original sandwiches are made from meat that is pressed into a loaf and grilled on a rotating spit. The meat is shaved off as it gets crispy and then put into a pita sandwich. My recipe calls for thin slices of meat to be marinated and then broiled to get the same effect without a huge rotating grill. Serve in a warmed pita with goat cheese, tzatziki sauce, lettuce, tomatoes, onions, and pepperoncinis.",
           ingredients: "2 large onions, chopped, 2 garlic cloves, crushed, ½ cup olive oil, 2 tablespoons lemon juice, 1 teaspoon dried oregano, 1 teaspoon ground black pepper, ½ teaspoon ground turmeric, 1 pinch curry powder, 1 teaspoon salt, 1 pound beef flank steak, thinly sliced",
           category: "Main",
           directions: "Place the chopped onions in a large ceramic bowl and crush with the bottom of a glass until juice is rendered and onions look translucent. Stir in 2 crushed garlic cloves, 1/2 cup olive oil, 2 tablespoons lemon juice, oregano, 1 teaspoon black pepper, turmeric, curry powder, and 1 teaspoon salt. Mix well; add the sliced beef and toss to coat. Cover the bowl with plastic wrap, and marinate in the refrigerator overnight.Combine the sour cream, 2 tablespoons olive oil, 1 tablespoon lemon juice, 1/2 teaspoon salt, 1/2 teaspoon black pepper, dill, and 1 crushed clove of garlic. Mix well; cover the bowl with plastic wrap and refrigerate overnight.Preheat the oven's broiler and set the oven rack about 6 inches from the heat source.Remove the meat from the marinade mixture, brushing off extra onions. Spread the slices on a baking sheet without overlapping, and salt to taste. Broil about 3 minutes per side or until browned and crispy, turning halfway through cooking.Divide the cooked meat between the pita breads, and drizzle with tzatziki sauce to serve.",
           datePublished: "15-11.22",
           url: "https://www.allrecipes.com/recipe/218488/turkish-kebabs/"
        )
    ]
}

