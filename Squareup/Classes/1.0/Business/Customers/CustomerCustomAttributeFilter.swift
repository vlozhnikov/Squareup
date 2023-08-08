//
//  CustomerCustomAttributeFilter.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

/// - CustomerCustomAttributeFilter: The custom attribute filter.
/// Use this filter in a set of custom attribute filters to search based on the value or last updated date of a customer-related custom attribute.
/// https://developer.squareup.com/reference/square/objects/CustomerCustomAttributeFilter
open class CustomerCustomAttributeFilter: Codable {
    
    /// - Key: The key of the custom attribute to filter by. The key is the identifier of the custom attribute (and the corresponding custom attribute definition) and can be retrieved using the Customer Custom Attributes API.
    public var Key: String?
    /// - Filter: A filter that corresponds to the data type of the target custom attribute. For example, provide the phone filter to search based on the value of a PhoneNumber-type custom attribute. The data type is specified by the schema field of the custom attribute definition, which can be retrieved using the Customer Custom Attributes API.
    /// You must provide this filter field, the updated_at field, or both.
    public var Filter: CustomerCustomAttributeFilterValue?
    /// - UpdatedAt: The date range for when the custom attribute was last updated. The date range can include start_at, end_at, or both. Range boundaries are inclusive. Dates are specified as RFC 3339 timestamps.
    /// You must provide this updated_at field, the filter field, or both.
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    public var UpdatedAt: TimeRange?
    
    enum CodingKeys: String, CodingKey {
        case Key = "key"
        case Filter = "filter"
        case UpdatedAt = "updated_at"
    }
}
