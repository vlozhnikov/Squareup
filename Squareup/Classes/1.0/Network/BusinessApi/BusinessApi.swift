//
//  BusinessApi.swift
//  Squareup
//
//  Created by user on 7.06.23.
//

import Foundation
import Alamofire

open class BusinessApi {
    
    public static let merchants = Merchants()
    public static let merchentAttributes = MerchantCustomAttributes()
    public static let locations = Locations()
    public static let locationAttributes = LocationCustomAttributes()
    public static let devices = Devices()
    public static let cashDrawers = CashDrawers()
    public static let vendors = Vendors()
    
    fileprivate init() {}
    
    /// - Merchants: Retrieve information about an organization that sells with Square.
    /// The Merchants API groups individual seller locations into larger organizations, allowing them to operate as a single entity. Each merchant represents one organization or business that sells with Square. Use this API to retrieve core information about the organization connecting to your application such as the merchant ID, language preferences, country, account status, and the name of the overall business.
    /// https://developer.squareup.com/reference/square/merchants-api
    open class Merchants: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listMerchants: Provides details about the merchant associated with a given access token.
        /// The access token used to connect your application to a Square seller is associated with a single merchant. That means that ListMerchants returns a list with a single Merchant object. You can specify your personal access token to get your own merchant information or specify an OAuth token to get the information for the merchant that granted your application access.
        ///
        /// If you know the merchant ID, you can also use the RetrieveMerchant endpoint to retrieve the merchant information.
        /// Permissions: MERCHANT_PROFILE_READ
        /// https://developer.squareup.com/reference/square/merchants-api/list-merchants
        public func listMerchants(cursor: String? = nil,
                           accessToken: String,
                           completion: ((ListMerchantsResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            let listMerchantsRequest = Serializer.deserialize(ListMerchantsRequest.self, [:])!
            listMerchantsRequest.Cursor = cursor
            
            request(to: "merchants",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listMerchantsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveMerchants: Retrieves the Merchant object for the given merchant_id.
        /// Permissions: MERCHANT_PROFILE_READ
        /// https://developer.squareup.com/reference/square/merchants-api/retrieve-merchant
        public func retrieveMerchants(merchantId: String,
                               accessToken: String,
                               completion: ((RetrieveMerchantsResponse) -> Void)? = nil,
                               failed: ((Error) -> Void)? = nil) {
            
            request(to: "merchants\(merchantId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - MerchantCustomAttributes: Create and manage merchant-related custom attribute definitions and custom attributes.
    /// Use the Merchant Custom Attributes API to create and manage custom attributes for merchants that connect to your application. Custom attributes can be used to store properties or metadata that simplify integration, synchronization, and personalization workflows.
    /// https://developer.squareup.com/reference/square/merchant-custom-attributes-api
    open class MerchantCustomAttributes: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listMerchantCustomAttributeDefinitions: Lists the merchant-related custom attribute definitions that belong to a Square seller account.
        /// When all response pages are retrieved, the results include all custom attribute definitions that are visible to the requesting application, including those that are created by other applications and set to VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_READ
        /// https://developer.squareup.com/reference/square/merchant-custom-attributes-api/list-merchant-custom-attribute-definitions
        public func listMerchantCustomAttributeDefinitions(visibilityFilter: VisibilityFilter?,
                                                    limit: Int?,
                                                    cursor: String?,
                                                    accessToken: String,
                                                    completion: ((ListMerchantCustomAttributeDefinitionsResponse) -> Void)? = nil,
                                                    failed: ((Error) -> Void)? = nil) {
            
            let listMerchantCustomAttributeDefinitionsRequest = Serializer.deserialize(ListMerchantCustomAttributeDefinitionsRequest.self, [:])!
            
            listMerchantCustomAttributeDefinitionsRequest.visibilityFilter = visibilityFilter
            listMerchantCustomAttributeDefinitionsRequest.Limit = limit
            listMerchantCustomAttributeDefinitionsRequest.Cursor = cursor
            
            request(to: "merchants/custom-attribute-definitions",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listMerchantCustomAttributeDefinitionsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createMerchantCustomAttributeDefinition: Creates a merchant-related custom attribute definition for a Square seller account.
        /// Use this endpoint to define a custom attribute that can be associated with a merchant connecting to your application. A custom attribute definition specifies the key, visibility, schema, and other properties for a custom attribute. After the definition is created, you can call UpsertMerchantCustomAttribute or BulkUpsertMerchantCustomAttributes to set the custom attribute for a merchant.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/merchant-custom-attributes-api/create-merchant-custom-attribute-definition
        public func createMerchantCustomAttributeDefinition(customAttributeDefinition: CustomAttributeDefinition?,
                                                     IdempotencyKey: String?,
                                                     accessToken: String,
                                                     completion: ((CreateMerchantCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                     failed: ((Error) -> Void)? = nil) {
            
            let createMerchantCustomAttributeDefinitionRequest = Serializer.deserialize(CreateMerchantCustomAttributeDefinitionRequest.self, [:])!
            
            createMerchantCustomAttributeDefinitionRequest.customAttributeDefinition = customAttributeDefinition
            createMerchantCustomAttributeDefinitionRequest.IdempotencyKey = IdempotencyKey
            
            request(to: "merchants/custom-attribute-definitions",
                    method: .post,
                    accessToken: accessToken,
                    request: createMerchantCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteMerchantCustomAttributeDefinition: Deletes a merchant-related custom attribute definition from a Square seller account.
        /// Deleting a custom attribute definition also deletes the corresponding custom attribute from the merchant. Only the definition owner can delete a custom attribute definition.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/merchant-custom-attributes-api/delete-merchant-custom-attribute-definition
        public func deleteMerchantCustomAttributeDefinition(key: String,
                                                     accessToken: String,
                                                     completion: ((SquareupResponse) -> Void)? = nil,
                                                     failed: ((Error) -> Void)? = nil) {
            
            request(to: "merchants/custom-attribute-definitions/\(key)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveMerchantCustomAttributeDefinition: Retrieves a merchant-related custom attribute definition from a Square seller account.
        /// To retrieve a custom attribute definition created by another application, the visibility setting must be VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_READ
        /// https://developer.squareup.com/reference/square/merchant-custom-attributes-api/retrieve-merchant-custom-attribute-definition
        public func retrieveMerchantCustomAttributeDefinition(key: String,
                                                       version: Int?,
                                                       accessToken: String,
                                                       completion: ((RetrieveMerchantCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                       failed: ((Error) -> Void)? = nil) {
            
            let retrieveMerchantCustomAttributeDefinitionRequest = Serializer.deserialize(RetrieveMerchantCustomAttributeDefinitionRequest.self, [:])!
            retrieveMerchantCustomAttributeDefinitionRequest.Version = version
            
            request(to: "merchants/custom-attribute-definitions/\(key)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveMerchantCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateMerchantCustomAttributeDefinition: Updates a merchant-related custom attribute definition for a Square seller account.
        /// Use this endpoint to update the following fields: name, description, visibility, or the schema for a Selection data type. Only the definition owner can update a custom attribute definition.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/merchant-custom-attributes-api/update-merchant-custom-attribute-definition
        public func updateMerchantCustomAttributeDefinition(key: String,
                                                     customAttributeDefinition: CustomAttributeDefinition?,
                                                     IdempotencyKey: String?,
                                                     accessToken: String,
                                                     completion: ((UpdateMerchantCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                     failed: ((Error) -> Void)? = nil) {
            
            let updateMerchantCustomAttributeDefinitionRequest = Serializer.deserialize(UpdateMerchantCustomAttributeDefinitionRequest.self, [:])!
            
            updateMerchantCustomAttributeDefinitionRequest.customAttributeDefinition = customAttributeDefinition
            updateMerchantCustomAttributeDefinitionRequest.IdempotencyKey = IdempotencyKey
            
            request(to: "merchants/custom-attribute-definitions/\(key)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateMerchantCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - bulkDeleteMerchantCustomAttributes: Deletes custom attributes for a merchant as a bulk operation.
        /// To delete a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/merchant-custom-attributes-api/bulk-delete-merchant-custom-attributes
        public func bulkDeleteMerchantCustomAttributes(values: [String: BulkDeleteMerchantCustomAttributesRequestMerchantCustomAttributeDeleteRequest]?,
                                                     accessToken: String,
                                                completion: ((BulkDeleteMerchantCustomAttributesResponse) -> Void)? = nil,
                                                failed: ((Error) -> Void)? = nil) {
            
            let bulkDeleteMerchantCustomAttributesRequest = Serializer.deserialize(BulkDeleteMerchantCustomAttributesRequest.self, [:])!
            bulkDeleteMerchantCustomAttributesRequest.Values = values
            
            request(to: "merchants/custom-attributes/bulk-delete",
                    method: .post,
                    accessToken: accessToken,
                    request: bulkDeleteMerchantCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - bulkUpsertMerchantCustomAttributes: Creates or updates custom attributes for a merchant as a bulk operation.
        /// Use this endpoint to set the value of one or more custom attributes for a merchant. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the CreateMerchantCustomAttributeDefinition endpoint. This BulkUpsertMerchantCustomAttributes endpoint accepts a map of 1 to 25 individual upsert requests and returns a map of individual upsert responses. Each upsert request has a unique ID and provides a merchant ID and custom attribute. Each upsert response is returned with the ID of the corresponding request. To create or update a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/merchant-custom-attributes-api/bulk-upsert-merchant-custom-attributes
        public func bulkUpsertMerchantCustomAttributes(values: [String: BulkUpsertMerchantCustomAttributesRequestMerchantCustomAttributeUpsertRequest]?,
                                                accessToken: String,
                                                completion: ((BulkUpsertMerchantCustomAttributesResponse) -> Void)? = nil,
                                                failed: ((Error) -> Void)? = nil) {
            
            let bulkUpsertMerchantCustomAttributesRequest = Serializer.deserialize(BulkUpsertMerchantCustomAttributesRequest.self, [:])!
            bulkUpsertMerchantCustomAttributesRequest.Values = values
            
            request(to: "merchants/custom-attributes/bulk-upsert",
                    method: .post,
                    accessToken: accessToken,
                    request: bulkUpsertMerchantCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listMerchantCustomAttributes: Lists the custom attributes associated with a merchant.
        /// You can use the with_definitions query parameter to also retrieve custom attribute definitions in the same call. When all response pages are retrieved, the results include all custom attributes that are visible to the requesting application, including those that are owned by other applications and set to VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_READ
        /// https://developer.squareup.com/reference/square/merchant-custom-attributes-api/list-merchant-custom-attributes
        public func listMerchantCustomAttributes(merchantId: String,
                                          visibilityFilter: VisibilityFilter?,
                                          limit: Int?,
                                          cursor: String?,
                                          withDefinitions: Bool?,
                                          accessToken: String,
                                          completion: ((ListMerchantCustomAttributesResponse) -> Void)? = nil,
                                          failed: ((Error) -> Void)? = nil) {
            
            let listMerchantCustomAttributesRequest = Serializer.deserialize(ListMerchantCustomAttributesRequest.self, [:])!
            
            listMerchantCustomAttributesRequest.visibilityFilter = visibilityFilter
            listMerchantCustomAttributesRequest.Limit = limit
            listMerchantCustomAttributesRequest.Cursor = cursor
            listMerchantCustomAttributesRequest.WithDefinitions = withDefinitions
            
            request(to: "merchants/\(merchantId)/custom-attributes",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listMerchantCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteMerchantCustomattribute: Deletes a custom attribute associated with a merchant.
        /// To delete a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/merchant-custom-attributes-api/delete-merchant-custom-attribute
        public func deleteMerchantCustomattribute(merchantId: String,
                                           key: String,
                                            accessToken: String,
                                            completion: ((SquareupResponse) -> Void)? = nil,
                                            failed: ((Error) -> Void)? = nil) {
            
            request(to: "merchants/\(merchantId)/custom-attributes/\(key)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveMerchantCustomAttribute: Retrieves a custom attribute associated with a merchant.
        /// You can use the with_definition query parameter to also retrieve the custom attribute definition in the same call. To retrieve a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_READ
        /// https://developer.squareup.com/reference/square/merchant-custom-attributes-api/retrieve-merchant-custom-attribute
        public func retrieveMerchantCustomAttribute(merchantId: String,
                                             key: String,
                                             withDefinitions: Bool?,
                                             version: Int?,
                                             accessToken: String,
                                             completion: ((RetrieveMerchantCustomAttributeResponse) -> Void)? = nil,
                                             failed: ((Error) -> Void)? = nil) {
            
            let retrieveMerchantCustomAttributeRequest = Serializer.deserialize(RetrieveMerchantCustomAttributeRequest.self, [:])!
            
            retrieveMerchantCustomAttributeRequest.WithDefinitions = withDefinitions
            retrieveMerchantCustomAttributeRequest.Version = version
            
            request(to: "merchants/\(merchantId)/custom-attributes/\(key)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveMerchantCustomAttributeRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - upsertMerchantCustomAttribute: Creates or updates a custom attribute for a merchant.
        /// Use this endpoint to set the value of a custom attribute for a specified merchant. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the CreateMerchantCustomAttributeDefinition endpoint. To create or update a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/merchant-custom-attributes-api/upsert-merchant-custom-attribute
        public func upsertMerchantCustomAttribute(merchantDd: String,
                                           key: String,
                                           customAttribute: CustomAttribute,
                                           idempotencyKey: String?,
                                           accessToken: String,
                                           completion: ((UpsertMerchantCustomAttributeResponse) -> Void)? = nil,
                                           failed: ((Error) -> Void)? = nil) {
            
            let upsertMerchantCustomAttributeRequest = Serializer.deserialize(UpsertMerchantCustomAttributeRequest.self, [:])!
            
            upsertMerchantCustomAttributeRequest.customAttribute = customAttribute
            upsertMerchantCustomAttributeRequest.IdempotencyKey = idempotencyKey
            
            request(to: "merchants/\(merchantDd)/custom-attributes/\(key)",
                    method: .post,
                    accessToken: accessToken,
                    request: upsertMerchantCustomAttributeRequest,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - Locations: Create and manage the locations of a seller's business.
    /// Many sellers use multiple locations to track where they make sales. The Locations API allows you to create and manage data about those locations, such as their addresses, names, and business hours.
    /// https://developer.squareup.com/reference/square/locations-api
    open class Locations: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listLocations: Provides details about all of the seller's locations, including those with an inactive status.
        /// Permissions: MERCHANT_PROFILE_READ
        /// https://developer.squareup.com/reference/square/locations-api/list-locations
        public func listLocations(accessToken: String,
                           completion: ((ListLocationsResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            request(to: "locations",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createLocation: Creates a location.
        /// Creating new locations allows for separate configuration of receipt layouts, item prices, and sales reports. Developers can use locations to separate sales activity through applications that integrate with Square from sales activity elsewhere in a seller's account. Locations created programmatically with the Locations API last forever and are visible to the seller for their own management. Therefore, ensure that each location has a sensible and unique name.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/locations-api/create-location
        public func createLocation(location: Location,
                            accessToken: String,
                            completion: ((CreateLocationResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            let createLocationRequest = Serializer.deserialize(CreateLocationRequest.self, [:])!
            createLocationRequest.location = location
            
            request(to: "locations",
                    method: .post,
                    accessToken: accessToken,
                    request: createLocationRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveLocation: Retrieves details of a single location.
        /// Specify "main" as the location ID to retrieve details of the main location.
        /// Permissions: MERCHANT_PROFILE_READ
        /// https://developer.squareup.com/reference/square/locations-api/retrieve-location
        public func retrieveLocation(locationId: String,
                              accessToken: String,
                              completion: ((RetrieveLocationResponse) -> Void)? = nil,
                              failed: ((Error) -> Void)? = nil) {
            
            request(to: "locations/\(locationId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateLocation: Updates a location.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/locations-api/update-location
        public func updateLocation(location: Location,
                            locationId: String,
                            accessToken: String,
                            completion: ((UpdateLocationResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            let updateLocationRequest = Serializer.deserialize(UpdateLocationRequest.self, [:])!
            updateLocationRequest.location = location
            
            request(to: "locations/\(locationId)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateLocationRequest,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - LocationCustomAttributes: Create and manage location-related custom attribute definitions and custom attributes.
    /// Use the Location Custom Attributes API to create and manage custom attributes for locations. Custom attributes can be used to store properties or metadata that simplify integration, synchronization, and personalization workflows. After a custom attribute definition is created in a Square seller account, the custom attribute value can be set for locations.
    /// https://developer.squareup.com/reference/square/location-custom-attributes-api
    open class LocationCustomAttributes: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listLocationCustomAttributeDefinitions: Lists the location-related custom attribute definitions that belong to a Square seller account.
        /// When all response pages are retrieved, the results include all custom attribute definitions that are visible to the requesting application, including those that are created by other applications and set to VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_READ
        /// https://developer.squareup.com/reference/square/location-custom-attributes-api/list-location-custom-attribute-definitions
        public func listLocationCustomAttributeDefinitions(visibilityFilter: VisibilityFilter?,
                                                    limit: Int?,
                                                    cursor: String?,
                                                    accessToken: String,
                                                    completion: ((ListLocationCustomAttributeDefinitionsResponse) -> Void)? = nil,
                                                    failed: ((Error) -> Void)? = nil) {
            
            let listLocationCustomAttributeDefinitionsRequest = Serializer.deserialize(ListLocationCustomAttributeDefinitionsRequest.self, [:])!
            
            listLocationCustomAttributeDefinitionsRequest.VisibilityFilter = visibilityFilter
            listLocationCustomAttributeDefinitionsRequest.Limit = limit
            listLocationCustomAttributeDefinitionsRequest.Cursor = cursor
            
            request(to: "locations/custom-attribute-definitions",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listLocationCustomAttributeDefinitionsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createLocationCustomAttributeDefinition: Creates a location-related custom attribute definition for a Square seller account.
        /// Use this endpoint to define a custom attribute that can be associated with locations. A custom attribute definition specifies the key, visibility, schema, and other properties for a custom attribute. After the definition is created, you can call UpsertLocationCustomAttribute or BulkUpsertLocationCustomAttributes to set the custom attribute for locations.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/location-custom-attributes-api/create-location-custom-attribute-definition
        public func createLocationCustomAttributeDefinition(customAttributeDefinition: CustomAttributeDefinition,
                                                     idempotencyKey: String?,
                                                     accessToken: String,
                                                     completion: ((CreateLocationCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                     failed: ((Error) -> Void)? = nil) {
            
            let createLocationCustomAttributeDefinitionRequest = Serializer.deserialize(CreateLocationCustomAttributeDefinitionRequest.self, [:])!
            
            createLocationCustomAttributeDefinitionRequest.customAttributeDefinition = customAttributeDefinition
            createLocationCustomAttributeDefinitionRequest.IdempotencyKey = idempotencyKey
            
            request(to: "locations/custom-attribute-definitions",
                    method: .post,
                    accessToken: accessToken,
                    request: createLocationCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteLocationCustomAttributeDefinition: Deletes a location-related custom attribute definition from a Square seller account.
        /// Deleting a custom attribute definition also deletes the corresponding custom attribute from all locations. Only the definition owner can delete a custom attribute definition.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/location-custom-attributes-api/delete-location-custom-attribute-definition
        public func deleteLocationCustomAttributeDefinition(key: String,
                                                     accessToken: String,
                                                     completion: ((SquareupResponse) -> Void)? = nil,
                                                     failed: ((Error) -> Void)? = nil) {
            
            request(to: "locations/custom-attribute-definitions/\(key)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveLocationCustomAttributeDefinition: Retrieves a location-related custom attribute definition from a Square seller account.
        /// To retrieve a custom attribute definition created by another application, the visibility setting must be VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_READ
        /// https://developer.squareup.com/reference/square/location-custom-attributes-api/retrieve-location-custom-attribute-definition
        public func retrieveLocationCustomAttributeDefinition(key: String,
                                                       version: Int,
                                                       accessToken: String,
                                                       completion: ((RetrieveLocationCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                       failed: ((Error) -> Void)? = nil) {
            
            let retrieveLocationCustomAttributeDefinitionRequest = Serializer.deserialize(RetrieveLocationCustomAttributeDefinitionRequest.self, [:])!
            retrieveLocationCustomAttributeDefinitionRequest.Version = version
            
            request(to: "locations/custom-attribute-definitions/\(key)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveLocationCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateLocationCustomAttributeDefinition: Updates a location-related custom attribute definition for a Square seller account.
        /// Use this endpoint to update the following fields: name, description, visibility, or the schema for a Selection data type. Only the definition owner can update a custom attribute definition.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/location-custom-attributes-api/update-location-custom-attribute-definition
        public func updateLocationCustomAttributeDefinition(key: String,
                                                     customAttributeDefinition: CustomAttributeDefinition?,
                                                     accessToken: String,
                                                     completion: ((UpdateLocationCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                     failed: ((Error) -> Void)? = nil) {
            
            let updateLocationCustomAttributeDefinitionRequest = Serializer.deserialize(UpdateLocationCustomAttributeDefinitionRequest.self, [:])!
            updateLocationCustomAttributeDefinitionRequest.customAttributeDefinition = customAttributeDefinition
            
            request(to: "locations/custom-attribute-definitions/\(key)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateLocationCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - bulkDeleteLocationCustomAttributes: Deletes custom attributes for locations as a bulk operation.
        /// To delete a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/location-custom-attributes-api/bulk-delete-location-custom-attributes
        public func bulkDeleteLocationCustomAttributes(values: [String: BulkDeleteLocationCustomAttributesRequestLocationCustomAttributeDeleteRequest]?,
                                                accessToken: String,
                                                completion: ((BulkDeleteLocationCustomAttributesResponse) -> Void)? = nil,
                                                failed: ((Error) -> Void)? = nil) {
            
            let bulkDeleteLocationCustomAttributesRequest = Serializer.deserialize(BulkDeleteLocationCustomAttributesRequest.self, [:])!
            bulkDeleteLocationCustomAttributesRequest.Values = values
            
            request(to: "locations/custom-attributes/bulk-delete",
                    method: .post,
                    accessToken: accessToken,
                    request: bulkDeleteLocationCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - bulkUpsertLocationCustomAttributes: Creates or updates custom attributes for locations as a bulk operation.
        /// Use this endpoint to set the value of one or more custom attributes for one or more locations. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the CreateLocationCustomAttributeDefinition endpoint. This BulkUpsertLocationCustomAttributes endpoint accepts a map of 1 to 25 individual upsert requests and returns a map of individual upsert responses. Each upsert request has a unique ID and provides a location ID and custom attribute. Each upsert response is returned with the ID of the corresponding request. To create or update a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/location-custom-attributes-api/bulk-upsert-location-custom-attributes
        public func bulkUpsertLocationCustomAttributes(values: [String: BulkUpsertLocationCustomAttributesRequestLocationCustomAttributeUpsertRequest]?,
                                                accessToken: String,
                                                completion: ((BulkUpsertLocationCustomAttributesResponse) -> Void)? = nil,
                                                failed: ((Error) -> Void)? = nil) {
            
            let bulkUpsertLocationCustomAttributesRequest = Serializer.deserialize(BulkUpsertLocationCustomAttributesRequest.self, [:])!
            bulkUpsertLocationCustomAttributesRequest.Values = values
            
            request(to: "locations/custom-attributes/bulk-upsert",
                    method: .post,
                    accessToken: accessToken,
                    request: bulkUpsertLocationCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listLocationCustomAttributes: Lists the custom attributes associated with a location.
        /// You can use the with_definitions query parameter to also retrieve custom attribute definitions in the same call. When all response pages are retrieved, the results include all custom attributes that are visible to the requesting application, including those that are owned by other applications and set to VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_READ
        /// https://developer.squareup.com/reference/square/location-custom-attributes-api/list-location-custom-attributes
        public func listLocationCustomAttributes(locationId: String,
                                          visibilityFilter: VisibilityFilter?,
                                          limit: Int?,
                                          cursor: String?,
                                          withDefinitions: Bool?,
                                          accessToken: String,
                                          completion: ((ListLocationCustomAttributesResponse) -> Void)? = nil,
                                          failed: ((Error) -> Void)? = nil) {
            
            let listLocationCustomAttributesRequest = Serializer.deserialize(ListLocationCustomAttributesRequest.self, [:])!
            
            listLocationCustomAttributesRequest.visibilityFilter = visibilityFilter
            listLocationCustomAttributesRequest.Limit = limit
            listLocationCustomAttributesRequest.Cursor = cursor
            listLocationCustomAttributesRequest.WithDefinitions = withDefinitions
            
            request(to: "locations/\(locationId)/custom-attributes",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listLocationCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteLocationCustomAttribute: Deletes a custom attribute associated with a location.
        /// To delete a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/location-custom-attributes-api/delete-location-custom-attribute
        public func deleteLocationCustomAttribute(locationId: String,
                                           key: String,
                                           accessToken: String,
                                           completion: ((SquareupResponse) -> Void)? = nil,
                                           failed: ((Error) -> Void)? = nil) {
            
            request(to: "locations/\(locationId)/custom-attributes/\(key)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveLocationCustomAttribute: Retrieves a custom attribute associated with a location.
        /// You can use the with_definition query parameter to also retrieve the custom attribute definition in the same call. To retrieve a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_READ
        /// https://developer.squareup.com/reference/square/location-custom-attributes-api/retrieve-location-custom-attribute
        public func retrieveLocationCustomAttribute(locationId: String,
                                             key: String,
                                             withDefinition: Bool?,
                                             version: Int?,
                                             accessToken: String,
                                             completion: ((RetrieveLocationCustomAttributeResponse) -> Void)? = nil,
                                             failed: ((Error) -> Void)? = nil) {
            
            let retrieveLocationCustomAttributeRequest = Serializer.deserialize(RetrieveLocationCustomAttributeRequest.self, [:])!
            
            retrieveLocationCustomAttributeRequest.WithDefinition = withDefinition
            retrieveLocationCustomAttributeRequest.Version = version
            
            request(to: "locations/\(locationId)/custom-attributes/\(key)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveLocationCustomAttributeRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - upsertLocationCustomAttribute: Creates or updates a custom attribute for a location.
        /// Use this endpoint to set the value of a custom attribute for a specified location. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the CreateLocationCustomAttributeDefinition endpoint. To create or update a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: MERCHANT_PROFILE_WRITE
        /// https://developer.squareup.com/reference/square/location-custom-attributes-api/upsert-location-custom-attribute
        public func upsertLocationCustomAttribute(locationId: String,
                                           key: String,
                                           customAttribute: CustomAttribute?,
                                           idempotencyKey: String?,
                                           accessToken: String,
                                           completion: ((UpsertLocationCustomAttributeResponse) -> Void)? = nil,
                                           failed: ((Error) -> Void)? = nil) {
            
            let upsertLocationCustomAttributeRequest = Serializer.deserialize(UpsertLocationCustomAttributeRequest.self, [:])!
            
            upsertLocationCustomAttributeRequest.customAttribute = customAttribute
            upsertLocationCustomAttributeRequest.IdempotencyKey = idempotencyKey
            
            request(to: "locations/\(locationId)/custom-attributes/\(key)",
                    method: .post,
                    accessToken: accessToken,
                    request: upsertLocationCustomAttributeRequest,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - Devices: Manages a pairing between a third-party Point of Sale application and a Square Terminal in a seller location.
    /// https://developer.squareup.com/reference/square/devices-api
    open class Devices: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listDeviceCodes: Lists all DeviceCodes associated with the merchant.
        /// Permissions: DEVICE_CREDENTIAL_MANAGEMENT
        /// https://developer.squareup.com/reference/square/devices-api/list-device-codes
        public func listDeviceCodes(cursor: String?,
                             locationId: String?,
                             productType: ProductType?,
                             status: DeviceCodeStatus?,
                             accessToken: String,
                             completion: ((ListDeviceCodesResponse) -> Void)? = nil,
                             failed: ((Error) -> Void)? = nil) {
            
            let listDeviceCodesRequest = Serializer.deserialize(ListDeviceCodesRequest.self, [:])!
            
            listDeviceCodesRequest.Cursor = cursor
            listDeviceCodesRequest.LocationId = locationId
            listDeviceCodesRequest.productType = productType
            listDeviceCodesRequest.Status = status
            
            request(to: "devices/codes",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listDeviceCodesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createDeviceCode: Creates a DeviceCode that can be used to login to a Square Terminal device to enter the connected terminal mode.
        /// Permissions: DEVICE_CREDENTIAL_MANAGEMENT
        /// https://developer.squareup.com/reference/square/devices-api/create-device-code
        public func createDeviceCode(idempotencyKey: String,
                              deviceCode: DeviceCode,
                              accessToken: String,
                              completion: ((CreateDeviceCodeResponse) -> Void)? = nil,
                              failed: ((Error) -> Void)? = nil) {
            
            let createDeviceCodeRequest = Serializer.deserialize(CreateDeviceCodeRequest.self, [:])!
            
            createDeviceCodeRequest.IdempotencyKey = idempotencyKey
            createDeviceCodeRequest.deviceCode = deviceCode
            
            request(to: "devices/codes",
                    method: .post,
                    accessToken: accessToken,
                    request: createDeviceCodeRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - getDeviceCode: Retrieves DeviceCode with the associated ID.
        /// Permissions: DEVICE_CREDENTIAL_MANAGEMENT
        /// https://developer.squareup.com/reference/square/devices-api/get-device-code
        public func getDeviceCode(id: String,
                           accessToken: String,
                           completion: ((GetDeviceCodeResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            request(to: "devices/codes/\(id)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - CashDrawers: Get details about cash drawer shifts.
    ///  Cash drawer shifts track cash transactions so that the total money in the cash drawers can be reconciled for a specific period of time (a cash drawer shift), for a particular device, in a particular location. The Cash Drawer Shifts API enables you to list and retrieve information about cash drawer shifts.
    ///  https://developer.squareup.com/reference/square/cash-drawers-api
    open class CashDrawers: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listCashDrawerShifts: Provides the details for all of the cash drawer shifts for a location in a date range.
        /// Permissions: CASH_DRAWER_READ
        /// https://developer.squareup.com/reference/square/cash-drawers-api/list-cash-drawer-shifts
        public func listCashDrawerShifts(locationId: String,
                                  sortOrder: SortOrder?,
                                  beginTime: Date?,
                                  endTime: Date?,
                                  limit: Int?,
                                  cursor: String?,
                                  accessToken: String,
                                  completion: ((ListCashDrawerShiftsResponse) -> Void)? = nil,
                                  failed: ((Error) -> Void)? = nil) {
            
            let listCashDrawerShiftsRequest = Serializer.deserialize(ListCashDrawerShiftsRequest.self, [:])!
            
            listCashDrawerShiftsRequest.LocationId = locationId
            listCashDrawerShiftsRequest.sortOrder = sortOrder
            listCashDrawerShiftsRequest.BeginTime = beginTime
            listCashDrawerShiftsRequest.EndTime = endTime
            listCashDrawerShiftsRequest.Limit = limit
            listCashDrawerShiftsRequest.Cursor = cursor
            
            request(to: "cash-drawers/shifts",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listCashDrawerShiftsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveCashDrawerShift: Provides the summary details for a single cash drawer shift.
        /// See ListCashDrawerShiftEvents for a list of cash drawer shift events.
        /// Permissions: CASH_DRAWER_READ
        /// https://developer.squareup.com/reference/square/cash-drawers-api/retrieve-cash-drawer-shift
        public func retrieveCashDrawerShift(shiftId: String,
                                     locationId: String,
                                     accessToken: String,
                                     completion: ((RetrieveCashDrawerShiftResponse) -> Void)? = nil,
                                     failed: ((Error) -> Void)? = nil) {
            
            let retrieveCashDrawerShiftRequest = Serializer.deserialize(RetrieveCashDrawerShiftRequest.self, [:])!
            retrieveCashDrawerShiftRequest.LocationId = locationId
            
            request(to: "cash-drawers/shifts/\(shiftId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveCashDrawerShiftRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listCashDrawerShiftEvents: Provides a paginated list of events for a single cash drawer shift.
        /// Permissions: CASH_DRAWER_READ
        /// https://developer.squareup.com/reference/square/cash-drawers-api/list-cash-drawer-shift-events
        public func listCashDrawerShiftEvents(shiftId: String,
                                       locationId: String,
                                       limit: Int?,
                                       cursor: String?,
                                       accessToken: String,
                                       completion: ((ListCashDrawerShiftEventsResponse) -> Void)? = nil,
                                       failed: ((Error) -> Void)? = nil) {
            
            let listCashDrawerShiftEventsRequest = Serializer.deserialize(ListCashDrawerShiftEventsRequest.self, [:])!
            
            listCashDrawerShiftEventsRequest.LocationId = locationId
            listCashDrawerShiftEventsRequest.Limit = limit
            listCashDrawerShiftEventsRequest.Cursor = cursor
            
            request(to: "cash-drawers/shifts/\(shiftId)/events",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listCashDrawerShiftEventsRequest,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - Vendors: Manages a seller's suppliers.
    /// The Vendors API allows applications to create, retrieve, and update vendors as suppliers to a seller.
    /// https://developer.squareup.com/reference/square/vendors-api
    open class Vendors: SquareupApi {
        
        fileprivate override init() {}
        
        /// - bulkCreateVendors: Creates one or more Vendor objects to represent suppliers to a seller.
        /// Permissions: VENDOR_WRITE
        /// https://developer.squareup.com/reference/square/vendors-api/bulk-create-vendors
        public func bulkCreateVendors(vendors: [String: Vendor],
                               accessToken: String,
                               completion: ((BulkCreateVendorsResponse) -> Void)? = nil,
                               failed: ((Error) -> Void)? = nil) {
            
            let bulkCreateVendorsRequest = Serializer.deserialize(BulkCreateVendorsRequest.self, [:])!
            bulkCreateVendorsRequest.Vendors = vendors
            
            request(to: "vendors/bulk-create",
                    method: .post,
                    accessToken: accessToken,
                    request: bulkCreateVendorsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - bulkRetrieveVendors: Retrieves one or more vendors of specified Vendor IDs.
        /// Permissions: VENDOR_READ
        /// https://developer.squareup.com/reference/square/vendors-api/bulk-retrieve-vendors
        public func bulkRetrieveVendors(vendorIds: [String]?,
                                 accessToken: String,
                                 completion: ((BulkRetrieveVendorsResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            let bulkRetrieveVendorsRequest = Serializer.deserialize(BulkRetrieveVendorsRequest.self, [:])!
            bulkRetrieveVendorsRequest.VendorIds = vendorIds
            
            request(to: "vendors/bulk-retrieve",
                    method: .post,
                    accessToken: accessToken,
                    request: bulkRetrieveVendorsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - bulkUpdateVendors: Updates one or more of existing Vendor objects as suppliers to a seller.
        /// Permissions: VENDOR_WRITE
        /// https://developer.squareup.com/reference/square/vendors-api/bulk-update-vendors
        public func bulkUpdateVendors(vendors: [String: UpdateVendorRequest],
                               accessToken: String,
                               completion: ((BulkUpdateVendorsResponse) -> Void)? = nil,
                               failed: ((Error) -> Void)? = nil) {
            
            let bulkUpdateVendorsRequest = Serializer.deserialize(BulkUpdateVendorsRequest.self, [:])!
            bulkUpdateVendorsRequest.Vendors = vendors
            
            request(to: "vendors/bulk-update",
                    method: .put,
                    accessToken: accessToken,
                    request: bulkUpdateVendorsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createVendor: Creates a single Vendor object to represent a supplier to a seller.
        /// Permissions: VENDOR_WRITE
        /// https://developer.squareup.com/reference/square/vendors-api/create-vendor
        public func createVendor(idempotencyKey: String,
                          vendor: Vendor?,
                          accessToken: String,
                          completion: ((CreateVendorResponse) -> Void)? = nil,
                          failed: ((Error) -> Void)? = nil) {
            
            let createVendorRequest = Serializer.deserialize(CreateVendorRequest.self, [:])!
            
            createVendorRequest.IdempotencyKey = idempotencyKey
            createVendorRequest.vendor = vendor
            
            request(to: "vendors/create",
                    method: .post,
                    accessToken: accessToken,
                    request: createVendorRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - searchVendors: Searches for vendors using a filter against supported Vendor properties and a supported sorter.
        /// Permissions: VENDOR_READ
        /// https://developer.squareup.com/reference/square/vendors-api/search-vendors
        public func searchVendors(filter: SearchVendorsRequestFilter?,
                           sort: SearchVendorsRequestSort?,
                           cursor: String?,
                           accessToken: String,
                           completion: ((BulkUpdateVendorsResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            let searchVendorsRequest = Serializer.deserialize(SearchVendorsRequest.self, [:])!
            
            searchVendorsRequest.Filter = filter
            searchVendorsRequest.Sort = sort
            searchVendorsRequest.Cursor = cursor
            
            request(to: "vendors/search",
                    method: .post,
                    accessToken: accessToken,
                    request: searchVendorsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveVendor: Retrieves the vendor of a specified Vendor ID.
        /// Permissions: VENDOR_READ
        /// https://developer.squareup.com/reference/square/vendors-api/retrieve-vendor
        public func retrieveVendor(vendorId: String,
                            accessToken: String,
                            completion: ((RetrieveVendorResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            request(to: "vendors/\(vendorId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateVendor: Updates an existing Vendor object as a supplier to a seller.
        /// Permissions: VENDOR_WRITE
        /// https://developer.squareup.com/reference/square/vendors-api/update-vendor
        public func updateVendor(vendorId: String,
                          idempotencyKey: String,
                          vendor: Vendor,
                          accessToken: String,
                          completion: ((UpdateVendorResponse) -> Void)? = nil,
                          failed: ((Error) -> Void)? = nil) {
            
            let updateVendorRequest = Serializer.deserialize(UpdateVendorRequest.self, [:])!
            
            updateVendorRequest.IdempotencyKey = idempotencyKey
            updateVendorRequest.vendor = vendor
            
            request(to: "vendors/\(vendorId)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateVendorRequest,
                    completion: completion,
                    failed: failed)
        }
    }
}
