//
//  AddCocktailView.swift
//  CocktailsApp
//
//  Created by Cristina Valenziano on 17/12/24.
//

import SwiftUI

struct AddCocktailView: View {
    var body: some View {
        
        ZStack {
            
            MeshGradient(width: 2, height: 2, points: [
                [0, 0], [1, 0],
                [0, 1], [1, 1]
            ], colors: [
                .black.opacity(0.9),
                .color1,
                .color1,
                .black.opacity(0.9)
            ])
            .ignoresSafeArea()
            
            
            Text("Add a new cocktail")
                .foregroundColor(.white)
            
        }
    }
}

#Preview {
    AddCocktailView()
}
