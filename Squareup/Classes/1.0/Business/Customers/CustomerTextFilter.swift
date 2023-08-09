//
//  CustomerTextFilter.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 8.06.23.
//

import Foundation

/// - CustomerTextFilter: A filter to select customers based on exact or fuzzy matching of customer attributes against a specified query.
/// Depending on the customer attributes, the filter can be case-sensitive. This filter can be exact or fuzzy, but it cannot be both.
/// https://developer.squareup.com/reference/square/objects/CustomerTextFilter
open class CustomerTextFilter: Codable {
    
    /// - Exact: Use the exact filter to select customers whose attributes match exactly the specified query.
    public var Exact: String?
    /// - Fuzzy: Use the fuzzy filter to select customers whose attributes match the specified query in a fuzzy manner. When the fuzzy option is used, search queries are tokenized, and then each query token must be matched somewhere in the searched attribute. For single token queries, this is effectively the same behavior as a partial match operation.
    public var Fuzzy: String?
    
    enum CodingKeys: String, CodingKey {
        case Exact = "exact"
        case Fuzzy = "fuzzy"
    }
}
