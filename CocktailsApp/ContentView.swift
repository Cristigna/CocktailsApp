///
//  ContentView.swift
//  Cocktails
//
//  Created by Cristina Valenziano on 11/12/24.
//

import SwiftUI

extension CocktailViewModel {
    var featuredDrink: DrinkCard? {
        let allDrinks = drink + drinkrum + drinkgin + drinkwhiskey
        return allDrinks.randomElement() // Randomly select a drink
    }
}

struct ContentView: View {
    
    @State private var searchText = ""
    @State private var isAddCocktailViewPresented = false
    var drinkVM = CocktailViewModel()
    
    var body: some View {
        
        
        NavigationStack {
            
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
                
                ScrollView {
                    VStack (alignment: .leading) {
                        
                        List { 
                        }
                        .searchable(text: $searchText, prompt: "Look for a drink") .foregroundColor(.white)
                        
                        
                        
                        
                        Section {
                            // Display the featured drink
                            if let drink = drinkVM.featuredDrink {
                                
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color.white)
                                        .frame(width: 350, height: 200)
                                        .shadow(radius: 5)
                                    
                                    
                                    Image(drink.drinkImage)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 350, height: 200)
                                        .clipped()
                                    
                                    Rectangle()
                                        .foregroundColor(Color.black.opacity(0.6))
                                        .blur(radius: 10)
                                        .frame(width: 350, height: 200)
                                        .edgesIgnoringSafeArea(.all)
                                    
                                    
                                    
                                    Text(drink.drinkName)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .font(.system(size: 25))
                                        .padding(.top, 150)
                                    
                                    
                                    
                                }
                                .padding(.horizontal)
                                
                            }
                        } header: {
                            Text("Cocktail of the day")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .textCase(nil)
                                .multilineTextAlignment(.leading)
                        }
                        
                        
                        
                        Section {
                            
                            ScrollView (.horizontal) {
                                
                                HStack {
                                    
                                    ForEach (drinkVM.drink) { drink in
                                        NavigationLink(destination: DetailedCocktailView(drink: drink)) {
                                            
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(Color.white)
                                                    .frame(width: 160, height: 160)
                                                
                                                HStack {
                                                    
                                                    
                                                    Image(drink.drinkImage)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 70, height: 160)
                                                        .clipped()
                                                        .clipShape(Rectangle())
                                                    
                                                    
                                                    VStack (alignment: .leading) {
                                                        
                                                        
                                                        
                                                        Text(drink.drinkName)
                                                            .font(.system(size:15))
                                                            .bold()
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                            .padding(.top, 10)
                                                        
                                                        
                                                        
                                                        Divider()
                                                        
                                                        Spacer()
                                                        
                                                        Text(drink.drinkIngredients)
                                                            .font(.system(size: 9))
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                        
                                                        Spacer(minLength: 50)
                                                    }
                                                    
                                                    
                                                } .frame(width: 160, height: 170)
                                            }
                                        }
                                    }
                                }
                            }
                        } header: {
                            Text("Vodka based drinks")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .textCase(nil)
                                .multilineTextAlignment(.leading)
                        }
                        
                        
                        Section {
                            
                            ScrollView (.horizontal) {
                                
                                HStack {
                                    
                                    ForEach (drinkVM.drinkrum) { drink in
                                        NavigationLink(destination: DetailedCocktailView(drink: drink)) {
                                            
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(Color.white)
                                                    .frame(width: 160, height: 160)
                                                
                                                
                                                
                                                HStack {
                                                    
                                                    
                                                    Image(drink.drinkImage)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 70, height: 160)
                                                        .clipped()
                                                        .clipShape(Rectangle())
                                                    
                                                    
                                                    VStack (alignment: .leading) {
                                                        
                                                        
                                                        
                                                        Text(drink.drinkName)
                                                            .font(.system(size:15))
                                                            .bold()
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                            .padding(.top, 10)
                                                        
                                                        
                                                        
                                                        Divider()
                                                        
                                                        Spacer()
                                                        
                                                        Text(drink.drinkIngredients)
                                                            .font(.system(size: 9))
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                        
                                                        Spacer(minLength: 50)
                                                    }
                                                    
                                                    
                                                } .frame(width: 160, height: 160)
                                            }
                                        }
                                    }
                                }
                            }
                            
                        } header: {
                            Text("Rum based drinks")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .textCase(nil)
                                .multilineTextAlignment(.leading)
                        }
                        
                        
                        Section {
                            
                            ScrollView (.horizontal) {
                                
                                HStack {
                                    
                                    ForEach (drinkVM.drinkgin) { drink in
                                        NavigationLink(destination: DetailedCocktailView(drink: drink)) {
                                            
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(Color.white)
                                                    .frame(width: 160, height: 160)
                                                
                                                
                                                
                                                HStack {
                                                    
                                                    
                                                    Image(drink.drinkImage)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 70, height: 160)
                                                        .clipped()
                                                        .clipShape(Rectangle())
                                                    
                                                    
                                                    VStack (alignment: .leading) {
                                                        
                                                        
                                                        
                                                        Text(drink.drinkName)
                                                            .font(.system(size:15))
                                                            .bold()
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                            .padding(.top, 10)
                                                        
                                                        
                                                        
                                                        Divider()
                                                        
                                                        Spacer()
                                                        
                                                        Text(drink.drinkIngredients)
                                                            .font(.system(size: 9))
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                        
                                                        Spacer(minLength: 50)
                                                    }
                                                    
                                                } .frame(width: 160, height: 160)
                                            }
                                        }
                                    }
                                }
                            }
                        } header: {
                            Text("Gin based drinks")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .textCase(nil)
                                .multilineTextAlignment(.leading)
                        }
                        
                        
                        Section {
                            
                            ScrollView (.horizontal) {
                                
                                HStack {
                                    
                                    ForEach (drinkVM.drinkwhiskey) { drink in
                                        NavigationLink(destination: DetailedCocktailView(drink: drink)) {
                                            
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(Color.white)
                                                    .frame(width: 160, height: 160)
                                                
                                                
                                                
                                                HStack {
                                                    
                                                    
                                                    Image(drink.drinkImage)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 70, height: 160)
                                                        .clipped()
                                                        .clipShape(Rectangle())
                                                    
                                                    
                                                    VStack (alignment: .leading) {
                                                        
                                                        
                                                        
                                                        Text(drink.drinkName)
                                                            .font(.system(size:15))
                                                            .bold()
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                            .padding(.top, 10)
                                                        
                                                        
                                                        
                                                        Divider()
                                                        
                                                        Spacer()
                                                        
                                                        Text(drink.drinkIngredients)
                                                            .font(.system(size: 9))
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                        
                                                        Spacer(minLength: 50)
                                                    }
                                                    
                                                } .frame(width: 160, height: 160)
                                            }
                                        }
                                    }
                                }
                            }
                        } header: {
                            Text("Whiskey based drinks")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .textCase(nil)
                                .multilineTextAlignment(.leading)
                        }
                    }
                }
                .contentMargins(9)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            isAddCocktailViewPresented = true
                        }) {
                            Image(systemName: "plus")
                        }
                    }
                } .accentColor(.white)
                .sheet(isPresented: $isAddCocktailViewPresented) {
                    AddCocktailView()
                
                    
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
