//
//  CatalogQueryItemsForTax.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

/// - CatalogQueryItemsForTax: The query filter to return the items containing the specified tax IDs.
/// https://developer.squareup.com/reference/square/objects/CatalogQueryItemsForTax
open class CatalogQueryItemsForTax: Codable {
    
    /// - TaxIds: Required
    /// A set of CatalogTax IDs to be used to find associated CatalogItems.
    public var TaxIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case TaxIds = "tax_ids"
    }
}
