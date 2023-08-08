//
//  DestinationDetailsCardRefundDetails.swift
//  Squareup
//
//  Created by user on 2.07.23.
//

import Foundation

/// - DestinationDetailsCardRefundDetails:
/// https://developer.squareup.com/reference/square/objects/DestinationDetailsCardRefundDetails
open class DestinationDetailsCardRefundDetails: Codable {
    
    /// - card: The card's non-confidential details.
    var card: Card?
    /// - EntryMethod: The method used to enter the card's details for the refund. The method can be KEYED, SWIPED, EMV, ON_FILE, or CONTACTLESS.
    var EntryMethod: DestinationDetailsCardRefundDetailsEntryMethod?
    
    enum CodingKeys: String, CodingKey {
        case card = "card"
        case EntryMethod = "entry_method"
    }
}
