//
//  CatalogApi.swift
//  
//
//  Created by Vladimir Lozhnikov on 5.06.23.
//

import Foundation
import Alamofire

/// https://developer.squareup.com/docs/catalog-api/build-with-catalog
open class CatalogApi {
    
    public static let catalog = Catalog()
    
    fileprivate init() {}
    
    /// - Catalog: Programmatically catalogs a Square seller’s products for sale and services for hire.
    /// The Catalog API allows you to programmatically catalog products or services, including items, variations, categories, discounts, taxes, modifiers, and more.
    /// https://developer.squareup.com/reference/square/catalog-api
    open class Catalog: SquareupApi {
        
        fileprivate override init() {}
        
        /// - upsertCatalogObject: Creates a new or updates the specified CatalogObject.
        /// To ensure consistency, only one update request is processed at a time per seller account.
        /// While one (batch or non-batch) update request is being processed, other (batched and non-batched) update requests are rejected with the 429 error code.
        /// Permissions:ITEMS_WRITE
        /// https://developer.squareup.com/reference/square/catalog-api/upsert-catalog-object
        public func upsertCatalogObject(object: CatalogObject,
                                        idempotencyKey: String?,
                                        accessToken: String,
                                        queue: DispatchQueue = .main,
                                        completion: ((CatalogObjectResponse) -> Void)? = nil,
                                        failed: ((Error) -> Void)? = nil) {
            
            let upsertCatalogRequest = Serializer.deserialize(UpsertCatalogObjectRequest.self, [:])!
            upsertCatalogRequest.Object = object
            upsertCatalogRequest.IdempotencyKey = idempotencyKey
            
            request(to: "catalog/object",
                    method: .post,
                    accessToken: accessToken,
                    request: upsertCatalogRequest,
                    queue: queue,
                    completion: completion,
                    failed: failed)
        }
        
