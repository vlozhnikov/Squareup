//
//  FulfillmentPickupDetailsCurbsidePickupDetails.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - FulfillmentPickupDetailsCurbsidePickupDetails: Specific details for curbside pickup.
/// https://developer.squareup.com/reference/square/objects/FulfillmentPickupDetailsCurbsidePickupDetails
open class FulfillmentPickupDetailsCurbsidePickupDetails: Codable {
    
    /// - CurbsideDetails: Specific details for curbside pickup, such as parking number and vehicle model.
    /// Max Length 250
    var CurbsideDetails: String?
    /// - BuyerArrivedAt: The timestamp indicating when the buyer arrived and is waiting for pickup. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var BuyerArrivedAt: Date?
    @FormattedDate<RFC3339_Strategy> var BuyerArrivedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case CurbsideDetails = "curbside_details"
        case BuyerArrivedAt = "buyer_arrived_at"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.CurbsideDetails = try container.decodeIfPresent(String.self, forKey: .CurbsideDetails)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .BuyerArrivedAt), !dateString.isEmpty {
//            self.BuyerArrivedAt = try dateString.decode_RFC3339_Date(container, forKey: .BuyerArrivedAt)
//        }
//    }
}
