//
//  TrackingListViewModel.swift
//  Covid19-Tracking
//
//  Created by Stevhen on 19/09/20.
//

import Foundation

class TrackingListViewModel: ObservableObject {
    
    @Published var trackings = [TrackingViewModel]()
    
    func getTrackingData() {
        
        Webservice().getCovidTrackingResult { trackingList in
            if let trackingList = trackingList {
                
                DispatchQueue.main.async {
                    self.trackings = trackingList.map(TrackingViewModel.init)
                }
                
            }
        }
        
    }
}
