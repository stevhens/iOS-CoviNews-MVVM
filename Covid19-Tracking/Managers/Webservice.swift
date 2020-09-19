//
//  Webservices.swift
//  Covid19-Tracking
//
//  Created by Stevhen on 19/09/20.
//

import Foundation

class Webservice {
    
    func getCovidTrackingResult(completion: @escaping ([Tracking]?) -> Void) {
        
        guard let url = URL(string: "https://covidtracking.com/api/v1/states/current.json") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                
                return completion(nil)
                
            }
            
            let trackingList = try? JSONDecoder().decode([Tracking].self, from: data)
            completion(trackingList)
        
        }.resume()
        
    }
}
