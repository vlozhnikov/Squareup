//
//  CreateLoyaltyAccountRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class CreateLoyaltyAccountRequest: Codable {
    
    /// - loyaltyAccount: The loyalty account to create.
    public var loyaltyAccount: LoyaltyAccount?
    /// - IdempotencyKey: A unique string that identifies this CreateLoyaltyAccount request. Keys can be any valid string, but must be unique for every request.
    /// Min Length 1
    /// Max Length 128
    public var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case loyaltyAccount = "loyalty_account"
        case IdempotencyKey = "idempotency_key"
    }
}
