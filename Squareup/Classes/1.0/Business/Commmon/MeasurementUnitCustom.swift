//
//  MeasurementUnitCustom.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - MeasurementUnitCustom: The information needed to define a custom unit, provided by the seller.
/// https://developer.squareup.com/reference/square/objects/MeasurementUnitCustom
open class MeasurementUnitCustom: Codable {
    
    /// - Name: Required
    /// The name of the custom unit, for example "bushel".
    public var Name: String?
    /// - Abbreviation: Required
    /// The abbreviation of the custom unit, such as "bsh" (bushel). This appears in the cart for the Point of Sale app, and in reports.
    public var Abbreviation: String?
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case Abbreviation = "abbreviation"
    }
}
