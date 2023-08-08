//
//  ListLocationsResponse.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

public class ListLocationsResponse: SquareupResponse {
    
    /// - locations: The business locations.
    public var locations: [Location]? = nil
    
    enum CodingKeys: String, CodingKey {
        case locations = "locations"
    }
}
