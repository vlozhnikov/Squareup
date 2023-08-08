//
//  ListCatalogResponse.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

open class ListCatalogResponse: SquareupResponse {
    
    var Cursor: String?
    var Objects = [CatalogObject]()
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Objects = "objects"
    }
}
