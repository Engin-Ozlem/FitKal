//
//  ExerciseList.swift
//  FitKal
//
//  Created by macbookair on 10.04.2023.
//

import Foundation
struct ExerciseListDataModel: Codable
{
    var exerciseGIF: [String]
    var exerciseName: [String]
    var targetMuscle: [String]
    var exerciseEquipment: [String]
}
