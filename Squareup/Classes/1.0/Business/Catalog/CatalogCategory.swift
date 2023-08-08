//
//  CatalogCategory.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogCategory: A category to which a CatalogItem instance belongs.
/// https://developer.squareup.com/reference/square/objects/CatalogCategory
open class CatalogCategory: Codable {
    
    /// - Name: The category name. This is a searchable attribute for use in applicable query filters, and its value length is of Unicode code points. Max Length 255.
    public var Name: String?
    /// - ImageIds: The IDs of images associated with this CatalogCategory instance. Currently these images are not displayed by Square, but are free to be displayed in 3rd party applications.
    public var ImageIds = [String]()
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case ImageIds = "image_ids"
    }
}
