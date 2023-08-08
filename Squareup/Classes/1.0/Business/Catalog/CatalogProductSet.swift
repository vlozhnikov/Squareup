//
//  CatalogProductSet.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogProductSet: Represents a collection of catalog objects for the purpose of applying a PricingRule.
/// Including a catalog object will include all of its subtypes. For example, including a category in a product set will include all of its items and associated item variations in the product set. Including an item in a product set will also include its item variations.
/// https://developer.squareup.com/reference/square/objects/CatalogProductSet
open class CatalogProductSet: Codable {
    
    /// - Name: User-defined name for the product set. For example, "Clearance Items" or "Winter Sale Items".
    public var Name: String?
    /// - ProductIdsAny: Unique IDs for any CatalogObject included in this product set. Any number of these catalog objects can be in an order for a pricing rule to apply.
    ///
    /// This can be used with product_ids_all in a parent CatalogProductSet to match groups of products for a bulk discount, such as a discount for an entree and side combo.
    ///
    /// Only one of product_ids_all, product_ids_any, or all_products can be set.
    /// Max: 500 catalog object IDs.
    public var ProductIdsAny = [String]()
    /// - ProductIdsAll: Unique IDs for any CatalogObject included in this product set. All objects in this set must be included in an order for a pricing rule to apply.
    ///
    /// Only one of product_ids_all, product_ids_any, or all_products can be set.
    ///
    /// Max: 500 catalog object IDs.
    public var ProductIdsAll = [String]()
    /// - QuantityExact: If set, there must be exactly this many items from products_any or products_all in the cart for the discount to apply.
    ///
    /// Cannot be combined with either quantity_min or quantity_max.
    public var QuantityExact: Int?
    /// - QuantityMin: If set, there must be at least this many items from products_any or products_all in a cart for the discount to apply. See quantity_exact. Defaults to 0 if quantity_exact, quantity_min and quantity_max are all unspecified.
    public var QuantityMin: Int?
    /// - QuantityMax: If set, the pricing rule will apply to a maximum of this many items from products_any or products_all.
    public var QuantityMax: Int?
    /// - AllProducts: If set to true, the product set will include every item in the catalog. Only one of product_ids_all, product_ids_any, or all_products can be set.
    public var AllProducts: Bool?
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case ProductIdsAny = "product_ids_any"
        case ProductIdsAll = "product_ids_all"
        case QuantityExact = "quantity_exact"
        case QuantityMin = "quantity_min"
        case QuantityMax = "quantity_max"
        case AllProducts = "all_products"
    }
}
