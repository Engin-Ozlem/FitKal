//
//  Utilities.swift
//  FitKal
//
//  Created by macbookair on 1.04.2023.
//

import Foundation
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth



class Utilities
{
    
    
    static func isPasswordValid(_ password : String) -> Bool
    {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
    
    static func isValidEmail(_ email: String) -> Bool
    {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    
    static func fetchUserData(getDataFromDatabase: @escaping ()-> Void)
    {
        getDataFromDatabase()
    }
    
    
    static func updateProfileURLWithDocumentID(documentId: String,profileImageURL: String)
    {
        Firestore.firestore().collection("users").document(documentId).setData(["profileImageURL" :profileImageURL], merge: true)
    }
    
}
