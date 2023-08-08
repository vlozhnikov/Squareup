//
//  CreateLoyaltyAccountResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class CreateLoyaltyAccountResponse: SquareupResponse {
    
    /// - loyaltyAccount: The newly created loyalty account.
    var loyaltyAccount: LoyaltyAccount?
    
    enum CodingKeys: String, CodingKey {
        case loyaltyAccount = "loyalty_account"
    }
}
