//
//  CatalogQuery.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

/// - CatalogQuery: A query composed of one or more different types of filters to narrow the scope of targeted objects when calling the SearchCatalogObjects endpoint.
/// Although a query can have multiple filters, only certain query types can be combined per call to SearchCatalogObjects. Any combination of the following types may be used together:
///
/// exact_query
/// prefix_query
/// range_query
/// sorted_attribute_query
/// text_query All other query types cannot be combined with any others.
///
/// When a query filter is based on an attribute, the attribute must be searchable. Searchable attributes are listed as follows, along their parent types that can be searched for with applicable query filters.
///
/// Searchable attribute and objects queryable by searchable attributes **
///
/// name: CatalogItem, CatalogItemVariation, CatalogCategory, CatalogTax, CatalogDiscount, CatalogModifier, 'CatalogModifierList,CatalogItemOption,CatalogItemOptionValue`
/// description: CatalogItem, CatalogItemOptionValue
/// abbreviation: CatalogItem
/// upc: CatalogItemVariation
/// sku: CatalogItemVariation
/// caption: CatalogImage
/// display_name: CatalogItemOption
///
/// For example, to search for CatalogItem objects by searchable attributes, you can use the "name", "description", or "abbreviation" attribute in an applicable query filter.
/// https://developer.squareup.com/reference/square/objects/CatalogQuery
open class CatalogQuery: Codable {
    
    /// - SortedAttributeQuery: A query expression to sort returned query result by the given attribute.
    public var SortedAttributeQuery: CatalogQuerySortedAttribute?
    /// - ExactQuery: An exact query expression to return objects with attribute name and value matching the specified attribute name and value exactly. Value matching is case insensitive.
    public var ExactQuery: CatalogQueryExact?
    /// - SetQuery: A set query expression to return objects with attribute name and value matching the specified attribute name and any of the specified attribute values exactly. Value matching is case insensitive.
    public var SetQuery: CatalogQuerySet?
    /// - PrefixQuery: A prefix query expression to return objects with attribute values that have a prefix matching the specified string value. Value matching is case insensitive.
    public var PrefixQuery: CatalogQueryPrefix?
    /// - RangeQuery: A range query expression to return objects with numeric values that lie in the specified range.
    public var RangeQuery: CatalogQueryRange?
    /// - TextQuery: A text query expression to return objects whose searchable attributes contain all of the given keywords, irrespective of their order. For example, if a CatalogItem contains custom attribute values of {"name": "t-shirt"} and {"description": "Small, Purple"}, the query filter of {"keywords": ["shirt", "sma", "purp"]} returns this item.
    public var TextQuery: CatalogQueryText?
    /// - ItemsForTaxQuery: A query expression to return items that have any of the specified taxes (as identified by the corresponding CatalogTax object IDs) enabled.
    public var ItemsForTaxQuery: CatalogQueryItemsForTax?
    /// - ItemsForModifierListQuery: A query expression to return items that have any of the given modifier list (as identified by the corresponding CatalogModifierLists IDs) enabled.
    public var ItemsForModifierListQuery: CatalogQueryItemsForModifierList?
    /// - ItemsForItemOptionsQuery: A query expression to return items that contains the specified item options (as identified the corresponding CatalogItemOption IDs).
    public var ItemsForItemOptionsQuery: CatalogQueryItemsForItemOptions?
    /// - ItemVariationsForItemOptionValuesQuery: A query expression to return item variations (of the CatalogItemVariation type) that contain all of the specified CatalogItemOption IDs.
    public var ItemVariationsForItemOptionValuesQuery: CatalogQueryItemVariationsForItemOptionValues?
    
    enum CodingKeys: String, CodingKey {
        case SortedAttributeQuery = "sorted_attribute_query"
        case ExactQuery = "exact_query"
        case SetQuery = "set_query"
        case PrefixQuery = "prefix_query"
        case RangeQuery = "range_query"
        case TextQuery = "text_query"
        case ItemsForTaxQuery = "items_for_tax_query"
        case ItemsForModifierListQuery = "items_for_modifier_list_query"
        case ItemsForItemOptionsQuery = "items_for_item_options_query"
        case ItemVariationsForItemOptionValuesQuery = "item_variations_for_item_option_values_query"
    }
}
