//
//  CocktailDat.swift
//  Cocktails
//
//  Created by Cristina Valenziano on 13/12/24.
//

import Foundation
import SwiftUI

struct DrinkCard: Identifiable {
    let id: UUID = UUID()
    var drinkName: String
    var drinkIngredients: String
    var drinkImage: String
    var drinkProcess: String
    var drinkMeasures: String
    
}
