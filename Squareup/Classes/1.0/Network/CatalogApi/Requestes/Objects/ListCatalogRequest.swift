//
//  ListCatalogRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

open class ListCatalogRequest: Codable {
    
    /// -Cursor; The pagination cursor returned in the previous response. Leave unset for an initial request. The page size is currently set to be 100. See Pagination for more information.
    public var Cursor: String?
    /// - Types: An optional case-insensitive, comma-separated list of object types to retrieve.
    /// The valid values are defined in the CatalogObjectType enum, for example, ITEM, ITEM_VARIATION, CATEGORY, DISCOUNT, TAX, MODIFIER, MODIFIER_LIST, IMAGE, etc.
    /// If this is unspecified, the operation returns objects of all the top level types at the version of the Square API used to make the request. Object types that are nested onto other object types are not included in the defaults.
    /// At the current API version the default object types are: ITEM, CATEGORY, TAX, DISCOUNT, MODIFIER_LIST, PRICING_RULE, PRODUCT_SET, TIME_PERIOD, MEASUREMENT_UNIT, SUBSCRIPTION_PLAN, ITEM_OPTION, CUSTOM_ATTRIBUTE_DEFINITION, QUICK_AMOUNT_SETTINGS.
    public var Types: [CatalogObjectType]?
    /// - CatalogVersion: The specific version of the catalog objects to be included in the response. This allows you to retrieve historical versions of objects. The specified version value is matched against the CatalogObjects' version attribute. If not included, results will be from the current version of the catalog.
    public var CatalogVersion: Int?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Types = "types"
        case CatalogVersion = "catalog_version"
    }
}
