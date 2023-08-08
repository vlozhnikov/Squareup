//
//  ListPayoutsResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class ListPayoutsResponse: SquareupResponse {
    
    /// - Payouts: The requested list of payouts.
    public var Payouts: [Payout]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If empty, this is the final response. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Payouts = "payouts"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Payouts = try container.decodeIfPresent([Payout].self, forKey: .Payouts)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
