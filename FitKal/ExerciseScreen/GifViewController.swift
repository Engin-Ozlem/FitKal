//
//  GifViewController.swift
//  FitKal
//
//  Created by macbookair on 11.04.2023.
//

import UIKit
import Kingfisher // Library for getting gif from web.

class GifViewController: UIViewController
{
    @IBOutlet weak var exerciseName: UILabel!
    @IBOutlet weak var targetMuscle: UILabel!
    @IBOutlet weak var equipment: UILabel!
    @IBOutlet weak var gif: UIImageView!
    
    var name = ""
    var muscle = ""
    var equipmentType = ""
    var gifUrl = ""
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        exerciseName.text = name.capitalized
        targetMuscle.text = "Target Muscle: \(muscle.capitalized)"
        equipment.text = "Equipment: \(equipmentType.capitalized)"
        gif.kf.setImage(with: URL(string: gifUrl))
        print(gifUrl)
        
    }
    
}
