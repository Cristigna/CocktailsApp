//
//  Data.swift
//  Cocktails
//
//  Created by Cristina Valenziano on 13/12/24.
//

import Foundation
import SwiftUI

@Observable class CocktailViewModel: ObservableObject {
    
    var drink = [
        
        DrinkCard(drinkName: "Bloody Mary", drinkIngredients: "• Vodka\n• Lemon juice\n• Tomato juice", drinkImage: ("bloodymaryIMG"), drinkProcess: "Stir gently all the ingredients in a mixing glass with ice, pour into rocks glass.", drinkMeasures: "• 45 ml vodka\n\n• 90 ml tomato juice\n\n• 15 ml fresh lemon juice\n\n• 2 dashes of Worcestershire sauce\n\n• Tabasco sauce\n\n• Celery salt\n\n• Black pepper"),
        
        DrinkCard(drinkName: "Moscow mule", drinkIngredients: "• Vodka\n• Lime juice\n• Ginger beer", drinkImage: ("moscowmuleIMG"), drinkProcess: "In an Mule Cup or rocks glass, combine the vodka and ginger beer. Add lime juice and gently stir to involve all ingredients.", drinkMeasures: "• 45 ml vodka\n\n• 10 ml lime juice\n\n• 120 ml ginger beer"),
        
        DrinkCard(drinkName: "Lemon Drop", drinkIngredients: "• Vodka citron\n• Triple sec\n• Lemon juice", drinkImage: ("lemondropIMG"), drinkProcess: "Pour all ingredients into cocktail shaker, shake well with ice, strain into chilled cocktail glass. Garnish with sugar rim around the glass.", drinkMeasures: "• 30 ml vodka citron\n\n• 20 ml Triple sec\n\n• 15 ml fresh lemon juice"),
        
        DrinkCard(drinkName: "Espresso Martini", drinkIngredients: "• Vodka\n• Kahlùa\n• Sugar syrup\n• Espresso", drinkImage: ("espressomartiniIMG"), drinkProcess: "Pour all ingredients into cocktail shaker, shake well with ice, strain into chilled cocktail glass.", drinkMeasures: "• 50 ml vodka\n\n• 30 ml Kahlúa\n\n• 10 ml sugar syrup\n\n• 1 strong espresso"),
        
        DrinkCard(drinkName: "Sex on the Beach", drinkIngredients: "• Vodka\n• Peach schnapps\n• Orange juice\n• Cranberry juice", drinkImage: ("sexonthebeachIMG"), drinkProcess: "Build all ingredients in a highball glass filled with ice. Garnish with orange slice.", drinkMeasures: "• 4 cl Vodka\n\n• 2 cl Peach schnapps\n\n• 4 cl Orange juice\n\n• 4 cl cranberry juice")
        
        ]
    
    var drinkrum = [
        
        DrinkCard(drinkName: "Mojito", drinkIngredients: "• White rum\n• Lime juice\n• Soda water", drinkImage: ("mojitoIMG"), drinkProcess: "Mix mint sprigs with sugar and lime juice. Add splash of soda water and fill the glass with ice. Pour the rum and top with soda water. Light stir to involve all ingredients.", drinkMeasures: "• 45 ml white rum\n\n• 20 ml fresh lime juice\n\n• 6 sprigs of mint\n\n• 2 teaspoons white cane sugar\n\n• Soda water"),
        
        DrinkCard(drinkName: "Piña Colada", drinkIngredients: "• White rum\n• Coconut cream\n• Pineapple juice", drinkImage: ("pinacoladaIMG"), drinkProcess: "Blend all the ingredients with ice in an electric blender, pour into a large glass, and serve with straws.", drinkMeasures: "• 50 ml white rum\n\n• 30 ml coconut cream\n\n• 50 ml fresh pineapple juice"),
        
        DrinkCard(drinkName: "Mai Tai", drinkIngredients: "• Jamaican rum\n• Molasses rhum\n• Orange curaçao\n• Orgeat syrup", drinkImage: ("maitaiIMG"), drinkProcess: "Add all ingredients into a shaker with ice. Shake and pour into a double rocks glass or a highball glass.", drinkMeasures: "• 30 ml amber Jamaican rum\n\n• 30 ml Molasses rhum\n\n• 15 ml orange curaçao\n\n• 15 ml orgeat syrup\n\n• 30 ml fresh lime juice\n\n• 7.5 ml simple syrup"),
        
        DrinkCard(drinkName: "Daiquiri", drinkIngredients: "• Cuban rum\n• Lime juice\n• Sugar", drinkImage: ("daiquiriIMG"), drinkProcess: "In a cocktail shaker add all ingredients. Stir well to dissolve the sugar. Add ice and shake. Strain into chilled cocktail glass.", drinkMeasures: "• 60 ml white Cuban rum\n\n• 20 ml fresh lime juice\n\n• 2 bar spoons superfine sugar"),
        
        DrinkCard(drinkName: "Cuba Libre", drinkIngredients: "• White rum\n• Cola\n• Lime juice", drinkImage: ("cubalibreIMG"), drinkProcess: "Build all ingredients in a highball glass filled with ice. Garnish with lime wedge.", drinkMeasures: "• 120 ml cola\n\n• 50 ml white rum\n\n• 10 ml Fresh lime juice")
    ]
    
