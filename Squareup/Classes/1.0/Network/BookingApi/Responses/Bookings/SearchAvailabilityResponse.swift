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
}
