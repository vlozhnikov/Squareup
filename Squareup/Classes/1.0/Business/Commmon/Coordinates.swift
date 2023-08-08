//
//  Coordinates.swift
//  Business Calendar
//
//  Created by user on 11.04.23.
//

import Foundation

/// - Coordinates: Latitude and longitude coordinates.
/// https://developer.squareup.com/reference/square/objects/Coordinates
open class Coordinates: Codable {
    
    /// - Latitude: The latitude of the coordinate expressed in degrees.
    public var Latitude: Float?
    /// - Longitude: The longitude of the coordinate expressed in degrees.
    public var Longitude: Float?
    
    enum CodingKeys: String, CodingKey {
        case Latitude = "latitude"
        case Longitude = "longitude"
    }
}
