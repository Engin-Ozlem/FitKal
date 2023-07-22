//
//  Methods.swift
//  FitKal
//
//  Created by macbookair on 2.04.2023.
//

import Foundation
import FirebaseStorage




extension ProfilVC
{
    // Function to upload image to firebase storage.
    func uploadProfileImage(profileImage: UIImage,getProfileImageDownloadURL: @escaping (_ url: URL?,_ error: Error?) -> Void)
    {
        // Generating a unique string for unique users profile image name.
        let imageName = NSUUID().uuidString
        
        // Reference of storage
        let storageRef = Storage.storage().reference().child("Profile_Images").child("\(imageName).png")
        
        // Upload image to storage
        if let uploadData = profileImage.pngData()
        {
            storageRef.putData(uploadData, metadata: nil) { (metadata, error) in
                
                if error != nil
                {
                    print("Error while uploading image \(error!.localizedDescription)")
                    return
                }
                
                print(metadata!)
                print("Image uploaded successfully.")
                
                storageRef.downloadURL { (url, error) in
                    
                    getProfileImageDownloadURL(url,error)
                    
                    // After uploading image, setting image url in users document.
                    Utilities.updateProfileURLWithDocumentID(documentId: self.userDocumentID, profileImageURL: self.profileImageURL)
                }
            }
        }
    }
    
    // Function to get the saved image from database.
    func downloadProfileImage(profileImageURL: String, downloadProfileImage: @escaping (_ data: Data?,_ response: URLResponse?,_ error: Error?)-> Void) -> Void
    {
        let url = URL(string: profileImageURL)
        // Performing HTTPS Request with url
        guard url != nil else
        {
            return
        }
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            
            downloadProfileImage(data, response, error)
        }.resume()
    }
    
    // Methods for setting profile details.
    func updateProfileDetails(name: String,email: String)
    {
        usernamelabel?.text = name
        emailLabel?.text = email
    }
    
    
    
    
    func setLabelOpacityToOne()
    {
        usernamelabel.layer.opacity = 1
        emailLabel.layer.opacity = 1
    }
    
    
}
