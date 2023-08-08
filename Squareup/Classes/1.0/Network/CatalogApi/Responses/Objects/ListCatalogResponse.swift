//
//  ListCatalogResponse.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

open class ListCatalogResponse: SquareupResponse {
    
    var Cursor: String?
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
