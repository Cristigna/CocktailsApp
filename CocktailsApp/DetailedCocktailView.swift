//
//  SwiftUIView.swift
//  Cocktails
//
//  Created by Cristina Valenziano on 13/12/24.
//

import SwiftUI

struct DetailedCocktailView: View {
    
    var drink: DrinkCard
    var body: some View {
        
        
        
        NavigationStack {
            ZStack {
                MeshGradient(width: 2, height: 2, points: [
                    [0, 0], [1, 0],
                    [0, 1], [1, 1]
                ], colors: [.black.opacity(0.9), .color1, .color1, .black.opacity(0.9)])
                .ignoresSafeArea()
                
                ScrollView {
                    
                    VStack (alignment: .center) {
                        
                        Image(drink.drinkImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        //.frame(width: 500, height: 300)
                            .clipShape(Rectangle())
                            .ignoresSafeArea()
                        
                        Spacer().frame(height: 1)
                        
                        Text(drink.drinkName)
                            .font(.system(size:35))
                            .bold()
                            .foregroundColor(.white)
                        
                        
                        Spacer(minLength: 100)
                        
                        
                        HStack {
                            
                            Text(drink.drinkMeasures)
                                .foregroundColor(.white)
                            
                            Divider()
                                .foregroundColor(.white)
                            
                            Text(drink.drinkProcess)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .lineLimit(5)
                            
                            
                        } .frame(width: 375)
                        
                    }
                    .padding(.bottom, 60)
                }
            }
        }
    }
    
}
#Preview {
    DetailedCocktailView(drink: CocktailViewModel().drink[1])
}

