//
//  FoodCardModel.swift
//  FitKal
//
//  Created by macbookair on 20.04.2023.
//

import Foundation

import UIKit

/// Struct for storing data for a recipe.
struct FoodCardModel
{
    /// For Diet Plan View Controller's (Food Card Collection View).
    var foodCategory: String
    var cardImage: [String]
    var foodName: [String]
    var foodQuantity: [Double]
    var foodCalorie: [Double]

}
