//
//  ListCustomersResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 8.06.23.
//

import Foundation

open class ListCustomersResponse: SquareupResponse {
    
    /// - Customers: The customer profiles associated with the Square account or an empty object ({}) if none are found.
    public var Customers: [Customer]?
    /// - Cursor: A pagination cursor to retrieve the next set of results for the original query. A cursor is only present if the request succeeded and additional results are available.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Customers = "customers"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Customers = try container.decodeIfPresent([Customer].self, forKey: .Customers)
    }
}
