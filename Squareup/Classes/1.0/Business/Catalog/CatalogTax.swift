//
//  CatalogTax.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogTax: A tax applicable to an item.
/// https://developer.squareup.com/reference/square/objects/CatalogTax
open class CatalogTax: Codable {
    
    /// - Name: The tax's name. This is a searchable attribute for use in applicable query filters, and its value length is of Unicode code points. Max Length 255.
    var Name: String?
    /// - CalculationPhase: Whether the tax is calculated based on a payment's subtotal or total.
    var CalculationPhase: TaxCalculationPhase?
    /// - InclusionType: Whether the tax is ADDITIVE or INCLUSIVE.
    var InclusionType: TaxInclusionType?
    /// - Percentage: The percentage of the tax in decimal form, using a '.' as the decimal separator and without a '%' sign. A value of 7.5 corresponds to 7.5%. For a location-specific tax rate, contact the tax authority of the location or a tax consultant.
    var Percentage: String?
    /// - AppliesToCustomAmounts: If true, the fee applies to custom amounts entered into the Square Point of Sale app that are not associated with a particular CatalogItem.
    var AppliesToCustomAmounts: Bool?
    /// - Enabled: A Boolean flag to indicate whether the tax is displayed as enabled (true) in the Square Point of Sale app or not (false).
    var Enabled: Bool?
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case CalculationPhase = "calculation_phase"
        case InclusionType = "inclusion_type"
        case Percentage = "percentage"
        case AppliesToCustomAmounts = "applies_to_custom_amounts"
        case Enabled = "enabled"
    }
}
