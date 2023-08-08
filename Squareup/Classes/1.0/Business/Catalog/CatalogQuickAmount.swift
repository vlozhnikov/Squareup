//
//  CatalogQuickAmount.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogQuickAmount: Represents a Quick Amount in the Catalog.
/// https://developer.squareup.com/reference/square/objects/CatalogQuickAmount
open class CatalogQuickAmount: Codable {
    
    /// - type: Required
    /// Represents the type of the Quick Amount.
    var type: CatalogQuickAmountType?
    /// - Amount: Required
    /// Represents the actual amount of the Quick Amount with Money type.
    var Amount: Money?
    /// - Score: Describes the ranking of the Quick Amount provided by machine learning model, in the range [0, 100]. MANUAL type amount will always have score = 100.
    var Score: Int?
    /// - Ordinal: The order in which this Quick Amount should be displayed.
    var Ordinal: Int?
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case Amount = "amount"
        case Score = "score"
        case Ordinal = "ordinal"
    }
}
