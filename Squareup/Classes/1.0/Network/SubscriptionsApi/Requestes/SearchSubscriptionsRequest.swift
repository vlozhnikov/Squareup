//
//  SearchSubscriptionsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 23.06.23.
//

import Foundation

open class SearchSubscriptionsRequest: Codable {
    
    /// - Cursor: When the total number of resulting subscriptions exceeds the limit of a paged response, specify the cursor returned from a preceding response here to fetch the next set of results. If the cursor is unset, the response contains the last page of the results.
    public var Cursor: String?
    /// - Limit: The upper limit on the number of subscriptions to return in a paged response.
    /// Min 1
    public var Limit: Int?
    /// - Query: A subscription query consisting of specified filtering conditions.
    /// If this query field is unspecified, the SearchSubscriptions call will return all subscriptions.
    public var Query: SearchSubscriptionsQuery?
    /// - Include: An option to include related information in the response.
    /// The supported values are:
    ///     actions: to include scheduled actions on the targeted subscriptions.
    public var Include: [String]?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Limit = "limit"
        case Query = "query"
        case Include = "include"
    }
}
