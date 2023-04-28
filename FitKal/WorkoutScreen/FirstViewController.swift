//
//  FirstViewController.swift
//  FitKal
//
//  Created by macbookair on 18.04.2023.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var bodyButton: UIButton!
    
    @IBOutlet weak var armWrestlingButton: UIButton!
    @IBOutlet weak var calculatorButton: UIButton!
    
    @IBOutlet weak var warmupButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.navigationItem.hidesBackButton = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.navigationItem.hidesBackButton = true
    }

    
}
