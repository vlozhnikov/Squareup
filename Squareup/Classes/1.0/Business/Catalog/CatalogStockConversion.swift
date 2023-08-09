//
//  CatalogStockConversion.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.05.23.
//

import Foundation

/// - CatalogStockConversion: Represents the rule of conversion between a stockable CatalogItemVariation and a non-stockable sell-by or receive-by CatalogItemVariation that share the same underlying stock.
/// https://developer.squareup.com/reference/square/objects/CatalogStockConversion
open class CatalogStockConversion: Codable {
    
    /// - StockableItemVariationId: Required. References to the stockable CatalogItemVariation for this stock conversion. Selling, receiving or recounting the non-stockable CatalogItemVariation defined with a stock conversion results in adjustments of this stockable CatalogItemVariation. This immutable field must reference a stockable CatalogItemVariation that shares the parent CatalogItem of the converted CatalogItemVariation. Min Length 1.
    public var StockableItemVariationId: String?
    /// - StockableQuantity: Required. The quantity of the stockable item variation (as identified by stockable_item_variation_id) equivalent to the non-stockable item variation quantity (as specified in nonstockable_quantity) as defined by this stock conversion. It accepts a decimal number in a string format that can take up to 10 digits before the decimal point and up to 5 digits after the decimal point. Min Length 1. Max Length 16.
    public var StockableQuantity: String?
    /// - NonstockableQuantity: Required. The converted equivalent quantity of the non-stockable CatalogItemVariation in its measurement unit. The stockable_quantity value and this nonstockable_quantity value together define the conversion ratio between stockable item variation and the non-stockable item variation. It accepts a decimal number in a string format that can take up to 10 digits before the decimal point and up to 5 digits after the decimal point. Min Length 1. Max Length 16.
    public var NonstockableQuantity: String?
    
    enum CodingKeys: String, CodingKey {
        case StockableItemVariationId = "stockable_item_variation_id"
        case StockableQuantity = "stockable_quantity"
        case NonstockableQuantity = "nonstockable_quantity"
    }
}
