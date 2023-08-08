//
//  RetrieveLocationResponse.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

open class RetrieveLocationResponse: SquareupResponse {
    
    /// - location: The requested location.
    public var location: Location?
    
    enum CodingKeys: String, CodingKey {
        case location = "location"
    }
}