    var drinkgin = [
        
        DrinkCard(drinkName: "Negroni", drinkIngredients: "• Gin\n• Campari\n• Red vermouth", drinkImage: ("negroniIMG"), drinkProcess: "Build in glass over ice, garnish and serve.", drinkMeasures: "• 30 mL gin\n\n• 30 mL sweet red vermouth\n\n• 30 mL Campari"),
        
        DrinkCard(drinkName: "Martini", drinkIngredients: "• Gin\n• Dry vermouth\n", drinkImage: ("martiniIMG"), drinkProcess: "Pour all ingredients into mixing glass with ice cubes. Stir well. Strain into chilled martini cocktail glass. Squeeze oil from lemon peel onto the drink, or garnish with green olives if requested.", drinkMeasures: "• 60 mL gin\n\n• 10 mL dry vermouth"),
        
        DrinkCard(drinkName: "Tuxedo", drinkIngredients: "• Gin\n• Dry vermouth\n• Maraschino\n• Absinthe", drinkImage: ("tuxedoIMG"), drinkProcess: "Stir all ingredients with ice and strain into a cocktail glass. Garnish with a cherry and a twist of lemon zest.", drinkMeasures: "• 30 mL Gin\n\n• 30 mL dry Vermouth\n\n• 1/2 barspoon Maraschino\n\n• 1/4 barspoon Absinthe\n\n• 3 dashes orange bitters"),
        
        DrinkCard(drinkName: "Singapore sling", drinkIngredients: "• Gin\n• Cherry liqueur\n• Cointreau\n• Pineapple juice \n• Bénédictine", drinkImage: ("singaporeslingIMG"), drinkProcess: "Pour all ingredients into a cocktail shaker filled with ice cubes. Shake well. Strain into a hurricane glass.", drinkMeasures: "• 30 mL Gin\n\n• 15 mL cherry liqueur\n\n• 7.5 mL Cointreau\n\n• 7.5 mL DOM Bénédictine\n\n• 120 mL fresh pineapple juice\n\n• 15 mL fresh lime juice\n\n• 10 mL Grenadine\n\n• 1 dash Angostura bitters"),
        
        DrinkCard(drinkName: "Bramble", drinkIngredients: "• Gin\n• Lemon juice\n• Crème de Mûre \n• Sugar syrup", drinkImage: ("brambleIMG"), drinkProcess: "Pour all ingredients into a cocktail shaker except the Crème de Mûre, shake well with ice, strain into chilled old fashioned glass filled with crushed ice, then pour the blackberry liqueur (Crème de Mûre) over the top of the drink, in a circular motion.", drinkMeasures: "• 50 mL Gin\n\n• 25 mL fresh lemon juice\n\n• 12.5 mL sugar syrup\n\n• 15 mL Crème de Mûre")
    ]
    
    var drinkwhiskey = [
        
        DrinkCard(drinkName: "Manhattan", drinkIngredients: "• Rye whiskey\n• Sweet red vermouth\n• Angostura bitters", drinkImage: ("manhattanIMG"), drinkProcess: "Pour all ingredients into mixing glass with ice cubes. Stir well. Strain into a chilled cocktail glass.", drinkMeasures: "• 50 ml Rye whiskey\n\n• 20 ml Sweet red vermouth\n\n• 1 dash Angostura bitters"),
        
        DrinkCard(drinkName: "Irish coffee", drinkIngredients: "• Irish whiskey\n• Hot coffee\n• Fresh cream", drinkImage: ("irishcoffeeIMG"), drinkProcess: "Pour the coffee into a preheated glass, add whiskey and sugar, and stir until dissolved. Pour cream slowly to form a distinct layer.", drinkMeasures: "• 50 mL Irish whiskey\n\n• 120 mL hot coffee\n\n• 50 mL fresh cream (chilled)\n\n• 5 mL sugar"),
        
        DrinkCard(drinkName: "Mint julep", drinkIngredients: "• Bourbon whiskey\n• Mint sprigs\n• Powdered sugar", drinkImage: ("mintjulepIMG"), drinkProcess: "In Julep Stainless Steel Cup gently muddle the mint with sugar and water. Fill the glass with cracked ice, add the Bourbon and stir well until the cup frosts.", drinkMeasures: "• 60 mL Bourbon whiskey\n\n• 4 mint sprigs\n\n• 1 teaspoon powdered sugar\n\n• 2 teaspoons water"),
        
        DrinkCard(drinkName: "Old fashioned", drinkIngredients: "• Bourbon whiskey\n• Angostura bitters\n• Sugar cube", drinkImage: ("oldfashionedIMG"), drinkProcess: "Place sugar cube in old fashioned glass and saturate with bitter, add few dashes of plain water. Muddle until dissolved. Fill the glass with ice cubes and add whiskey. Stir gently. Garnish with orange slice or zest, and a cocktail cherry.", drinkMeasures: "• 45 ml bourbon or rye whiskey\n\n• 1 sugar cube\n\n• Few dashes Angostura bitters\n\n• Few dashes plain water"),
        
        DrinkCard(drinkName: "Whiskey sour", drinkIngredients: "• Bourbon whiskey\n• Lemon juice\n• Simple syrup", drinkImage: ("whiskeysourIMG"), drinkProcess: "Shake all the ingredients with ice. Strain into chilled glass, garnish and serve.", drinkMeasures: "• 45 mL bourbon whiskey\n\n• 30 mL  fresh lemon juice\n\n• 15 mL simple syrup")
    ]
}
