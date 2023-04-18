//
//  ViewController.swift
//  FitKal
//
//  Created by macbookair on 1.04.2023.
//

import UIKit
import FirebaseAuth
// password şifresi : 1Qwerty!





class SignInVC: UIViewController {
    
    @IBOutlet weak var emailTextLabel: UITextField!
    
    @IBOutlet weak var passwordTextLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
    }
    
    

    
    func validateFields() -> String?
    {
        // Check if all fields are filled.
        if emailTextLabel.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordTextLabel.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            return "Please fill in all the fields!"
        }
        return nil
    }
    
    
    @IBAction func SıgnInButton(_ sender: Any) {
        
        let error = validateFields()
        
        if error != nil
        {
            alert(titleInput: "error", messageInput: error!)
        }
        
        // if all the fiedld are correct then.
        else
        {
            // Create cleaned versions of data
            let email = emailTextLabel.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            let password = passwordTextLabel.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            // Signing in the user
            Auth.auth().signIn(withEmail: email, password: password) { result, error in
                
                if error != nil
                {
                    self.alert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                    
                    
                }
                
                // Successfully signed in user
                else
                {
                    self.performSegue(withIdentifier: "toWorkOutVC", sender: nil)
                }
                
            }
    
            
            
    

    }

        
        
        
    }
    
    func alert(titleInput:String , messageInput:String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

