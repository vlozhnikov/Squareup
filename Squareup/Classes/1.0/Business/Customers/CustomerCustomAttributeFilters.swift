//
//  CustomerCustomAttributeFilters.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 8.06.23.
//

import Foundation

/// - CustomerCustomAttributeFilters: The custom attribute filters in a set of customer filters used in a search query.
/// Use this filter to search based on custom attributes that are assigned to customer profiles. For more information, see Search by custom attribute.
/// https://developer.squareup.com/reference/square/objects/CustomerCustomAttributeFilters
open class CustomerCustomAttributeFilters: Codable {
    
    /// - Filters: The custom attribute filters. Each filter must specify key and include the filter field with a type-specific filter, the updated_at field, or both. The provided keys must be unique within the list of custom attribute filters.
    public var Filters: [CustomerCustomAttributeFilter]?
    
    enum CodingKeys: String, CodingKey {
        case Filters = "filters"
    }
}
