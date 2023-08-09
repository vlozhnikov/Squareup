//
//  UpdateLocationRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

open class UpdateLocationRequest: Codable {
    
    /// - location: The Location object with only the fields to update.
    public var location: Location?
    
    enum CodingKeys: String, CodingKey {
        case location = "location"
    }
}
