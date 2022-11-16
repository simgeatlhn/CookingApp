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

//Data
extension Recipe {
    // array equal to array
    static let allRecipe: [Recipe] = [
        Recipe(
           name: "Turkish Kebabs",
           image: "https://www.allrecipes.com/thmb/dGgkyxJSvQRCpQ2NxZ5R-c-XEYE=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/3588657-785e209b843f4268b8d179fb958e26b6.jpg",
           description: "This is my version of Turkish kebabs which I made 'off the cuff' after searching unsuccessfully for a recipe online. The original sandwiches are made from meat that is pressed into a loaf and grilled on a rotating spit. The meat is shaved off as it gets crispy and then put into a pita sandwich. My recipe calls for thin slices of meat to be marinated and then broiled to get the same effect without a huge rotating grill. Serve in a warmed pita with goat cheese, tzatziki sauce, lettuce, tomatoes, onions, and pepperoncinis.",
           ingredients: "2 large onions,chopped, 2 garlic cloves, crushed, ½ cup olive oil, 2 tablespoons lemon juice, 1 teaspoon dried oregano, 1 teaspoon ground black pepper, ½ teaspoon ground turmeric, 1 pinch curry powder, 1 teaspoon salt, 1 pound beef flank steak, thinly sliced",
           category: "Main",
           directions: "Place the chopped onions in a large ceramic bowl and crush with the bottom of a glass until juice is rendered and onions look translucent. Stir in 2 crushed garlic cloves, 1/2 cup olive oil, 2 tablespoons lemon juice, oregano, 1 teaspoon black pepper, turmeric, curry powder, and 1 teaspoon salt. Mix well; add the sliced beef and toss to coat. Cover the bowl with plastic wrap, and marinate in the refrigerator overnight.Combine the sour cream, 2 tablespoons olive oil, 1 tablespoon lemon juice, 1/2 teaspoon salt, 1/2 teaspoon black pepper, dill, and 1 crushed clove of garlic. Mix well; cover the bowl with plastic wrap and refrigerate overnight.Preheat the oven's broiler and set the oven rack about 6 inches from the heat source.Remove the meat from the marinade mixture, brushing off extra onions. Spread the slices on a baking sheet without overlapping, and salt to taste. Broil about 3 minutes per side or until browned and crispy, turning halfway through cooking.Divide the cooked meat between the pita breads, and drizzle with tzatziki sauce to serve.",
           datePublished: "15-11.22",
           url: "https://www.allrecipes.com/recipe/218488/turkish-kebabs/"
        ),
        Recipe(
           name: "Brownies",
           image: "https://www.allrecipes.com/thmb/NqtH9MNoz61YDFasSBm7i_RYWc8=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/25080-mmmmm-brownies-ddmfs-1x1-0074-a5079120061543be81bfc4a6776aa0f7.jpg",
           description: "These brownies with chocolate chips are the best brownies I've ever had!",
           ingredients: "½ cup white sugar, 2 tablespoons butter, 2 tablespoons water, 1 ½ cups semisweet chocolate chips, 2 large eggs, beaten,½ teaspoon vanilla extract, ⅔ cup all-purpose flour, ½ teaspoon salt, ¼ teaspoon baking soda",
           category: "Dessert",
           directions: "Preheat the oven to 325 degrees F (165 degrees C). Grease an 8-inch square pan. Combine sugar, butter, and water in a medium saucepan; cook and stir over medium heat until boiling. Remove from heat and stir in chocolate chips until melted and smooth; mix in eggs and vanilla. Combine flour, salt, and baking soda; stir into the chocolate mixture. Spread brownie batter evenly into the prepared pan. Bake in the preheated oven until top is dry and edges have started to pull away from the sides of the pan, about 20 to 30 minutes. Let cool completely before cutting into squares.",
           datePublished: "15-11.22",
           url: "https://www.allrecipes.com/recipe/25080/mmmmm-brownies/"
        ),
        Recipe(
           name: "Italian Soup",
           image: "https://www.allrecipes.com/thmb/2OVa3ARu2tYDK1IwoKqB4ILihEc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/13024-ItalianWeddingSoup-1-mfs-1X1-1030-e5151c01fa0543d6bdb736ad01071828.jpg",
           description: "This lovely Italian wedding soup recipe combines flavorful meatballs with sliced escarole, orzo pasta, and finely chopped carrot. Serve hot, garnished with fresh parsley and extra Parmesan cheese.",
           ingredients: "½ pound extra-lean ground beef, 1 large egg, lightly beaten, 2 tablespoons dry bread crumbs, 1 tablespoon grated Parmesan cheese, ½ teaspoon dried basil, ½ teaspoon onion powder, 5 ¾ cups chicken broth, 2 cups thinly sliced escarole, 1 cup uncooked orzo pasta, ⅓ cup finely chopped carrot",
           category: "Soup",
           directions: "Combine ground beef, egg, bread crumbs, Parmesan cheese, basil, and onion powder in a bowl; shape into 3/4-inch balls. Heat broth in a large pot over medium-high heat until boiling. Stir in escarole, orzo, carrot, and meatballs and return to boil. Reduce heat to medium and cook at slow boil, stirring frequently to prevent sticking, until pasta is tender yet firm to the bite, about 10 minutes.",
           datePublished: "15-11.22",
           url: "https://www.allrecipes.com/recipe/13024/italian-wedding-soup-i/"
        ),
        Recipe(
           name: "Breakfast Pizza",
           image: "https://www.allrecipes.com/thmb/9psSXgs-88a5k3ysrcDjMvLTLC0=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/8211782-2288e034d7d7420faf4dbc2c23dcdccd.jpg",
           description: "This sausage breakfast pizza is made with a combination of all your favorite breakfast foods, such as sausage, cheese, hash browns, and eggs. Top with thinly sliced red, yellow, and green bell peppers for a beautiful (and tasty!) presentation.",
           ingredients: "2 (16 ounce) packages Regular Flavor Jimmy Dean Pork Sausage, 2 (8.5 ounce) cans refrigerated crescent rolls, 2 cups frozen hash brown potato cubes, thawed, 2 cups shredded sharp Cheddar cheese, 6 large eggs, lightly beaten, ⅓ cup milk, 1 teaspoon salt, 2 teaspoons black pepper, ¼ cup grated Parmesan cheese",
           category: "Breakfast",
           directions: "Preheat the oven to 375 degrees F (190 degrees C). Heat a large skillet over medium-high heat. Cook and stir one package sausage in the hot skillet until browned and crumbly, 7 to 10 minutes. Drain and discard grease, and transfer sausage to a bowl. Repeat with remaining sausage. Separate crescent rolls into 16 triangles. Place in two ungreased 12-inch rimmed pizza pans with points toward the center. In each pan, press rolls together, seal perforations and form a circle 1 inch larger in diameter than the bottom of the pan. Turn edges under to make a slight rim. Sprinkle cooked sausage evenly over each crust. Top with potatoes; add bell peppers and green onions. Sprinkle with Cheddar cheese. Combine eggs, milk, salt, and black pepper in small bowl and stir well. Pour half of egg mixture evenly over each pizza. Sprinkle with Parmesan. Bake in the preheated oven for 15 to 20 minutes or until eggs are set and crusts are golden.",
           datePublished: "15-11.22",
           url: "https://www.allrecipes.com/recipe/84068/jimmy-dean-sausage-breakfast-pizza/"
        ),
    ]
}

