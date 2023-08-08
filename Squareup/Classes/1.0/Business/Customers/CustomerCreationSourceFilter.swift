//
//  CustomerCreationSourceFilter.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

/// - CustomerCreationSourceFilter: The creation source filter.
/// If one or more creation sources are set, customer profiles are included in, or excluded from, the result if they match at least one of the filter criteria.
/// https://developer.squareup.com/reference/square/objects/CustomerCreationSourceFilter
open class CustomerCreationSourceFilter: Codable {
    
    /// - Values: The list of creation sources used as filtering criteria.
    var Values: CustomerCreationSource?
    /// - Rule: ndicates whether a customer profile matching the filter criteria should be included in the result or excluded from the result.
    /// Default: INCLUDE.
    var Rule: CustomerInclusionExclusion?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
        case Rule = "rule"
    }
}
