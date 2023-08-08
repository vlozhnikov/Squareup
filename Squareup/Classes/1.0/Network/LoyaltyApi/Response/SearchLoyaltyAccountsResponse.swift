//
//  SearchLoyaltyAccountsResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class SearchLoyaltyAccountsResponse: SquareupResponse {
    
    /// - LoyaltyAccounts: The loyalty accounts that met the search criteria, in order of creation date.
    var LoyaltyAccounts: [LoyaltyAccount]?
    /// - Cursor: The pagination cursor to use in a subsequent request. If empty, this is the final response. For more information, see Pagination.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyAccounts = "loyalty_accounts"
        case Cursor = "cursor"
    }
}
