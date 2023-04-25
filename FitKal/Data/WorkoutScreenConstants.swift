//
//  WorkoutData.swift
//  FitKal
//
//  Created by macbookair on 10.04.2023.
//

import Foundation
import UIKit

struct WorkoutScreenConstants
{
    /// Array for storing API endpoints body name with respective card image
    public static let bodyPart: [String] = ["cardio","shoulders","upper%20arms","lower%20arms","chest","back","upper%20legs","lower%20legs"]
    
    /// Array for storing the card images.
    public static let cardImages: [UIImage] = [UIImage(named: "Cardio")!,UIImage(named: "Shoulder")!,UIImage(named: "Biceps.jpeg")!,UIImage(named: "Triceps.jpg")!,UIImage(named: "Chest.jpg")!,UIImage(named: "Back.jpeg")!,UIImage(named: "Legs.jpeg")!,UIImage(named: "Lower legs.jpg")!]
    
    /// Array for stroing the workout name.
    public static let workoutName: [String] = ["Cardio","Shoulder Workout","Upper arms","Lower arms","Chest Workout","Back Workout","Upper legs","Lower legs"]
    
    /// Array for storing total workouts from API.
    public static let totalWorkouts: [Int] = [0,0,0,0,0,0,0,0]
}

