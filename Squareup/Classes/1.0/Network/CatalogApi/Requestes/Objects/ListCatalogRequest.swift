//
//  ListCatalogRequest.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

open class ListCatalogRequest: Codable {
    
    public var Cursor: String?
    public var Types: String?
    public var CatalogVersion: Int?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Types = "types"
        case CatalogVersion = "catalog_version"
    }
}
