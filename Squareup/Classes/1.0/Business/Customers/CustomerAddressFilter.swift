//
//  CustomerAddressFilter.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 8.06.23.
//

import Foundation

/// - CustomerAddressFilter: The customer address filter.
/// This filter is used in a CustomerCustomAttributeFilterValue filter when searching by an Address-type custom attribute.
/// https://developer.squareup.com/reference/square/objects/CustomerAddressFilter
open class CustomerAddressFilter: Codable {
    
    /// - PostalCode: The postal code to search for. Only an exact match is supported
    public var PostalCode: CustomerTextFilter?
    /// - Country: The country code to search for.
    public var country: Country?
    
    enum CodingKeys: String, CodingKey {
        case PostalCode = "postal_code"
        case country = "country"
    }
}
