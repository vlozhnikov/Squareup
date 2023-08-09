//
//  ListLocationsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

public class ListLocationsResponse: SquareupResponse {
    
    /// - locations: The business locations.
    public var Locations: [Location]? = nil
    
    enum CodingKeys: String, CodingKey {
        case locations = "locations"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Locations = try container.decodeIfPresent([Location].self, forKey: .locations)
    }
}
