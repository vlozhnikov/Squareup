//
//  SearchCatalogItemsResponse.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

open class SearchCatalogItemsResponse: SquareupResponse {
    
    var Items: [CatalogObject]?
    var Cursor: String?
    var MatchedVariationIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case Items = "items"
        case Cursor = "cursor"
        case MatchedVariationIds = "matched_variation_ids"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Items = try container.decodeIfPresent([CatalogObject].self, forKey: .Items)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
        self.MatchedVariationIds = try container.decodeIfPresent([String].self, forKey: .MatchedVariationIds)
    }
}
