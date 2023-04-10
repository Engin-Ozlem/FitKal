//
//  ProfilVC.swift
//  FitKal
//
//  Created by macbookair on 2.04.2023.
//

import UIKit
import FirebaseFirestore
import FirebaseCore
import FirebaseAuth

class ProfilVC: UIViewController {
    
    
    
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var usernamelabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var userDocumentID: String = ""
    var profileImageURL: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
            
            Firestore.firestore().collection("users").getDocuments { querySnapshot, error in
                
                // Check for errors
                if let error = error
                {
                    print("Error getting document \(error)")
                }
                
                else
                {
                    guard let currentUserUid = Auth.auth().currentUser?.uid else
                    {
                        print("Unexpectedly found nil while unwrapping current user id!")
                        return
                    }
                    for document in querySnapshot!.documents
                    {
                        
                        if let name = document["username"] as? String,let emailAddress = document["userEmail"] as? String,let uid = document["uid"] as? String, let profileImageURL = document["profileImageURL"] as? String
                        {
                            // Setting up the profile contents wrt to current user.
                            if uid == currentUserUid
                            {
                                self.userDocumentID = document.documentID
                                self.setLabelOpacityToOne()
                                self.downloadProfileImage(profileImageURL: profileImageURL ) { data, response, error in
                                    
                                    // Something went wrong while downloading.
                                    if error != nil
                                    {
                                        print(error!.localizedDescription)
                                        return
                                    }
                                    // Setting the image as profile image which was recieved from database
                                    DispatchQueue.main.async
                                    {
                                        self.imageView.image = UIImage(data: data!)
                                    }
                                    
                                }
                                self.updateProfileDetails(name: name, email: emailAddress)
                            }
                        }
                        else
                        {
                            print(error?.localizedDescription ?? "Successfully retrived data.")
                        }
                    }
                    
                }
                
            }
        
        
        
        
    }
    
    @IBAction func addPhotoTapped(_ sender: UIButton)
    {
        
        selectProfileImage()
        
    }
    
    @IBAction func signOutButtonTapped(_ sender: UIButton)
    {
        // Code for sign out user.
        let firebaseAuth = Auth.auth()
        
        do
        {
            try firebaseAuth.signOut()
            performSegue(withIdentifier: "toSingInVC", sender: nil)
        }
        
        catch let signOutError as NSError
        {
            print("Error signing out: %@", signOutError)
        }
        
    }
    

}
