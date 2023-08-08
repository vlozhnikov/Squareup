//
//  CatalogQueryText.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

/// - CatalogQueryText: The query filter to return the search result whose searchable attribute values contain all of the specified keywords or tokens, independent of the token order or case.
/// https://developer.squareup.com/reference/square/objects/CatalogQueryText
open class CatalogQueryText: Codable {
    
    /// - Keywords: Required
    /// A list of 1, 2, or 3 search keywords. Keywords with fewer than 3 characters are ignored.
    var Keywords: [String]?
    
    enum CodingKeys: String, CodingKey {
        case Keywords = "keywords"
    }
}
