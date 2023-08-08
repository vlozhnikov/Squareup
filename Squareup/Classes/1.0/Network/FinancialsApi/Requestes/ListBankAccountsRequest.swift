//
//  ListBankAccountsRequest.swift
//  Squareup
//
//  Created by user on 19.06.23.
//

import Foundation

internal class ListBankAccountsRequest: Codable {
    
    /// - Cursor: The pagination cursor returned by a previous call to this endpoint. Use it in the next ListBankAccounts request to retrieve the next set of results.
    /// See the Pagination guide for more information.
    var Cursor: String?
    /// - Limit: Upper limit on the number of bank accounts to return in the response. Currently, 1000 is the largest supported limit. You can specify a limit of up to 1000 bank accounts. This is also the default limit.
    var Limit: Int?
    /// - LocationId: Location ID. You can specify this optional filter to retrieve only the linked bank accounts belonging to a specific location.
    var LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Limit = "limit"
        case LocationId = "location_id"
    }
}
