//
//  SearchCatalogItemsRequest.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

internal class SearchCatalogItemsRequest: Codable {
    
    var TextFilter: String?
    var CategoryIds: [String]?
    var StockLevels: [SearchCatalogItemsRequestStockLevel]?
    var EnabledLocationIds: [String]?
    var Cursor: String?
    var Limit: Int?
    var SortOrder: SortOrder?
    var ProductTypes: [CatalogItemProductType]?
    var CustomAttributeFilters: [CustomAttributeFilter]?
    
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
