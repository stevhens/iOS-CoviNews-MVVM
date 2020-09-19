//
//  TrackingViewModel.swift
//  Covid19-Tracking
//
//  Created by Stevhen on 19/09/20.
//

import Foundation

class TrackingViewModel {
    
    var tracking: Tracking
    
    init(tracking: Tracking) {
        self.tracking = tracking
    }
    
    let id: UUID = UUID()
    
    var state: String {
        return self.tracking.state
    }
    
    var total: Int {
        return self.tracking.total
    }
    
    var positive: Int {
        return self.tracking.positive
    }
    
    var death: Int {
        return self.tracking.death
    }
    
    var hospitalized: Int {
        return self.tracking.hospitalized ?? 0
    }
}
