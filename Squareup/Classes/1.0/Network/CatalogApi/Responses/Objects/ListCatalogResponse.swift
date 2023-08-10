//
//  ListCatalogResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

open class ListCatalogResponse: SquareupResponse {
    
    /// - Cursor: The pagination cursor to be used in a subsequent request. If unset, this is the final response. See Pagination for more information.
    var Cursor: String?
    /// - Objects: The CatalogObjects returned.
    var Objects: [CatalogObject]?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Objects = "objects"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
        self.Objects = try container.decodeIfPresent([CatalogObject].self, forKey: .Objects)
    }
}
