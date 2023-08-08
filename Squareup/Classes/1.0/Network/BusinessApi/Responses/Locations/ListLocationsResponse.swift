//
//  ListLocationsResponse.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

open class ListLocationsResponse: SquareupResponse {
    
    /// - locations: The business locations.
    var locations: [Location]? = nil
    
    enum CodingKeys: String, CodingKey {
        case locations = "locations"
    }
}
