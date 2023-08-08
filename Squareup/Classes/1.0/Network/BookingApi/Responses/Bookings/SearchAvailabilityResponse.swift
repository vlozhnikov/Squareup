//
//  SearchAvailabilityResponse.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

open class SearchAvailabilityResponse: SquareupResponse {
    
    var Availabilities: [Availability]?
    
    enum CodingKeys: String, CodingKey {
        case Availabilities = "availabilities"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Availabilities = try container.decodeIfPresent([Availability].self, forKey: .Availabilities)
    }
}
