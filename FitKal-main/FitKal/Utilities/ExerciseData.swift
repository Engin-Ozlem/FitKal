//
//  ExerciseData.swift
//  FitKal
//
//  Created by macbookair on 11.04.2023.
//

import Foundation
class ExerciseListData
{
    
    
    static func getExercises(with bodyPart: String, completion: @escaping (Data?) ->())
    {
        
        let url = URL(string: "https://exercisedb.p.rapidapi.com/exercises/bodyPart/\(bodyPart)")
        
        guard url != nil else
        {
            print("Error creating url object!")
            return
        }
        
        
        var request = URLRequest(url: url!, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
        
        
        let headers = [
            "X-RapidAPI-Key": "d40567a3b3msh12a1afeea6e7417p192186jsn7ed8e8b8f6ab",
            "X-RapidAPI-Host": "exercisedb.p.rapidapi.com"
        ]
        
        request.allHTTPHeaderFields = headers
        
        
        request.httpMethod = "GET"
        
        
        let session = URLSession.shared
        
        
        let dataTask = session.dataTask(with: request) { data, response, error in
            
            
            if error != nil
            {
                print(error.debugDescription)
            }
            
            else
            {
                completion(data)
            }
        }
        
        
        dataTask.resume()
    }
        
}

