//
//  InvoiceFilter.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 17.06.23.
//

import Foundation

/// - InvoiceFilter: Describes query filters to apply.
/// https://developer.squareup.com/reference/square/objects/InvoiceFilter
open class InvoiceFilter: Codable {
    
    /// - LocationIds: Limits the search to the specified locations. A location is required. In the current implementation, only one location can be specified.
    public var LocationIds: [String]?
    /// - CustomerIds: Limits the search to the specified customers, within the specified locations. Specifying a customer is optional. In the current implementation, a maximum of one customer can be specified.
    public var CustomerIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case LocationIds = "location_ids"
        case CustomerIds = "customer_ids"
    }
}
