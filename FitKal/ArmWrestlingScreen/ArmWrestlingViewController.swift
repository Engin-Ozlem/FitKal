//
//  ArmWrestlingViewController.swift
//  FitKal
//
//  Created by macbookair on 24.04.2023.
//

var İmagecount = 0
var descriptionCount = 0

import UIKit



class ArmWrestlingViewController: UIViewController {
    
    @IBOutlet weak var partNumberLabel: UILabel!
    
    @IBOutlet weak var howToImage: UIImageView!
    
    @IBOutlet weak var descriptionImage: UITextView!
    
    @IBOutlet weak var TitleNameLabel: UILabel!
    
    
    
    
    
    
    
    
    @IBOutlet weak var nextButtonTapped: UIButton!
    @IBOutlet weak var backButtonTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.navigationItem.hidesBackButton = true
        
        
        backButtonTapped.isEnabled = false
        
        
        

        TitleNameLabel.text! = ArmWrestlingData.TitleNameOne
        howToImage.image = ArmWrestlingData.ArmWrestlingImage[İmagecount]
        partNumberLabel.text! = String(ArmWrestlingData.partNumber[0])
        descriptionImage.text! = String(ArmWrestlingData.armWrestlingTecnique[descriptionCount])
        
        
        
        
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.navigationItem.hidesBackButton = true
        
        if İmagecount == 3 || İmagecount == 4 || İmagecount == 5 || İmagecount == 6 || İmagecount == 7 || İmagecount == 8 || İmagecount == 9 {
            partNumberLabel.text! = "2"
            TitleNameLabel.text! = ArmWrestlingData.TitleNameTwo
            
        }
        
        if İmagecount == 0 || İmagecount == 1 || İmagecount == 2 || İmagecount == 3   {
            partNumberLabel.text! = "1"
            TitleNameLabel.text! = ArmWrestlingData.TitleNameOne
            
        }
        
        backButtonTapped.isEnabled = true
        
    }
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        
        
        if İmagecount == 9 && descriptionCount == 9 {
            
            
            nextButtonTapped.isEnabled = false
            
            
        }else {
            
            backButtonTapped.isEnabled = true
            howToImage.image = ArmWrestlingData.ArmWrestlingImage[İmagecount+1]
            İmagecount = İmagecount + 1
            
            descriptionImage.text! = String(ArmWrestlingData.armWrestlingTecnique[descriptionCount+1])
            descriptionCount = descriptionCount + 1
        }
        
        if İmagecount == 3 || İmagecount == 4 || İmagecount == 5 || İmagecount == 6 || İmagecount == 7 || İmagecount == 8 {
            partNumberLabel.text! = "2"
            TitleNameLabel.text! = ArmWrestlingData.TitleNameTwo
            
        }
        if İmagecount == 0 || İmagecount == 1 || İmagecount == 2 || İmagecount == 3   {
            partNumberLabel.text! = "1"
            TitleNameLabel.text! = ArmWrestlingData.TitleNameOne
            
        }
        
        
        
        
        
        
        
        
    }
    

    
    
    @IBAction func backButtonClicked(_ sender: Any) {
        
        
        
        if İmagecount == 0 && descriptionCount == 0 {
           
            backButtonTapped.isEnabled = false
            
            
        }else {
            
            nextButtonTapped.isEnabled = true
            howToImage.image = ArmWrestlingData.ArmWrestlingImage[İmagecount-1]
            İmagecount = İmagecount - 1
            
            descriptionImage.text! = String(ArmWrestlingData.armWrestlingTecnique[descriptionCount-1])
            descriptionCount = descriptionCount - 1
            backButtonTapped.isEnabled = true
        }
        
        if İmagecount == 4 || İmagecount == 5 || İmagecount == 6 || İmagecount == 7 || İmagecount == 8 || İmagecount == 9 {
            partNumberLabel.text! = "2"
            TitleNameLabel.text! = ArmWrestlingData.TitleNameTwo
            
        }
        if İmagecount == 0 || İmagecount == 1 || İmagecount == 2 || İmagecount == 3   {
            partNumberLabel.text! = "1"
            TitleNameLabel.text! = ArmWrestlingData.TitleNameOne
            
        }
        
        
    }
    

}
