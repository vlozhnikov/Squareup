//
//  RetrieveLoyaltyAccountResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class RetrieveLoyaltyAccountResponse: Codable {
    
    /// - loyaltyAccount: The loyalty account.
    var loyaltyAccount: LoyaltyAccount?
    
    enum CodingKeys: String, CodingKey {
        case loyaltyAccount = "loyalty_account"
    }
}
