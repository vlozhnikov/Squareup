//
//  CreateLocationResponse.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

open class CreateLocationResponse: SquareupResponse {
    
    /// - location: The newly created Location object.
    public var location: Location?
    
    enum CodingKeys: String, CodingKey {
        case location = "location"
    }
}
