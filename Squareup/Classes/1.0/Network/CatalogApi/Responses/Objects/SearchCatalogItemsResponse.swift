//
//  SearchCatalogItemsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

open class SearchCatalogItemsResponse: SquareupResponse {
    
    /// - Items: Returned items matching the specified query expressions.
    var Items: [CatalogObject]?
    /// - Cursor: Pagination token used in the next request to return more of the search result.
    var Cursor: String?
    /// - MatchedVariationIds: Ids of returned item variations matching the specified query expression.
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
