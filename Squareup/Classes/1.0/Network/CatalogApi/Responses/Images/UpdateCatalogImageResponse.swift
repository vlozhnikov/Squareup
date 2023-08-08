//
//  UpdateCatalogImageResponse.swift
//  Business Calendar
//
//  Created by user on 5.05.23.
//

import Foundation

open class UpdateCatalogImageResponse: SquareupResponse {
    
    var Image: CatalogObject?
    
    enum CodingKeys: String, CodingKey {
        case Image = "image"
    }
}
