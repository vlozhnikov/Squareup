//
//  ListCatalogRequest.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

internal class ListCatalogRequest: Codable {
    
    var Cursor: String?
    var Types: String?
    var CatalogVersion: Int?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Types = "types"
        case CatalogVersion = "catalog_version"
    }
}
