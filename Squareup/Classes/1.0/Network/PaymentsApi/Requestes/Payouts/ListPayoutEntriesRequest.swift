//
//  ListPayoutEntriesRequest.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

internal class ListPayoutEntriesRequest: Codable {
    
    /// - sortOrder: The order in which payout entries are listed.
    var sortOrder: SortOrder?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see Pagination. If request parameters change between requests, subsequent results may contain duplicates or missing records.
    var Cursor: String?
    /// - Limit: The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value. If the provided value is greater than 100, it is ignored and the default value is used instead. Default: 100
    var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case sortOrder = "sort_order"
        case Cursor = "cursor"
        case Limit = "limit"
    }
}
