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
//    var BeginTime: Date?
    @FormattedDate<RFC3339_Strategy> public var BeginTime: Date?
    /// - EndTime: Indicates the end of the time range to retrieve payments for, in RFC 3339 format. The range is determined using the created_at field for each Payment.
    /// Default: The current time.
//    var EndTime: Date?
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
    
//    required init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .BeginTime), !dateString.isEmpty {
//            self.BeginTime = try dateString.decode_RFC3339_Date(container, forKey: .BeginTime)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .EndTime), !dateString.isEmpty {
//            self.EndTime = try dateString.decode_RFC3339_Date(container, forKey: .EndTime)
//        }
//        self.sortOrder = try container.decodeIfPresent(SortOrder.self, forKey: .sortOrder)
//        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        self.Total = try container.decodeIfPresent(Int.self, forKey: .Total)
//        self.Last4 = try container.decodeIfPresent(String.self, forKey: .Last4)
//        self.CardBrand = try container.decodeIfPresent(String.self, forKey: .CardBrand)
//        self.Limit = try container.decodeIfPresent(Int.self, forKey: .Limit)
//    }
}
