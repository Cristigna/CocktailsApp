//
//  SearchBarView.swift
//  CocktailsApp
//
//  Created by Cristina Valenziano on 18/12/24.
//

import SwiftUI

struct SearchBarView: View {
    
    @State private var searchText = ""
    @State var allDrinks = ["Subh", "Vina", "Melvin", "Stefanie"]
    
    var filteredDrinks: [String] {
        if searchText.isEmpty {
            allDrinks
        } else {
            allDrinks.filter { name in
                name.localizedStandardContains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            List(filteredDrinks, id: \.self) { drink in
                Text(drink)
            }
            .searchable(text: $searchText, prompt: "Look for a drink")
            .navigationTitle("Searching")
        }
    }
}

#Preview {
    SearchBarView()
}
