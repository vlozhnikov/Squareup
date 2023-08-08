//
//  AdjustLoyaltyPointsRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class AdjustLoyaltyPointsRequest: Codable {
    
    /// - IdempotencyKey: A unique string that identifies this AdjustLoyaltyPoints request. Keys can be any valid string, but must be unique for every request.
    /// Min Length 1
    /// Max Length 128
    public var IdempotencyKey: String?
    /// - AdjustPoints: The points to add or subtract and the reason for the adjustment. To add points, specify a positive integer. To subtract points, specify a negative integer.
    public var AdjustPoints: LoyaltyEventAdjustPoints?
    /// - AllowNegativeBalance: Indicates whether to allow a negative adjustment to result in a negative balance. If true, a negative balance is allowed when subtracting points. If false, Square returns a BAD_REQUEST error when subtracting the specified number of points would result in a negative balance. The default value is false.
    public var AllowNegativeBalance: Bool?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case AdjustPoints = "adjust_points"
        case AllowNegativeBalance = "allow_negative_balance"
    }
}
