//
//  SearchInvoicesRequest.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

internal class SearchInvoicesRequest: Codable {
    
    /// - Query: Describes the query criteria for searching invoices.
    var Query: InvoiceQuery?
    /// - Limit: The maximum number of invoices to return (200 is the maximum limit). If not provided, the server uses a default limit of 100 invoices.
    var Limit: Int?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for your original query.
    /// For more information, see Pagination.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Query = "query"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
