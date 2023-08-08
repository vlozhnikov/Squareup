//
//  ListPaymentRefundsResponse.swift
//  Squareup
//
//  Created by user on 2.07.23.
//

import Foundation

open class ListPaymentRefundsResponse: SquareupResponse {
    
    /// - Refunds: The list of requested refunds.
    public var Refunds: [PaymentRefund]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If empty, this is the final response.
    /// For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Refunds = "refunds"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Refunds = try container.decodeIfPresent([PaymentRefund].self, forKey: .Refunds)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}

