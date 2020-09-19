//
//  ContentView.swift
//  Covid19-Tracking
//
//  Created by Stevhen on 19/09/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var trackingListVM = TrackingListViewModel()
    
    init() {
        self.trackingListVM.getTrackingData()
    }
    
    var body: some View {
        NavigationView {
            
            List(self.trackingListVM.trackings, id: \.id) { tracking in
                
                TrackingRowView(tracking: tracking)
            }
            
            .navigationBarTitle("Covid 19 Tracking", displayMode: .large)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
