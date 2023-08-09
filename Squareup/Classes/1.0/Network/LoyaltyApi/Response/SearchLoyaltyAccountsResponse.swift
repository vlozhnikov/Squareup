//
//  SearchLoyaltyAccountsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

open class SearchLoyaltyAccountsResponse: SquareupResponse {
    
    /// - LoyaltyAccounts: The loyalty accounts that met the search criteria, in order of creation date.
    public var LoyaltyAccounts: [LoyaltyAccount]?
    /// - Cursor: The pagination cursor to use in a subsequent request. If empty, this is the final response. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyAccounts = "loyalty_accounts"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.LoyaltyAccounts = try container.decodeIfPresent([LoyaltyAccount].self, forKey: .LoyaltyAccounts)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
