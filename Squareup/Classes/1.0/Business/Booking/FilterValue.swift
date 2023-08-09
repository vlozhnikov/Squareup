//
//  FilterValue.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

/// - FilterValue: A filter to select resources based on an exact field value.
/// For any given value, the value can only be in one property. Depending on the field, either all properties can be set or only a subset will be available.
/// Refer to the documentation of the field.
/// https://developer.squareup.com/reference/square/objects/FilterValue
open class FilterValue: Codable {
    
    /// - All: A list of terms that must be present on the field of the resource.
    public var All: [String]?
    /// - any: A list of terms where at least one of them must be present on the field of the resource.
    public var any: [String]?
    /// - None: A list of terms that must not be present on the field the resource
    public var None: [String]?
    
    enum CodingKeys: String, CodingKey {
        case All = "all"
        case any = "any"
        case None = "none"
    }
}
