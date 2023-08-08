//
//  ListPaymentLinksRequest.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

internal class ListPaymentLinksRequest: Codable {
    
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. If a cursor is not provided, the endpoint returns the first page of the results. For more information, see Pagination.
    var Cursor: String?
    /// - Limit: A limit on the number of results to return per page. The limit is advisory and the implementation might return more or less results. If the supplied limit is negative, zero, or greater than the maximum limit of 1000, it is ignored.
    /// Default value: 100
    var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Limit = "limit"
    }
}
