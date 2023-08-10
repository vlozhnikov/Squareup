//
//  SearchAvailabilityRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

internal class SearchAvailabilityRequest: Codable {
    
    /// - Query: Query conditions used to filter buyer-accessible booking availabilities.
    var Query: SearchAvailabilityQuery?
    
    enum CodingKeys: String, CodingKey {
        case Query = "query"
    }
}
