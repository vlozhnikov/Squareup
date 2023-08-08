//
//  ListCardsRequest.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class ListCardsRequest: Codable {
    
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.
    public var Cursor: String?
    /// - CustomerId: Limit results to cards associated with the customer supplied. By default, all cards owned by the merchant are returned.
    public var CustomerId: String?
    /// - IncludeDisabled: Includes disabled cards. By default, all enabled cards owned by the merchant are returned.
    public var IncludeDisabled: Bool?
    /// - ReferenceId: Limit results to cards associated with the reference_id supplied
    public var ReferenceId: String?
    /// - sortOrder: Sorts the returned list by when the card was created with the specified order. This field defaults to ASC.
    public var sortOrder: SortOrder?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case CustomerId = "customer_id"
        case IncludeDisabled = "include_disabled"
        case ReferenceId = "reference_id"
        case sortOrder = "sort_order"
    }
}
