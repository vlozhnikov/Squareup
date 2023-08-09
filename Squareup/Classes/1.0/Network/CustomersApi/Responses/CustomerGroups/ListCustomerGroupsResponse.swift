//
//  ListCustomerGroupsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 5.05.23.
//

import Foundation

open class ListCustomerGroupsResponse: SquareupResponse {
    
    /// - Groups: A list of customer groups belonging to the current seller.
    public var Groups: [CustomerGroup]?
    /// - Cursor: A pagination cursor to retrieve the next set of results for your original query to the endpoint. This value is present only if the request succeeded and additional results are available.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Groups = "groups"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Groups = try container.decodeIfPresent([CustomerGroup].self, forKey: .Groups)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
