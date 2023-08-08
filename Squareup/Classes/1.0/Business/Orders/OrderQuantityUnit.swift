//
//  OrderQuantityUnit.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - OrderQuantityUnit: Contains the measurement unit for a quantity and a precision that specifies the number of digits after the decimal point for decimal quantities.
/// https://developer.squareup.com/reference/square/objects/OrderQuantityUnit
open class OrderQuantityUnit: Codable {
    
    /// - MeasurementUnit: A MeasurementUnit that represents the unit of measure for the quantity.
    public var MeasurementUnit: MeasurementUnit?
    /// - Precision: For non-integer quantities, represents the number of digits after the decimal point that are recorded for this quantity.
    /// For example, a precision of 1 allows quantities such as "1.0" and "1.1", but not "1.01".
    /// Min: 0. Max: 5.
    public var Precision: Int?
    /// - CatalogObjectId: The catalog object ID referencing the CatalogMeasurementUnit.
    /// This field is set when this is a catalog-backed measurement unit.
    public var CatalogObjectId: String?
    /// - CatalogVersion: The version of the catalog object that this measurement unit references.
    /// This field is set when this is a catalog-backed measurement unit.
    public var CatalogVersion: Int?
    
    enum CodingKeys: String, CodingKey {
        case MeasurementUnit = "measurement_unit"
        case Precision = "precision"
        case CatalogObjectId = "catalog_object_id"
        case CatalogVersion = "catalog_version"
    }
}
