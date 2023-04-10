//
//  WorkOutVC.swift
//  FitKal
//
//  Created by macbookair on 3.04.2023.
//

import UIKit

class WorkOutVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = false
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
       self.navigationController?.isNavigationBarHidden = false
    }
    
}

extension WorkOutVC: UITableViewDelegate,UITableViewDataSource
{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return WorkoutData.cardImages.count // Return total numbers of images
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // Use to populate different parameters of custom cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! Cell
        
        
        cell.configure(image: WorkoutData.cardImages[indexPath.row], workoutName: WorkoutData.workoutName[indexPath.row], totalWorkouts: WorkoutData.totalWorkouts[indexPath.row])
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! Cell
        
        // Innstance of ExerciseListVC
        let vc = storyboard?.instantiateViewController(withIdentifier: "ExerciseListViewController") as? ExerciseListViewController
        
        
        // Populating card view of exercise view controller with selected table view cell.
        cell.passDataToExerciseListVC(
            
            vc: vc,
            VCTitle: WorkoutData.workoutName[indexPath.row],
            image: WorkoutData.cardImages[indexPath.row],
            workoutName: WorkoutData.workoutName[indexPath.row],
            totalWorkouts:WorkoutData.totalWorkouts[indexPath.row],
            bodyPart: WorkoutData.bodyPart[indexPath.row]
        )
        
        // To navigate from WorkoutsVC to ExerciseListVC
        self.navigationController?.pushViewController( vc!, animated: true)
    }
}

