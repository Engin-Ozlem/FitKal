//
//  İmagePicker.swift
//  FitKal
//
//  Created by macbookair on 2.04.2023.
//

import Foundation
import UIKit


extension ProfilVC: UIImagePickerControllerDelegate,UINavigationControllerDelegate 
{
     func selectProfileImage()
    {
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.allowsEditing = true
        
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        var selectedImageFromPicker: UIImage?
        
        if let editedImage = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage
        {
            selectedImageFromPicker = editedImage
        }
        
        else if let originalImage = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerOrignalImage")] as? UIImage
        {
            selectedImageFromPicker = originalImage
        }
        
        if let selectedImage = selectedImageFromPicker
        {
            imageView.image = selectedImage
            uploadProfileImage(profileImage: selectedImage) { (url,error) in
                
                
                if error != nil
                {
                    print(error!.localizedDescription)
                    return
                }
                
                else
                {
                    if let url = url?.absoluteString
                    {
                        self.profileImageURL = url
                    }
                }
                
            }
        }
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        dismiss(animated: true, completion: nil)
    }
}
