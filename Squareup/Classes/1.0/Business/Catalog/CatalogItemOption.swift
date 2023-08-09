//
//  CatalogItemOption.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.05.23.
//

import Foundation

/// - CatalogItemOption: A group of variations for a CatalogItem.
/// https://developer.squareup.com/reference/square/objects/CatalogItemOption
open class CatalogItemOption: Codable {
    
    /// - Name: The item option's display name for the seller. Must be unique across all item options. This is a searchable attribute for use in applicable query filters.
    public var Name: String?
    /// - DisplayName: The item option's display name for the customer. This is a searchable attribute for use in applicable query filters.
    public var DisplayName: String?
    /// - Description: The item option's human-readable description. Displayed in the Square Point of Sale app for the seller and in the Online Store or on receipts for the buyer. This is a searchable attribute for use in applicable query filters.
    public var Description: String?
    /// - ShowColors: If true, display colors for entries in values when present.
    public var ShowColors: Bool?
    /// - Values: A list of CatalogObjects containing the CatalogItemOptionValues for this item.
    public var Values = [CatalogObject]()
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case DisplayName = "display_name"
        case Description = "description"
        case ShowColors = "show_colors"
        case Values = "values"
    }
}
