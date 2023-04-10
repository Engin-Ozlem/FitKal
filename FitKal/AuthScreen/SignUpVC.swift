//
//  SignUpVC.swift
//  FitKal
//
//  Created by macbookair on 1.04.2023.
//


import UIKit
import FirebaseAuth // importing required classes and methods for creating users.
import FirebaseFirestore


class SignUpVC: UIViewController {
    
    @IBOutlet weak var fullNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
       self.navigationController?.isNavigationBarHidden = false
    }
    
    
    func validateField() -> String?
    {
        // Check that all fields are filled in.
        if fullNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            return "Please fill in all fields."
        }
        // Check if email is valid.
        let cleanedEmail = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isValidEmail(cleanedEmail) == false
        {
            // Email is not valid
            return "Please enter a valid email."
        }
        // Check if the password is secure.
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false
        {
            // Password is not secure enough.
            
            return "Please make sure your password is atleast 8 characters, contains a special character and a number."
        }
        
        return nil
    }
    

    
    @IBAction func SignUpButton(_ sender: Any) {
        
        
        // Validate the fields
        let error = validateField()
        
        if error != nil
        {
            // There's something wrong with fields.
            alert(titleInput: "Error!", messageInput: error!) // Hide loading view if user not filled field properly.
        }
        
        // if all the fields are correct then
        else
        {
            // Create cleaned versions of data
            let userName = fullNameTextField.text!
            
            let userEmail = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            // Create the user
            Auth.auth().createUser(withEmail: userEmail, password: password) { result, err in
                
                // check for errors
                if err != nil
                {
                    self.alert(titleInput: "Error!", messageInput: error!)
                }
                
                else
                {
            
                    // User created successfully, now store user data.
                    Firestore.firestore().collection("users").addDocument(data: ["username":userName ,"userEmail":userEmail,"uid":result!.user.uid,"profileImageURL":""]) { error in
                        
                        if error != nil
                        {
                            // Show error message
                            self.alert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error")
                        }
                    }
                    
                    // Transition user to tab bar controller.
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

