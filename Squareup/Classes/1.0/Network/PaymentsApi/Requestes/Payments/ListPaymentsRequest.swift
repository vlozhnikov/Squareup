//
//  ListPaymentsRequest.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation

open class ListPaymentsRequest: Codable {
    
    /// - BeginTime: Indicates the start of the time range to retrieve payments for, in RFC 3339 format.
    /// The range is determined using the created_at field for each Payment. Inclusive. Default: The current time minus one year.
    @FormattedDate<RFC3339_Strategy> public var BeginTime: Date?
    /// - EndTime: Indicates the end of the time range to retrieve payments for, in RFC 3339 format. The range is determined using the created_at field for each Payment.
    /// Default: The current time.
    @FormattedDate<RFC3339_Strategy> public var EndTime: Date?
    /// - sortOrder: The order in which results are listed by Payment.created_at:
    /// ASC - Oldest to newest.
    /// DESC - Newest to oldest (default).
    public var sortOrder: SortOrder?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query.
    public var Cursor: String?
    /// - LocationId: Limit results to the location supplied. By default, results are returned for the default (main) location associated with the seller.
    public var LocationId: String?
    /// - Total: The exact amount in the total_money for a payment.
    public var Total: Int?
    /// - Last4: the last four digits of a payment card.
    public var Last4: String?
    /// - CardBrand: The brand of the payment card (for example, VISA).
    public var CardBrand: String?
    /// - Limit: The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page.
    /// The default value of 100 is also the maximum allowed value. If the provided value is greater than 100, it is ignored and the default value is used instead.
    /// Default: 100
    public var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case BeginTime = "begin_time"
        case EndTime = "end_time"
        case sortOrder = "sort_order"
        case Cursor = "cursor"
        case LocationId = "location_id"
        case Total = "total"
        case Last4 = "last_4"
        case CardBrand = "card_brand"
        case Limit = "limit"
    }
}
