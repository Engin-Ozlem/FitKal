//
//  CalculatorViewController.swift
//  FitKal
//
//  Created by macbookair on 27.04.2023.
//

import UIKit



var chose : Int = 0
var result : Double = 0


var resultLeanBody : Double = 0
var resultBodyFatWeight : Double = 0

var age : Double = 0
var height : Double = 0
var weight : Double = 0
var neck : Double = 0
var waist : Double = 0
var hip : Double = 0






class CalculatorViewController: UIViewController {
    
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var imageMen: UIImageView!
    @IBOutlet weak var imageWoman: UIImageView!
    
    @IBOutlet weak var buttonMen: UIButton!
    @IBOutlet weak var buttonWoman: UIButton!
    
    
    @IBOutlet weak var sliderAge: UISlider!
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    @IBOutlet weak var sliderNeck: UISlider!
    @IBOutlet weak var sliderWaist: UISlider!
    @IBOutlet weak var sliderHip: UISlider!
    
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var neckLabel: UILabel!
    @IBOutlet weak var waistLabel: UILabel!
    @IBOutlet weak var hipLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sliderAge.addTarget(self, action: #selector(sliderValueChangedAge(_:)), for: .valueChanged)
        sliderWeight.addTarget(self, action: #selector(sliderValueChangedWeight(_:)), for: .valueChanged)
        sliderHeight.addTarget(self, action: #selector(sliderValueChangedHeight(_:)), for: .valueChanged)
        sliderNeck.addTarget(self, action: #selector(sliderValueChangedNeck(_:)), for: .valueChanged)
        sliderWaist.addTarget(self, action: #selector(sliderValueChangedWaist(_:)), for: .valueChanged)
        sliderHip.addTarget(self, action: #selector(sliderValueChangedHip(_:)), for: .valueChanged)
        
    }
    

    
    
    
    
    @IBAction func calculateButtonTapped(_ sender: Any) {
        StringToInt()
        if chose == 1 {
            
            result = 495 / (1.0324 - 0.19077 * log10(waist - neck) + 0.15456 * log10(height)) - 450
            resultLeanBody = (weight - result)
            var resultBodyFat = (result * 0.04)
            resultBodyFatWeight = (result) - resultBodyFat
            
            
            
            
            performSegue(withIdentifier: "toCalculateVC", sender: nil)

            
            
            
        }
        if chose == 2 {
            
            result = 495 / (1.29579 - 0.35004 * log10(waist + hip - neck) + 0.22100 * log10(height)) - 450
            
            
            resultLeanBody = (weight - result)
            var resultBodyFat = (result * 0.04)
            resultBodyFatWeight = (result) - resultBodyFat
            
            performSegue(withIdentifier: "toCalculateVC", sender: nil)
            
            
            
            
        }
        
    }
    
    
    
    
    
    @objc func sliderValueChangedAge(_ sender: UISlider) {
            ageLabel.text = "\(Int(sender.value))"
        }
    @objc func sliderValueChangedWeight(_ sender: UISlider) {
            weightLabel.text = "\(Int(sender.value))"
        }
    @objc func sliderValueChangedHeight(_ sender: UISlider) {
            heightLabel.text = "\(Int(sender.value))"
        }
    @objc func sliderValueChangedNeck(_ sender: UISlider) {
            neckLabel.text = "\(Int(sender.value))"
        }
    @objc func sliderValueChangedWaist(_ sender: UISlider) {
            waistLabel.text = "\(Int(sender.value))"
        }
   
    @objc func sliderValueChangedHip(_ sender: UISlider) {
            hipLabel.text = "\(Int(sender.value))"
        }
    
    
    @IBAction func acceptButtonMen(_ sender: Any) {
        chose = 1
        let img = UIImage(named: "Accept")
        buttonMen.setImage(img, for: .normal)
        buttonWoman.setImage(UIImage(), for: .normal)
        imageMen.image = UIImage(named: "BodyOnMen")
        imageWoman.image = UIImage(named: "BodyOfHer")
        
        
    }
    
    @IBAction func AcceptButtonWoman(_ sender: Any) {
        chose = 2
        let img = UIImage(named: "Accept")
        buttonWoman.setImage(img, for: .normal)
        buttonMen.setImage(UIImage(), for: .normal)
        imageMen.image = UIImage(named: "BodyOfMen")
        imageWoman.image = UIImage(named: "BodyOnHer")
    }
    

    
    func StringToInt(){
        age = Double(ageLabel.text!)!
        height = Double(heightLabel.text!)!
        weight = Double(weightLabel.text!)!
        waist = Double(waistLabel.text!)!
        hip = Double(hipLabel.text!)!
        neck = Double(neckLabel.text!)!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCalculateVC" {
            let destinationVC = segue.destination as! BodyFatViewController
            destinationVC.incomingResult = result
            destinationVC.incomingResultAge = age
            destinationVC.incomingResultLeanBody = Double(resultLeanBody)
            destinationVC.incomingResultBodyFatWeight = Double(resultBodyFatWeight)
            destinationVC.incomingChose = Int(chose)
            
            
        }
    }
    
    
}


