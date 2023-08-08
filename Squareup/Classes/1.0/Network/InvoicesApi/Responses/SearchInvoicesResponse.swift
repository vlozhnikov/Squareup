//
//  SearchInvoicesResponse.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

open class SearchInvoicesResponse: SquareupResponse {
    
    /// - Invoices: The list of invoices returned by the search.
    public var Invoices: [Invoice]?
    /// - Cursor: When a response is truncated, it includes a cursor that you can use in a subsequent request to fetch the next set of invoices. If empty, this is the final response. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Invoices = "invoices"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Invoices = try container.decodeIfPresent([Invoice].self, forKey: .Invoices)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
