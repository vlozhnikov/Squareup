//
//  DestinationDetails.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.07.23.
//

import Foundation

/// - DestinationDetails: Details about a refund's destination.
/// https://developer.squareup.com/reference/square/objects/DestinationDetails
open class DestinationDetails: Codable {
    
    /// - CardDetails: Details about a card refund. Only populated if the destination_type is CARD.
    public var CardDetails: DestinationDetailsCardRefundDetails?
    
    enum CodingKeys: String, CodingKey {
        case CardDetails = "card_details"
    }
}
