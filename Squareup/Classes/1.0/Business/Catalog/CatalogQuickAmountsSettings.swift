//
//  CatalogQuickAmountsSettings.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogQuickAmountsSettings: A parent Catalog Object model represents a set of Quick Amounts and the settings control the amounts.
/// https://developer.squareup.com/reference/square/objects/CatalogQuickAmountsSettings
open class CatalogQuickAmountsSettings: Codable {
    
    /// - Option: Required
    /// Represents the option seller currently uses on Quick Amounts.
    var Option: CatalogQuickAmountsSettingsOption?
    /// - EligibleForAutoAmounts: Represents location's eligibility for auto amounts The boolean should be consistent with whether there are AUTO amounts in the amounts.
    var EligibleForAutoAmounts: Bool?
    /// - Amounts: Represents a set of Quick Amounts at this location.
    var Amounts: CatalogQuickAmount?
    
    enum CodingKeys: String, CodingKey {
        case Option = "option"
        case EligibleForAutoAmounts = "eligible_for_auto_amounts"
        case Amounts = "amounts"
    }
}
