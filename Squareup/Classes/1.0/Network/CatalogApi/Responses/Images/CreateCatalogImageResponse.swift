//
//  CreateCatalogImageResponse.swift
//  Business Calendar
//
//  Created by user on 5.05.23.
//

import Foundation

open class CreateCatalogImageResponse: SquareupResponse {
    
    public var Image: CatalogObject?
    
    enum CodingKeys: String, CodingKey {
        case Image = "image"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Image = try container.decodeIfPresent(CatalogObject.self, forKey: .Image)
    }
}
