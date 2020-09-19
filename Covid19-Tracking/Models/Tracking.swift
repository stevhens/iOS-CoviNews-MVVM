//
//  Tracking.swift
//  Covid19-Tracking
//
//  Created by Stevhen on 19/09/20.
//

import Foundation

struct Tracking: Decodable {
    let state: String
    let total: Int
    let positive: Int
    let death: Int
    let hospitalized: Int?
}
