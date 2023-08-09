//
//  ListGiftCardsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 26.06.23.
//

import Foundation

open class ListGiftCardsRequest: Codable {
    
    /// - type: If a type is provided, the endpoint returns gift cards of the specified type. Otherwise, the endpoint returns gift cards of all types.
    public var type: GiftCardType?
    /// - State: If a state is provided, the endpoint returns the gift cards in the specified state. Otherwise, the endpoint returns the gift cards of all states.
    public var State: GiftCardStatus?
    /// - Limit: If a limit is provided, the endpoint returns only the specified number of results per page. The maximum value is 50. The default value is 30. For more information, see Pagination.
    public var Limit: Int?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. If a cursor is not provided, the endpoint returns the first page of the results. For more information, see Pagination.
    public var Cursor: String?
    /// - CustomerId: If a customer ID is provided, the endpoint returns only the gift cards linked to the specified customer.
    public var CustomerId: String?
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case State = "state"
        case Limit = "limit"
        case Cursor = "cursor"
        case CustomerId = "customer_id"
    }
}
