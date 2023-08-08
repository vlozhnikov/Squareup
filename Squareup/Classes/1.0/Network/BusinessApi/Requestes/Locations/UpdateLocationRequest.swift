//
//  UpdateLocationRequest.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

internal class UpdateLocationRequest: Codable {
    
    /// - location: The Location object with only the fields to update.
    var location: Location?
    
    enum CodingKeys: String, CodingKey {
        case location = "location"
    }
}