//
//  UpdateLocationResponse.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

open class UpdateLocationResponse: SquareupResponse {
    
    /// - location: The updated Location object.
    public var location: Location?
    
    enum CodingKeys: String, CodingKey {
        case location = "location"
    }
}
