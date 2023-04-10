//
//  Cell.swift
//  FitKal
//
//  Created by macbookair on 10.04.2023.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var backGroundImageView: UIImageView!
    
    @IBOutlet weak var workoutLabel: UILabel!
    
    @IBOutlet weak var totalWorkoutLabel: UILabel!
    
    
    func configure(image: UIImage,workoutName: String,totalWorkouts:Int)
    {
        backGroundImageView.image = image
        workoutLabel.text = workoutName
        totalWorkoutLabel.text = "Total workouts: \(totalWorkouts)"
        makeRoundedCorners()
    }
    
    // Passes data from current tableview cell to exercise list view controller
    public func passDataToExerciseListVC(vc: ExerciseListViewController?, VCTitle: String,image: UIImage,workoutName:String,totalWorkouts:Int,bodyPart: String)
    {
        vc?.viewControllerTitle = VCTitle
        vc?.image = image
        vc?.workoutName = workoutName
        vc?.totalWorkouts = totalWorkouts
        vc?.bodyPart = bodyPart
    }
    
    private func makeRoundedCorners()
    {
        cardView.layer.cornerRadius = 10.0 // Make cell rounded
        cardView.layer.borderWidth = 0.5 // Set a line along the border
        cardView.layer.borderColor = UIColor.gray.cgColor // Set the color of border line
        
        backGroundImageView.layer.cornerRadius = 10.0 // Setting card image corner radius
    }

}
