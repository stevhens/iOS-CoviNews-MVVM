//
//  TrackingRowView.swift
//  Covid19-Tracking
//
//  Created by Stevhen on 19/09/20.
//

import SwiftUI

struct TrackingRowView: View {
    
    var tracking: TrackingViewModel
    
    var body: some View {
        HStack {
            
            Text(tracking.state)
                .padding()
                .foregroundColor(Color.white)
                .background(Color.orange)
                .clipShape(Circle())
                .font(.custom("", size: 22))
            
            Spacer()
            
            VStack {
                
                Text("\(tracking.total)")
                    .foregroundColor(Color.gray)
                    .font(.custom("", size: 32))
                
                HStack {
                    Text("😢 \(tracking.death)")
                    
                    Text("🏥 \(tracking.hospitalized)")
                }
                
            }
            
            Spacer()
        }
    }
}
