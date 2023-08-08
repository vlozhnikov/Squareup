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
}
