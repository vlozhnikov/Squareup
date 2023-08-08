//
//  ListPaymentRefundsRequest.swift
//  Squareup
//
//  Created by user on 2.07.23.
//

import Foundation

open class ListPaymentRefundsRequest: Codable {
    
    /// - BeginTime: Indicates the start of the time range to retrieve each PaymentRefundfor, in RFC 3339 format. The range is determined using thecreated_atfield for eachPaymentRefund`.
    /// Default: The current time minus one year.
//    var BeginTime: Date?
    @FormattedDate<RFC3339_Strategy> public var BeginTime: Date?
    /// - EndTime: Indicates the end of the time range to retrieve each PaymentRefund for, in RFC 3339 format. The range is determined using the created_at field for each PaymentRefund.
    /// Default: The current time.
//    var EndTime: Date?
    @FormattedDate<RFC3339_Strategy> public var EndTime: Date?
    /// - sortOrder: The order in which results are listed by PaymentRefund.created_at:
    /// ASC - Oldest to newest.
    /// DESC - Newest to oldest (default).
    public var sortOrder: SortOrder?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query.
    public var Cursor: String?
    /// - LocationId: Limit results to the location supplied. By default, results are returned for all locations associated with the seller.
    public var LocationId: String?
    /// - Status: If provided, only refunds with the given status are returned. For a list of refund status values, see PaymentRefund.
    /// Default: If omitted, refunds are returned regardless of their status.
    public var Status: PaymentRefundStatus?
    /// - SourceType: If provided, only returns refunds whose payments have the indicated source type. Current values include CARD, BANK_ACCOUNT, WALLET, CASH, and EXTERNAL. For information about these payment source types, see Take Payments.
    /// Default: If omitted, refunds are returned regardless of the source type.
    public var SourceType: PaymentRefundDestinationType?
    /// - Limit: The maximum number of results to be returned in a single page.
    /// It is possible to receive fewer results than the specified limit on a given page.
    /// If the supplied value is greater than 100, no more than 100 results are returned.
    /// Default: 100
    public var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case BeginTime = "begin_time"
        case EndTime = "end_time"
        case sortOrder = "sort_order"
        case Cursor = "cursor"
        case LocationId = "location_id"
        case Status = "status"
        case SourceType = "source_type"
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
//        self.Status = try container.decodeIfPresent(PaymentRefundStatus.self, forKey: .Status)
//        self.SourceType = try container.decodeIfPresent(PaymentRefundDestinationType.self, forKey: .SourceType)
//        self.Limit = try container.decodeIfPresent(Int.self, forKey: .Limit)
//    }
}
