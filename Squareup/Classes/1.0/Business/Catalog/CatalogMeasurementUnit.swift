//
//  CatalogMeasurementUnit.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogMeasurementUnit: Represents the unit used to measure a CatalogItemVariation and specifies the precision for decimal quantities.
/// https://developer.squareup.com/reference/square/objects/CatalogMeasurementUnit
open class CatalogMeasurementUnit: Codable {
    
    /// - MeasurementUnit: Indicates the unit used to measure the quantity of a catalog item variation.
    public var MeasurementUnit: MeasurementUnit?
    /// - Precision: An integer between 0 and 5 that represents the maximum number of positions allowed after the decimal in quantities measured with this unit. For example:
    ///
    /// if the precision is 0, the quantity can be 1, 2, 3, etc.
    /// if the precision is 1, the quantity can be 0.1, 0.2, etc.
    /// if the precision is 2, the quantity can be 0.01, 0.12, etc.
    /// Default: 3
    public var Precision = 3
    
    enum CodingKeys: String, CodingKey {
        case MeasurementUnit = "measurement_unit"
        case Precision = "precision"
    }
}