        /// - batchUpsertCatalogObjects: Creates or updates up to 10,000 target objects based on the provided list of objects.
        /// The target objects are grouped into batches and each batch is inserted/updated in an all-or-nothing manner. If an object within a batch is malformed in some way, or violates a database constraint, the entire batch containing that item will be disregarded. However, other batches in the same request may still succeed. Each batch may contain up to 1,000 objects, and batches will be processed in order as long as the total object count for the request (items, variations, modifier lists, discounts, and taxes) is no more than 10,000.
        ///
        /// To ensure consistency, only one update request is processed at a time per seller account.
        /// While one (batch or non-batch) update request is being processed, other (batched and non-batched) update requests are rejected with the 429 error code.
        /// Permissions:ITEMS_WRITE
        /// https://developer.squareup.com/reference/square/catalog-api/batch-upsert-catalog-objects
        public func batchUpsertCatalogObjects(objects: [CatalogObject],
                                              idempotencyKey: String?,
                                              accessToken: String,
                                              queue: DispatchQueue = .main,
                                              completion: ((CatalogObjectsResponse) -> Void)? = nil,
                                              failed: ((Error) -> Void)? = nil) {
            
            let batchUpsertCatalogRequest = Serializer.deserialize(BatchUpsertCatalogObjectsRequest.self, [:])!
            
            let batches = Serializer.deserialize(CatalogObjectBatch.self, [:])!
            batches.Objects = objects
            
            batchUpsertCatalogRequest.Batches = [batches]
            batchUpsertCatalogRequest.IdempotencyKey = idempotencyKey
            
            request(to: "catalog/batch-upsert",
                    method: .post,
                    accessToken: accessToken,
                    request: batchUpsertCatalogRequest,
                    queue: queue,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateItemModifierLists: Learn the basics of the Square Catalog API by creating a simple product catalog for a cafe that serves coffee in small and large sizes, with skim or whole milk.
        ///
        /// To build this catalog, you call the UpsertCatalogObject endpoint to create the following catalog objects to represent the for-sale item (Coffee). You include two variations (Small Coffee and Large Coffee) of the sale item, a CatalogTax object as taxes applied to the coffee item, and two optional modifications (with Skim Milk and Whole Milk).
        ///
        /// A CatalogItem object named Coffee for coffee drinks.
        ///
        /// Two CatalogItemVariation objects named Small and Large for the coffee drink size variations.
        ///
        /// A CatalogTax object for the sales tax applied when a payment is made on the coffee drink order.
        ///
        /// Two CatalogModifier objects for the two milk choices.
        ///
        /// A CatalogModifierList object to hold the two CatalogModifier objects to apply the milk choices to the coffee item.
        ///
        /// The following steps are generally applicable to creating catalog objects of other types, except for uploading an image object. For information about how to upload an image to a catalog and attach it to an item, item variation, or category, see Work with Images.
        /// https://developer.squareup.com/docs/catalog-api/build-with-catalog
        public func updateItemModifierLists(itemIds: [String],
                                            modifierListsToDisable: [String],
                                            modifierListsToEnable: [String],
                                            accessToken: String,
                                            queue: DispatchQueue = .main,
                                            completion: ((UpdatedItemModifierListsResponse) -> Void)? = nil,
                                            failed: ((Error) -> Void)? = nil) {
            
            let updateItemModifierListsRequest = Serializer.deserialize(UpdateItemModifierListsRequest.self, [:])!
            
            updateItemModifierListsRequest.ItemIds = itemIds
            updateItemModifierListsRequest.ModifierListsToDisable = modifierListsToDisable
            updateItemModifierListsRequest.ModifierListsToEnable = modifierListsToEnable
            
            request(to: "catalog/update-item-modifier-lists",
                    method: .post,
                    accessToken: accessToken,
                    request: updateItemModifierListsRequest,
                    queue: queue,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listCatalog: Returns a list of all CatalogObjects of the specified types in the catalog.
        ///
        /// The types parameter is specified as a comma-separated list of the CatalogObjectType values, for example, "ITEM, ITEM_VARIATION, MODIFIER, MODIFIER_LIST, CATEGORY, DISCOUNT, TAX, IMAGE".
        ///
        /// Important: ListCatalog does not return deleted catalog items. To retrieve deleted catalog items, use SearchCatalogObjects and set the include_deleted_objects attribute value to true.
        ///
        /// Permissions:ITEMS_READ
        /// https://developer.squareup.com/reference/square/catalog-api/list-catalog
        public func listCatalog(cursor: String?,
                                types: [CatalogObjectType]?,
                                catalog_version: Int?,
                                accessToken: String,
                                queue: DispatchQueue = .main,
                                completion: ((ListCatalogResponse) -> Void)? = nil,
                                failed: ((Error) -> Void)? = nil) {
            
            let listCatalogRequest = Serializer.deserialize(ListCatalogRequest.self, [:])!
            
            listCatalogRequest.Cursor = cursor
            listCatalogRequest.Types = types
            listCatalogRequest.CatalogVersion = catalog_version
            
            request(to: "catalog/list",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listCatalogRequest,
                    queue: queue,
                    completion: completion,
                    failed: failed)
        }
        
        /// - searchCatalogItems: Searches for catalog items or item variations by matching supported search attribute values, including custom attribute values, against one or more of the specified query filters.
        ///
        /// This (SearchCatalogItems) endpoint differs from the SearchCatalogObjects endpoint in the following aspects:
        ///
        /// SearchCatalogItems can only search for items or item variations, whereas SearchCatalogObjects can search for any type of catalog objects.
        /// SearchCatalogItems supports the custom attribute query filters to return items or item variations that contain custom attribute values, where SearchCatalogObjects does not.
        /// SearchCatalogItems does not support the include_deleted_objects filter to search for deleted items or item variations, whereas SearchCatalogObjects does.
        /// The both endpoints use different call conventions, including the query filter formats.
        ///
        /// Permissions:ITEMS_READ
        /// https://developer.squareup.com/reference/square/catalog-api/search-catalog-items
        public func searchCatalogItems(textFilter: String?,
                                       categoryIds: [String]?,
                                       stockLevels: [SearchCatalogItemsRequestStockLevel]?,
                                       enabledLocationIds: [String]?,
                                       cursor: String?,
                                       limit: Int?,
                                       sortOrder: SortOrder?,
                                       productTypes: [CatalogItemProductType]?,
                                       customAttributeFilters: [CustomAttributeFilter]?,
                                       accessToken: String,
                                       queue: DispatchQueue = .main,
                                       completion: ((SearchCatalogItemsResponse) -> Void)? = nil,
                                       failed: ((Error) -> Void)? = nil) {
            
            let searchCatalogItemsRequest = Serializer.deserialize(SearchCatalogItemsRequest.self, [:])!
            
            searchCatalogItemsRequest.CategoryIds = categoryIds
            searchCatalogItemsRequest.Cursor = cursor
            searchCatalogItemsRequest.CustomAttributeFilters = customAttributeFilters
            searchCatalogItemsRequest.EnabledLocationIds = enabledLocationIds
            searchCatalogItemsRequest.Limit = limit
            searchCatalogItemsRequest.ProductTypes = productTypes
            searchCatalogItemsRequest.SortOrder = sortOrder
            searchCatalogItemsRequest.StockLevels = stockLevels
            searchCatalogItemsRequest.TextFilter = textFilter
            
            request(to: "catalog/search-catalog-items",
                    method: .post,
                    accessToken: accessToken,
                    request: searchCatalogItemsRequest,
                    queue: queue,
                    completion: completion,
                    failed: failed)
        }
        
        /// - searchCatalogObjects: Searches for CatalogObject of any type by matching supported search attribute values, excluding custom attribute values on items or item variations, against one or more of the specified query filters.
        ///
        /// This (SearchCatalogObjects) endpoint differs from the SearchCatalogItems endpoint in the following aspects:
        ///
        /// SearchCatalogItems can only search for items or item variations, whereas SearchCatalogObjects can search for any type of catalog objects.
        /// SearchCatalogItems supports the custom attribute query filters to return items or item variations that contain custom attribute values, where SearchCatalogObjects does not.
        /// SearchCatalogItems does not support the include_deleted_objects filter to search for deleted items or item variations, whereas SearchCatalogObjects does.
        /// The both endpoints have different call conventions, including the query filter formats.
        ///
        /// Permissions:ITEMS_READ
        /// https://developer.squareup.com/reference/square/catalog-api/search-catalog-objects
        public func searchCatalogObjects(cursor: String?,
                                         objectTypes: [CatalogObjectType]?,
                                         includeDeletedObjects: Bool?,
                                         includeRelatedObjects: Bool?,
                                         beginTime: Date?,
                                         query: CatalogQuery?,
                                         limit: Int?,
                                         accessToken: String,
                                         queue: DispatchQueue = .main,
                                         completion: ((SearchCatalogObjectsResponse) -> Void)? = nil,
                                         failed: ((Error) -> Void)? = nil) {
            
            let searchCatalogObjectsRequest = Serializer.deserialize(SearchCatalogObjectsRequest.self, [:])!
            
            searchCatalogObjectsRequest.Cursor = cursor
            searchCatalogObjectsRequest.ObjectTypes = objectTypes
            searchCatalogObjectsRequest.IncludeDeletedObjects = includeDeletedObjects
            searchCatalogObjectsRequest.IncludeRelatedObjects = includeRelatedObjects
            searchCatalogObjectsRequest.BeginTime = beginTime
            searchCatalogObjectsRequest.Query = query
            searchCatalogObjectsRequest.Limit = limit
            
            request(to: "catalog/search",
                    method: .post,
                    accessToken: accessToken,
                    request: searchCatalogObjectsRequest,
                    queue: queue,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveCatalogObject: Returns a single CatalogItem as a CatalogObject based on the provided ID.
        ///
        /// The returned object includes all of the relevant CatalogItem information including: CatalogItemVariation children, references to its CatalogModifierList objects, and the ids of any CatalogTax objects that apply to it.
        ///
        /// Permissions:ITEMS_READ
        /// https://developer.squareup.com/reference/square/catalog-api/retrieve-catalog-object
        public func retrieveCatalogObject(objectId: String,
                                          includeRelatedObjects: Bool?,
                                          catalogVersion: Int?,
                                          accessToken: String,
                                          queue: DispatchQueue = .main,
                                          completion: ((RetrieveCatalogObjectResponse) -> Void)? = nil,
                                          failed: ((Error) -> Void)? = nil) {
            
            let retrieveCatalogObjectRequest = Serializer.deserialize(RetrieveCatalogObjectRequest.self, [:])!
            
            retrieveCatalogObjectRequest.IncludeRelatedObjects = includeRelatedObjects
            retrieveCatalogObjectRequest.CatalogVersion = catalogVersion
            
            request(to: "catalog/object/\(objectId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveCatalogObjectRequest,
                    queue: queue,
                    completion: completion,
                    failed: failed)
        }
        
        /// - batchRetrieveCatalogObjects: Returns a set of objects based on the provided ID.
        ///
        /// Each CatalogItem returned in the set includes all of its child information including: all of its CatalogItemVariation objects, references to its CatalogModifierList objects, and the ids of any CatalogTax objects that apply to it.
        ///
        /// Permissions:ITEMS_READ
        /// https://developer.squareup.com/reference/square/catalog-api/batch-retrieve-catalog-objects
        public func batchRetrieveCatalogObjects(objectIds: [String],
                                                includeRelatedObjects: Bool?,
                                                catalogVersion: Int?,
                                                includeDeletedObjects: Bool?,
                                                accessToken: String,
                                                queue: DispatchQueue = .main,
                                                completion: ((BatchRetrieveCatalogObjectsResponse) -> Void)? = nil,
                                                failed: ((Error) -> Void)? = nil) {
            
            let batchRetrieveCatalogObjectsRequest = Serializer.deserialize(BatchRetrieveCatalogObjectsRequest.self, [:])!
            
            batchRetrieveCatalogObjectsRequest.ObjectIds = objectIds
            batchRetrieveCatalogObjectsRequest.IncludeRelatedObjects = includeRelatedObjects
            batchRetrieveCatalogObjectsRequest.CatalogVersion = catalogVersion
            batchRetrieveCatalogObjectsRequest.IncludeDeletedObjects = includeDeletedObjects
            
            request(to: "catalog/batch-retrieve",
                    method: .post,
                    accessToken: accessToken,
                    request: batchRetrieveCatalogObjectsRequest,
                    queue: queue,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteCatalogObject: Deletes a single CatalogObject based on the provided ID and returns the set of successfully deleted IDs in the response.
        ///
        /// Deletion is a cascading event such that all children of the targeted object are also deleted. For example, deleting a CatalogItem will also delete all of its CatalogItemVariation children.
        ///
        /// To ensure consistency, only one delete request is processed at a time per seller account.
        /// While one (batch or non-batch) delete request is being processed, other (batched and non-batched) delete requests are rejected with the 429 error code.
        ///
        /// Permissions:ITEMS_WRITE
        /// https://developer.squareup.com/reference/square/catalog-api/delete-catalog-object
        public func deleteCatalogObject(objectId: String,
                                        accessToken: String,
                                        queue: DispatchQueue = .main,
                                        completion: ((DeleteCatalogObjectResponse) -> Void)? = nil,
                                        failed: ((Error) -> Void)? = nil) {
            
            request(to: "catalog/object/\(objectId)",
                    method: .delete,
                    accessToken: accessToken,
                    queue: queue,
                    completion: completion,
                    failed: failed)
        }
        
        /// - batchDeleteCatalogObjects: Deletes a set of CatalogItems based on the provided list of target IDs and returns a set of successfully deleted IDs in the response.
        ///
        /// Deletion is a cascading event such that all children of the targeted object are also deleted. For example, deleting a CatalogItem will also delete all of its CatalogItemVariation children.
        ///
        /// BatchDeleteCatalogObjects succeeds even if only a portion of the targeted IDs can be deleted. The response will only include IDs that were actually deleted.
        ///
        /// To ensure consistency, only one delete request is processed at a time per seller account.
        /// While one (batch or non-batch) delete request is being processed, other (batched and non-batched) delete requests are rejected with the 429 error code.
        ///
        /// Permissions:ITEMS_WRITE
        /// https://developer.squareup.com/reference/square/catalog-api/batch-delete-catalog-objects
        public func batchDeleteCatalogObjects(objectIds: [String],
                                              accessToken: String,
                                              queue: DispatchQueue = .main,
                                              completion: ((BatchDeleteCatalogObjectsResponse?) -> Void)? = nil,
                                              failed: ((Error) -> Void)? = nil) {
            
            let batchDeleteCatalogObjectsRequest = Serializer.deserialize(BatchDeleteCatalogObjectsRequest.self, [:])!
            batchDeleteCatalogObjectsRequest.ObjectIds = objectIds
            
            request(to: "catalog/batch-delete",
                    method: .post,
                    accessToken: accessToken,
                    request: batchDeleteCatalogObjectsRequest,
                    queue: queue,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createCatalogImage: Uploads an image file to be represented by a CatalogImage object that can be linked to an existing CatalogObject instance.
        ///
        /// The resulting CatalogImage is unattached to any CatalogObject if the object_id is not specified.
        ///
        /// This CreateCatalogImage endpoint accepts HTTP multipart/form-data requests with a JSON part and an image file part in JPEG, PJPEG, PNG, or GIF format. The maximum file size is 15MB.
        ///
        /// Permissions:ITEMS_WRITE
        /// https://developer.squareup.com/reference/square/catalog-api/create-catalog-image
        public func createCatalogImage(objectId: String?,
                                       isPrimary: Bool?,
                                       image: UIImage,
                                       idempotencyKey: String?,
                                       accessToken: String,
                                       queue: DispatchQueue = .main,
                                       completion: ((CreateCatalogImageResponse) -> Void)? = nil,
                                       failed: ((Error) -> Void)? = nil) {
            
            let createCatalogImageRequest = Serializer.deserialize(CreateCatalogImageRequest.self, [:])!
            let imageObject = Serializer.deserialize(CatalogObject.self, [
                "type" : CatalogObjectType.Image.rawValue
                , "id": "#TEMP_ID"
            ])
            
            createCatalogImageRequest.IdempotencyKey = idempotencyKey
            createCatalogImageRequest.ObjectId = objectId
            createCatalogImageRequest.Image = imageObject
            createCatalogImageRequest.IsPrimary = isPrimary
            
            upload(to: "catalog/images",
                   image: image,
                   imageName: "\(UUID().uuidString)_create_catalog_image.jpg",
                   accessToken: accessToken,
                   request: createCatalogImageRequest,
                   queue: queue,
                   completion: completion,
                   failed: failed)
        }
        
        /// - updateCatalogImage: Uploads a new image file to replace the existing one in the specified CatalogImage object.
        ///
        /// This UpdateCatalogImage endpoint accepts HTTP multipart/form-data requests with a JSON part and an image file part in JPEG, PJPEG, PNG, or GIF format. The maximum file size is 15MB.
        ///
        /// Permissions:ITEMS_WRITE
        /// https://developer.squareup.com/reference/square/catalog-api/update-catalog-image
        public func updateCatalogImage(imageId: String,
                                       imageObject: CatalogObject,
                                       image: UIImage,
                                       idempotencyKey: String?,
                                       accessToken: String,
                                       queue: DispatchQueue = .main,
                                       completion: ((UpdateCatalogImageResponse) -> Void)? = nil,
                                       failed: ((Error) -> Void)? = nil) {
            
            let updateCatalogImageRequest = Serializer.deserialize(UpdateCatalogImageRequest.self, [:])!
            
            updateCatalogImageRequest.IdempotencyKey = idempotencyKey
            updateCatalogImageRequest.Image = imageObject
            
            upload(to: "catalog/images/\(imageId)",
                   method: .put,
                   image: image,
                   imageName: "\(UUID().uuidString)_update_catalog_image.jpg",
                   accessToken: accessToken,
                   request: updateCatalogImageRequest,
                   queue: queue,
                   completion: completion,
                   failed: failed)
        }
    }
}
