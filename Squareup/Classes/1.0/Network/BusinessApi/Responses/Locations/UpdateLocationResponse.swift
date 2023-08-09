//
//  UpdateLocationResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

open class UpdateLocationResponse: SquareupResponse {
    
    /// - location: The updated Location object.
    public var location: Location?
    
    enum CodingKeys: String, CodingKey {
        case location = "location"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.location = try container.decodeIfPresent(Location.self, forKey: .location)
    }
}
