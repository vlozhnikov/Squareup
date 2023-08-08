//
//  ListPaymentsResponse.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation

open class ListPaymentsResponse: SquareupResponse {
    
    /// - Payments: he requested list of payments.
    public var Payments: [Payment]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If empty, this is the final response.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Payments = "payments"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Payments = try container.decodeIfPresent([Payment].self, forKey: .Payments)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
