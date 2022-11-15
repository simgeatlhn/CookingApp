//
//  HomeView.swift
//  CookingApp
//
//  Created by simge on 15.11.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("All Recipes")
                .navigationTitle("Cooking")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
