//
//  AccumulateLoyaltyPointsRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

internal class AccumulateLoyaltyPointsRequest: Codable {
    
    /// - AccumulatePoints: The points to add to the account. If you are using the Orders API to manage orders, specify the order ID. Otherwise, specify the points to add.
    var AccumulatePoints: LoyaltyEventAccumulatePoints?
    /// - IdempotencyKey: A unique string that identifies the AccumulateLoyaltyPoints request. Keys can be any valid string but must be unique for every request.
    /// Min Length  1
    /// Max Length 128
    var IdempotencyKey: String?
    /// - LocationId: The location where the purchase was made.
    var LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case AccumulatePoints = "accumulate_points"
        case IdempotencyKey = "idempotency_key"
        case LocationId = "location_id"
    }
}
