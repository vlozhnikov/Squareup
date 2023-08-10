//
//  SearchCatalogItemsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

open class SearchCatalogItemsRequest: Codable {
    
    /// - TextFilter: The text filter expression to return items or item variations containing specified text in the name, description, or abbreviation attribute value of an item, or in the name, sku, or upc attribute value of an item variation.
    public var TextFilter: String?
    /// - CategoryIds: The category id query expression to return items containing the specified category IDs.
    public var CategoryIds: [String]?
    /// - StockLevels: The stock-level query expression to return item variations with the specified stock levels.
    public var StockLevels: [SearchCatalogItemsRequestStockLevel]?
    /// - EnabledLocationIds: The enabled-location query expression to return items and item variations having specified enabled locations.
    public var EnabledLocationIds: [String]?
    /// - Cursor: The pagination token, returned in the previous response, used to fetch the next batch of pending results.
    public var Cursor: String?
    /// - Limit: The maximum number of results to return per page. The default value is 100.
    /// Max 100
    public var Limit: Int?
    /// - SortOrder: The order to sort the results by item names. The default sort order is ascending (ASC).
    public var SortOrder: SortOrder?
    /// - ProductTypes: The product types query expression to return items or item variations having the specified product types.
    public var ProductTypes: [CatalogItemProductType]?
    /// - CustomAttributeFilters: The customer-attribute filter to return items or item variations matching the specified custom attribute expressions. A maximum number of 10 custom attribute expressions are supported in a single call to the SearchCatalogItems endpoint.
    public var CustomAttributeFilters: [CustomAttributeFilter]?
    
    enum CodingKeys: String, CodingKey {
        case TextFilter = "text_filter"
        case CategoryIds = "category_ids"
        case StockLevels = "stock_levels"
        case EnabledLocationIds = "enabled_location_ids"
        case Cursor = "cursor"
        case Limit = "limit"
        case SortOrder = "sort_order"
        case ProductTypes = "product_types"
        case CustomAttributeFilters = "custom_attribute_filters"
    }
}
