//
//  IngredientsCollectionViewCell.swift
//  FitKal
//
//  Created by macbookair on 20.04.2023.
//

import UIKit
import Kingfisher // For fetching image from url.

/// Custom class for IngredientsCollectionViewCell.
final class IngredientsCollectionViewCell: UICollectionViewCell
{
   static let identifier = "ingredientsCollectionViewCell"
    
    @IBOutlet weak private var foodName: UILabel!
    @IBOutlet weak private var foodImage: UIImageView!
    @IBOutlet weak private var foodQuantity: UILabel!
    
    public func configure(foodName: String,foodImage: String,foodQuantity: Double)
    {
        self.foodName?.text = foodName
        self.foodImage.kf.setImage(with: URL(string: foodImage))
        self.foodQuantity?.text = "\(String(format: "Weight: %.1f g",foodQuantity))"
        
    }
}
