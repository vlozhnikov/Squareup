//
//  RetrieveCashDrawerShiftRequest.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

internal class RetrieveCashDrawerShiftRequest: Codable {
    
    /// - LocationId: The ID of the location to retrieve cash drawer shifts from.
    var LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
    }
}
