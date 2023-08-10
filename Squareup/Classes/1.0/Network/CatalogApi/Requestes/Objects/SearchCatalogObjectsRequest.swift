//
//  SearchCatalogObjectsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.05.23.
//

import Foundation

open class SearchCatalogObjectsRequest: Codable {
    
    /// - Cursor: The pagination cursor returned in the previous response. Leave unset for an initial request. See Pagination for more information.
    public var Cursor: String?
    /// - ObjectTypes: The desired set of object types to appear in the search results.
    /// If this is unspecified, the operation returns objects of all the top level types at the version of the Square API used to make the request. Object types that are nested onto other object types are not included in the defaults.
    /// At the current API version the default object types are: ITEM, CATEGORY, TAX, DISCOUNT, MODIFIER_LIST, PRICING_RULE, PRODUCT_SET, TIME_PERIOD, MEASUREMENT_UNIT, SUBSCRIPTION_PLAN, ITEM_OPTION, CUSTOM_ATTRIBUTE_DEFINITION, QUICK_AMOUNT_SETTINGS.
    /// Note that if you wish for the query to return objects belonging to nested types (i.e., COMPONENT, IMAGE, ITEM_OPTION_VAL, ITEM_VARIATION, or MODIFIER), you must explicitly include all the types of interest in this field.
    public var ObjectTypes: [CatalogObjectType]?
    /// - IncludeDeletedObjects: If true, deleted objects will be included in the results. Deleted objects will have their is_deleted field set to true.
    public var IncludeDeletedObjects: Bool?
    /// - IncludeRelatedObjects: If true, the response will include additional objects that are related to the requested objects. Related objects are objects that are referenced by object ID by the objects in the response. This is helpful if the objects are being fetched for immediate display to a user. This process only goes one level deep. Objects referenced by the related objects will not be included. For example:
    /// If the objects field of the response contains a CatalogItem, its associated CatalogCategory objects, CatalogTax objects, CatalogImage objects and CatalogModifierLists will be returned in the related_objects field of the response. If the objects field of the response contains a CatalogItemVariation, its parent CatalogItem will be returned in the related_objects field of the response.
    /// Default value: false
    public var IncludeRelatedObjects: Bool?
    /// - BeginTime: Return objects modified after this timestamp, in RFC 3339 format, e.g., 2016-09-04T23:59:33.123Z. The timestamp is exclusive - objects with a timestamp equal to begin_time will not be included in the response.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var BeginTime: Date?
    /// - Query: A query to be used to filter or sort the results. If no query is specified, the entire catalog will be returned.
    public var Query: CatalogQuery?
    /// - Limit: A limit on the number of results to be returned in a single page. The limit is advisory - the implementation may return more or fewer results. If the supplied limit is negative, zero, or is higher than the maximum limit of 1,000, it will be ignored.
    public var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case ObjectTypes = "object_types"
        case IncludeDeletedObjects = "include_deleted_objects"
        case IncludeRelatedObjects = "include_related_objects"
        case BeginTime = "begin_time"
        case Query = "query"
        case Limit = "limit"
    }
}
