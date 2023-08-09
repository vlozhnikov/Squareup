//
//  CustomerQuery.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 8.06.23.
//

import Foundation

/// - CustomerQuery: Represents filtering and sorting criteria for a SearchCustomers request.
/// https://developer.squareup.com/reference/square/objects/CustomerQuery
open class CustomerQuery: Codable {
    
    /// - Filter: The filtering criteria for the search query. A query can contain multiple filters in any combination. Multiple filters are combined as AND statements.
    /// Note: Combining multiple filters as OR statements is not supported. Instead, send multiple single-filter searches and join the result sets.
    public var Filter: CustomerFilter?
    /// - Sort: Sorting criteria for query results. The default behavior is to sort customers alphabetically by given_name and family_name.
    public var Sort: CustomerSort?
    
    enum CodingKeys: String, CodingKey {
        case Filter = "filter"
        case Sort = "sort"
    }
}
