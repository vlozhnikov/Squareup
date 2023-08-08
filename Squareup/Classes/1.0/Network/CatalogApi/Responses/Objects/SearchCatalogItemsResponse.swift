//
//  SearchCatalogItemsResponse.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

open class SearchCatalogItemsResponse: SquareupResponse {
    
    var Items = [CatalogObject]()
    var Cursor: String?
    var MatchedVariationIds = [String]()
    
    enum CodingKeys: String, CodingKey {
        case Items = "items"
        case Cursor = "cursor"
        case MatchedVariationIds = "matched_variation_ids"
    }
}
