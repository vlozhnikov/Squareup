//
//  ListCustomerGroupsResponse.swift
//  Business Calendar
//
//  Created by user on 5.05.23.
//

import Foundation

open class ListCustomerGroupsResponse: SquareupResponse {
    
    /// - Groups: A list of customer groups belonging to the current seller.
    var Groups = [CustomerGroup]()
    /// - Cursor: A pagination cursor to retrieve the next set of results for your original query to the endpoint. This value is present only if the request succeeded and additional results are available.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Groups = "groups"
        case Cursor = "cursor"
    }
}
