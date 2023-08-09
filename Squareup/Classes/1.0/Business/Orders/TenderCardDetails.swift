//
//  TenderCardDetails.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 11.06.23.
//

import Foundation

/// - TenderCardDetails: Represents additional details of a tender with type CARD or SQUARE_GIFT_CARD
/// https://developer.squareup.com/reference/square/objects/TenderCardDetails
open class TenderCardDetails: Codable {
    
    /// - Status: The credit card payment's current state (such as AUTHORIZED or CAPTURED). See TenderCardDetailsStatus for possible values.
    public var Status: TenderCardDetailsStatus?
    /// - card: he credit card's non-confidential details.
    public var card: Card?
    /// - EntryMethod: The method used to enter the card's details for the transaction.
    public var EntryMethod: TenderCardDetailsEntryMethod?
    
    enum CodingKeys: String, CodingKey {
        case Status = "status"
        case card = "card"
        case EntryMethod = "entry_method"
    }
}
