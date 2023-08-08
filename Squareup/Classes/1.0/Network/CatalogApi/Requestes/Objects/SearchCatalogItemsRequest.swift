//
//  SearchCatalogItemsRequest.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

open class SearchCatalogItemsRequest: Codable {
    
    public var TextFilter: String?
    public var CategoryIds: [String]?
    public var StockLevels: [SearchCatalogItemsRequestStockLevel]?
    public var EnabledLocationIds: [String]?
    public var Cursor: String?
    public var Limit: Int?
    public var SortOrder: SortOrder?
    public var ProductTypes: [CatalogItemProductType]?
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
