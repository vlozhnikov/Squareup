//
//  BatchRetrieveCatalogObjectsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.05.23.
//

import Foundation

open class BatchRetrieveCatalogObjectsRequest: Codable {
    
    /// - ObjectIds: The IDs of the CatalogObjects to be retrieved.
    public var ObjectIds: [String]?
    /// - IncludeRelatedObjects: If true, the response will include additional objects that are related to the requested objects. Related objects are defined as any objects referenced by ID by the results in the objects field of the response. These objects are put in the related_objects field. Setting this to true is helpful when the objects are needed for immediate display to a user. This process only goes one level deep. Objects referenced by the related objects will not be included. For example,
    ///
    /// if the objects field of the response contains a CatalogItem, its associated CatalogCategory objects, CatalogTax objects, CatalogImage objects and CatalogModifierLists will be returned in the related_objects field of the response. If the objects field of the response contains a CatalogItemVariation, its parent CatalogItem will be returned in the related_objects field of the response.
    ///
    /// Default value: false
    public var IncludeRelatedObjects: Bool?
    /// - CatalogVersion: The specific version of the catalog objects to be included in the response. This allows you to retrieve historical versions of objects. The specified version value is matched against the CatalogObjects' version attribute. If not included, results will be from the current version of the catalog.
    public var CatalogVersion: Int?
    /// - IncludeDeletedObjects: Indicates whether to include (true) or not (false) in the response deleted objects, namely, those with the is_deleted attribute set to true.
    public var IncludeDeletedObjects: Bool?
    
    enum CodingKeys: String, CodingKey {
        case ObjectIds = "object_ids"
        case IncludeRelatedObjects = "include_related_objects"
        case CatalogVersion = "catalog_version"
        case IncludeDeletedObjects = "include_deleted_objects"
    }
}
