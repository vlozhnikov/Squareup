//
//  LoyaltyProgramTerminology.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyProgramTerminology: Represents the naming used for loyalty points.
/// https://developer.squareup.com/reference/square/objects/LoyaltyProgramTerminology
open class LoyaltyProgramTerminology: Codable {
    
    /// - One: A singular unit for a point (for example, 1 point is called 1 star).
    /// Min Length  1
    var One: String?
    /// - Other: A plural unit for point (for example, 10 points is called 10 stars).
    /// Min Length 1
    var Other: String?
    
    enum CodingKeys: String, CodingKey {
        case One = "one"
        case Other = "other"
    }
}
