//
//  SearchLoyaltyAccountsRequestLoyaltyAccountQuery.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - SearchLoyaltyAccountsRequestLoyaltyAccountQuery: The search criteria for the loyalty accounts.
/// https://developer.squareup.com/reference/square/objects/SearchLoyaltyAccountsRequestLoyaltyAccountQuery
open class SearchLoyaltyAccountsRequestLoyaltyAccountQuery: Codable {
    
    /// - Mappings: The set of mappings to use in the loyalty account search.
    /// This cannot be combined with customer_ids.
    /// Max: 30 mappings
    var Mappings: LoyaltyAccountMapping?
    /// - CustomerIds: The set of customer IDs to use in the loyalty account search.
    /// This cannot be combined with mappings.
    ///  Max: 30 customer IDs
    var CustomerIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case Mappings = "mappings"
        case CustomerIds = "customer_ids"
    }
}
