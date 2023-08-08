//
//  MeasurementUnit.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - MeasurementUnit: Represents a unit of measurement to use with a quantity, such as ounces or inches.
/// Exactly one of the following fields are required: custom_unit, area_unit, length_unit, volume_unit, and weight_unit.
/// https://developer.squareup.com/reference/square/objects/MeasurementUnit
open class MeasurementUnit: Codable {
    
    /// - CustomUnit: A custom unit of measurement defined by the seller using the Point of Sale app or ad-hoc as an order line item.
    public var CustomUnit: MeasurementUnitCustom?
    /// - AreaUnit: Represents a standard area unit.
    public var AreaUnit: MeasurementUnitArea?
    /// - LengthUnit: Represents a standard length unit.
    public var LengthUnit: MeasurementUnitLength?
    /// - VolumeUnit: Represents a standard volume unit.
    public var VolumeUnit: MeasurementUnitVolume?
    /// - WeightUnit: Represents a standard unit of weight or mass.
    public var WeightUnit: MeasurementUnitWeight?
    /// - GenericUnit: Reserved for API integrations that lack the ability to specify a real measurement unit
    public var GenericUnit: MeasurementUnitGeneric?
    /// - TimeUnit: Represents a standard unit of time.
    public var TimeUnit: MeasurementUnitTime?
    /// - UnitType: Represents the type of the measurement unit.
    public var UnitType: MeasurementUnitUnitType?
    
    enum CodingKeys: String, CodingKey {
        case CustomUnit = "custom_unit"
        case AreaUnit = "area_unit"
        case LengthUnit = "length_unit"
        case VolumeUnit = "volume_unit"
        case WeightUnit = "weight_unit"
        case GenericUnit = "generic_unit"
        case TimeUnit = "time_unit"
        case UnitType = "type"
    }
}
