//
//  CustomersApi.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation
import Alamofire

open class CustomersApi {
    
    public static let customers = Customers()
    public static let customAttributes = CustomerCustomAttributes()
    public static let groups = CustomerGroups()
    public static let segments = CustomerSegments()
    
    fileprivate init() {}
    
    /// - Customers: Create and manage customer profiles and sync CRM systems with Square.
    /// The Customers API enables you to create and manage customer profiles, as well as search for customers based on various criteria (including customer group membership). You can also use the API to sync contacts between your CRM system and Square.
    /// https://developer.squareup.com/reference/square/customers-api
    open class Customers: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listCustomers: Lists customer profiles associated with a Square account.
        /// Under normal operating conditions, newly created or updated customer profiles become available for the listing operation in well under 30 seconds. Occasionally, propagation of the new or updated profiles can take closer to one minute or longer, especially during network incidents and outages.
        /// Permissions: CUSTOMERS_READ
        /// https://developer.squareup.com/reference/square/customers-api/list-customers
        func listCustomers(cursor: String?,
                           limit: Int?,
                           sortField: CustomerSortField = .Default,
                           sortOrder: SortOrder = .Asc,
                           accessToken: String,
                           completion: ((ListCustomersResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            let listCustomersRequest = Serializer.deserialize(ListCustomersRequest.self, [:])!
            
            listCustomersRequest.Cursor = cursor
            listCustomersRequest.Limit = limit
            listCustomersRequest.SortField = sortField
            listCustomersRequest.sortOrder = sortOrder
            
            request(to: "customers",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listCustomersRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createCustomer: Creates a new customer for a business.
        /// You must provide at least one of the following values in your request to this endpoint:
        ///
        /// given_name
        /// family_name
        /// company_name
        /// email_address
        /// phone_number
        ///
        /// Permissions: CUSTOMERS_WRITE
        /// https://developer.squareup.com/reference/square/customers-api/create-customer
        func createCustomer(givenName: String?,
                            familyName: String?,
                            companyName: String?,
                            nickname: String?,
                            emailAddress: String?,
                            address: Address?,
                            phoneNumber: String?,
                            referenceId: String?,
                            note: String?,
                            birthday: Date?,
                            taxIds: CustomerTaxIds?,
                            idempotencyKey: String?,
                            accessToken: String,
                            completion: ((CreateCustomersResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            let createCustomersRequest = Serializer.deserialize(CreateCustomerRequest.self, [:])!
            
            createCustomersRequest.IdempotencyKey = idempotencyKey
            createCustomersRequest.GivenName = givenName
            createCustomersRequest.FamilyName = familyName
            createCustomersRequest.CompanyName = companyName
            createCustomersRequest.Nickname = nickname
            createCustomersRequest.EmailAddress = emailAddress
            createCustomersRequest.address = address
            createCustomersRequest.PhoneNumber = phoneNumber
            createCustomersRequest.ReferenceId = referenceId
            createCustomersRequest.Note = note
            createCustomersRequest.Birthday = birthday
            createCustomersRequest.TaxIds = taxIds
            
            request(to: "customers",
                    method: .post,
                    accessToken: accessToken,
                    request: createCustomersRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - searchCustomers:  Searches the customer profiles associated with a Square account using one or more supported query filters.
        /// Calling SearchCustomers without any explicit query filter returns all customer profiles ordered alphabetically based on given_name and family_name.
        ///
        /// Under normal operating conditions, newly created or updated customer profiles become available for the search operation in well under 30 seconds. Occasionally, propagation of the new or updated profiles can take closer to one minute or longer, especially during network incidents and outages.
        /// Permissions: CUSTOMERS_READ
        func searchCustomers(cursor: String?,
                             limit: Int?,
                             query: CustomerQuery?,
                             accessToken: String,
                             completion: ((SearchCustomersResponse) -> Void)? = nil,
                             failed: ((Error) -> Void)? = nil) {
            
            let searchCustomerRequest = Serializer.deserialize(SearchCustomersRequest.self, [:])!
            searchCustomerRequest.Cursor = cursor
            searchCustomerRequest.Limit = limit
            searchCustomerRequest.Query = query
            
            request(to: "customers/search",
                    method: .post,
                    accessToken: accessToken,
                    request: searchCustomerRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteCustomer: Deletes a customer profile from a business.
        /// This operation also unlinks any associated cards on file.
        ///
        /// As a best practice, include the version field in the request to enable optimistic concurrency control. If included, the value must be set to the current version of the customer profile.
        ///
        /// To delete a customer profile that was created by merging existing profiles, you must use the ID of the newly created profile.
        /// Permissions: CUSTOMERS_WRITE
        /// https://developer.squareup.com/reference/square/customers-api/delete-customer
        func deleteCustomer(customerId: String,
                            version: Int?,
                            accessToken: String,
                            completion: ((SquareupResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            let deleteCustomerRequest = Serializer.deserialize(DeleteCustomerRequest.self, [:])!
            deleteCustomerRequest.Version = version
            
            request(to: "customers/\(customerId)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: deleteCustomerRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveCustomer: Returns details for a single customer.
        /// Permissions: CUSTOMERS_READ
        func retrieveCustomer(customerId: String,
                              accessToken: String,
                              completion: ((RetrieveCustomerResponse) -> Void)? = nil,
                              failed: ((Error) -> Void)? = nil) {
            
            request(to: "customers/\(customerId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateCustomer: Updates a customer profile.
        /// This endpoint supports sparse updates, so only new or changed fields are required in the request. To add or update a field, specify the new value. To remove a field, specify null and include the X-Clear-Null header set to true (recommended) or specify an empty string (string fields only).
        ///
        /// As a best practice, include the version field in the request to enable optimistic concurrency control. If included, the value must be set to the current version of the customer profile.
        ///
        /// To update a customer profile that was created by merging existing profiles, you must use the ID of the newly created profile.
        /// You cannot use this endpoint to change cards on file. To make changes, use the Cards API or Gift Cards API.
        /// Permissions: CUSTOMERS_WRITE
        /// https://developer.squareup.com/reference/square/customers-api/update-customer
        func updateCustomer(customerId: String,
                            givenName: String?,
                            familyName: String?,
                            companyName: String?,
                            nickname: String?,
                            emailAddress: String?,
                            address: Address?,
                            phoneNumber: String?,
                            referenceId: String?,
                            note: String?,
                            birthday: Date?,
                            version: Int?,
                            taxIds: CustomerTaxIds?,
                            accessToken: String,
                            completion: ((UpdateCustomerResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            let updateCustomerRequest = Serializer.deserialize(UpdateCustomerRequest.self, [:])!
            
            updateCustomerRequest.GivenName = givenName
            updateCustomerRequest.FamilyName = familyName
            updateCustomerRequest.CompanyName = companyName
            updateCustomerRequest.Nickname = nickname
            updateCustomerRequest.EmailAddress = emailAddress
            updateCustomerRequest.address = address
            updateCustomerRequest.PhoneNumber = phoneNumber
            updateCustomerRequest.ReferenceId = referenceId
            updateCustomerRequest.Note = note
            updateCustomerRequest.Birthday = birthday
            updateCustomerRequest.Version = version
            updateCustomerRequest.TaxIds = taxIds
            
            request(to: "customers/\(customerId)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateCustomerRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - removeGroupFromCustomer: Removes a group membership from a customer.
        /// The customer is identified by the customer_id value and the customer group is identified by the group_id value.
        /// Permissions: CUSTOMERS_WRITE
        /// https://developer.squareup.com/reference/square/customers-api/remove-group-from-customer
        func removeGroupFromCustomer(customerId: String,
                                     groupId: String,
                                     accessToken: String,
                                     completion: ((SquareupResponse) -> Void)? = nil,
                                     failed: ((Error) -> Void)? = nil) {
            
            request(to: "customers/\(customerId)/groups/\(groupId)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - addGroupFromCustomer: Adds a group membership to a customer.
        /// The customer is identified by the customer_id value and the customer group is identified by the group_id value.
        /// Permissions: CUSTOMERS_WRITE
        /// https://developer.squareup.com/reference/square/customers-api/add-group-to-customer
        func addGroupFromCustomer(customerId: String,
                                  groupId: String,
                                  accessToken: String,
                                  completion: ((SquareupResponse) -> Void)? = nil,
                                  failed: ((Error) -> Void)? = nil) {
            
            request(to: "customers/\(customerId)/groups/\(groupId)",
                    method: .put,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - CustomerCustomAttributes: Create and manage customer-related custom attribute definitions and custom attributes.
    /// Use the Customer Custom Attributes API to create and manage custom attributes for customer profiles. Custom attributes can be used to store properties or metadata that simplify integration, synchronization, and personalization workflows. After a custom attribute definition is created in a Square seller account, the custom attribute value can be set for customer profiles in the seller's Customer Directory.
    /// https://developer.squareup.com/reference/square/customer-custom-attributes-api
    open class CustomerCustomAttributes: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listCustomerCustomAttributeDefinitions: Lists the customer-related custom attribute definitions that belong to a Square seller account.
        /// When all response pages are retrieved, the results include all custom attribute definitions that are visible to the requesting application, including those that are created by other applications and set to VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES. Note that seller-defined custom attributes (also known as custom fields) are always set to VISIBILITY_READ_WRITE_VALUES.
        /// Permissions:CUSTOMERS_READ
        /// https://developer.squareup.com/reference/square/customer-custom-attributes-api/list-customer-custom-attribute-definitions
        func listCustomerCustomAttributeDefinitions(limit: Int?,
                                                    cursor: String?,
                                                    accessToken: String,
                                                    completion: ((ListCustomerCustomAttributeDefinitionsResponse) -> Void)? = nil,
                                                    failed: ((Error) -> Void)? = nil) {
            
            let listCustomerCustomAttributeDefinitionsRequest = Serializer.deserialize(ListCustomerCustomAttributeDefinitionsRequest.self, [:])!
            
            listCustomerCustomAttributeDefinitionsRequest.Limit = limit
            listCustomerCustomAttributeDefinitionsRequest.Cursor = cursor
            
            request(to: "/customers/custom-attribute-definitions",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listCustomerCustomAttributeDefinitionsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createCustomerCustomAttributeDefinition: Creates a customer-related custom attribute definition for a Square seller account.
        ///
        /// Use this endpoint to define a custom attribute that can be associated with customer profiles.
        ///
        /// A custom attribute definition specifies the key, visibility, schema, and other properties for a custom attribute. After the definition is created, you can call UpsertCustomerCustomAttribute or BulkUpsertCustomerCustomAttributes to set the custom attribute for customer profiles in the seller's Customer Directory.
        ///
        /// Sellers can view all custom attributes in exported customer data, including those set to VISIBILITY_HIDDEN.
        /// Permissions:CUSTOMERS_WRITE
        ///  https://developer.squareup.com/reference/square/customer-custom-attributes-api/create-customer-custom-attribute-definition
        func createCustomerCustomAttributeDefinition(customAttributeDefinition: CustomAttributeDefinition?,
                                                     idempotencyKey: String?,
                                                     accessToken: String,
                                                     completion: ((CreateCustomerCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                     failed: ((Error) -> Void)? = nil) {
            
            let createCustomerCustomAttributeDefinitionRequest = Serializer.deserialize(CreateCustomerCustomAttributeDefinitionRequest.self, [:])!
            
            createCustomerCustomAttributeDefinitionRequest.customAttributeDefinition = customAttributeDefinition
            createCustomerCustomAttributeDefinitionRequest.IdempotencyKey = idempotencyKey
            
            request(to: "customers/custom-attribute-definitions",
                    method: .post,
                    accessToken: accessToken,
                    request: createCustomerCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteCustomerCustomAttributeDefinition: Deletes a customer-related custom attribute definition from a Square seller account.
        /// Deleting a custom attribute definition also deletes the corresponding custom attribute from all customer profiles in the seller's Customer Directory.
        ///
        /// Only the definition owner can delete a custom attribute definition.
        /// Permissions:CUSTOMERS_WRITE
        ///  https://developer.squareup.com/reference/square/customer-custom-attributes-api/delete-customer-custom-attribute-definition
        func deleteCustomerCustomAttributeDefinition(key: String,
                                                     accessToken: String,
                                                     completion: ((SquareupResponse) -> Void)? = nil,
                                                     failed: ((Error) -> Void)? = nil) {
            
            request(to: "customers/custom-attribute-definitions/\(key)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveCustomerCustomAttributeDefinition: Retrieves a customer-related custom attribute definition from a Square seller account.
        /// To retrieve a custom attribute definition created by another application, the visibility setting must be VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES. Note that seller-defined custom attributes (also known as custom fields) are always set to VISIBILITY_READ_WRITE_VALUES.
        /// Permissions:CUSTOMERS_READ
        ///  https://developer.squareup.com/reference/square/customer-custom-attributes-api/retrieve-customer-custom-attribute-definition
        func retrieveCustomerCustomAttributeDefinition(key: String,
                                                       version: Int?,
                                                       accessToken: String,
                                                       completion: ((RetrieveCustomerCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                       failed: ((Error) -> Void)? = nil) {
            
            let retrieveCustomerCustomAttributeDefinitionRequest = Serializer.deserialize(RetrieveCustomerCustomAttributeDefinitionRequest.self, [:])!
            retrieveCustomerCustomAttributeDefinitionRequest.Version = version
            
            request(to: "customers/custom-attribute-definitions/\(key)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveCustomerCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateCustomerCustomAttributeDefinition: Updates a customer-related custom attribute definition for a Square seller account.
        /// Use this endpoint to update the following fields: name, description, visibility, or the schema for a Selection data type.
        ///
        /// Only the definition owner can update a custom attribute definition. Note that sellers can view all custom attributes in exported customer data, including those set to VISIBILITY_HIDDEN.
        /// Permissions:CUSTOMERS_WRITE
        ///  https://developer.squareup.com/reference/square/customer-custom-attributes-api/update-customer-custom-attribute-definition
        func updateCustomerCustomAttributeDefinition(key: String,
                                                     customAttributeDefinition: CustomAttributeDefinition?,
                                                     idempotencyKey: String?,
                                                     accessToken: String,
                                                     completion: ((UpdateCustomerCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                     failed: ((Error) -> Void)? = nil) {
            
            let updateCustomerCustomAttributeDefinitionRequest = Serializer.deserialize(UpdateCustomerCustomAttributeDefinitionRequest.self, [:])!
            
            updateCustomerCustomAttributeDefinitionRequest.customAttributeDefinition = customAttributeDefinition
            updateCustomerCustomAttributeDefinitionRequest.IdempotencyKey = idempotencyKey
            
            request(to: "customers/custom-attribute-definitions/\(key)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateCustomerCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - bulkUpsertCustomerCustomAttributes: Creates or updates custom attributes for customer profiles as a bulk operation.
        /// Use this endpoint to set the value of one or more custom attributes for one or more customer profiles. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the CreateCustomerCustomAttributeDefinition endpoint.
        ///
        /// This BulkUpsertCustomerCustomAttributes endpoint accepts a map of 1 to 25 individual upsert requests and returns a map of individual upsert responses. Each upsert request has a unique ID and provides a customer ID and custom attribute. Each upsert response is returned with the ID of the corresponding request.
        ///
        /// To create or update a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES. Note that seller-defined custom attributes (also known as custom fields) are always set to VISIBILITY_READ_WRITE_VALUES.
        /// Permissions:CUSTOMERS_WRITE
        ///  https://developer.squareup.com/reference/square/customer-custom-attributes-api/bulk-upsert-customer-custom-attributes
        func bulkUpsertCustomerCustomAttributes(value: [String: BulkUpsertCustomerCustomAttributesRequestCustomerCustomAttributeUpsertRequest]?,
                                                accessToken: String,
                                                completion: ((BulkUpsertCustomerCustomAttributesResponse) -> Void)? = nil,
                                                failed: ((Error) -> Void)? = nil) {
            
            let bulkUpsertCustomerCustomAttributesRequest = Serializer.deserialize(BulkUpsertCustomerCustomAttributesRequest.self, [:])!
            bulkUpsertCustomerCustomAttributesRequest.Value = value
            
            request(to: "customers/custom-attributes/bulk-upsert",
                    method: .post,
                    accessToken: accessToken,
                    request: bulkUpsertCustomerCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listCustomerCustomAttributes: Lists the custom attributes associated with a customer profile.
        /// You can use the with_definitions query parameter to also retrieve custom attribute definitions in the same call.
        ///
        /// When all response pages are retrieved, the results include all custom attributes that are visible to the requesting application, including those that are owned by other applications and set to VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES.
        /// Permissions:CUSTOMERS_READ
        ///  https://developer.squareup.com/reference/square/customer-custom-attributes-api/list-customer-custom-attributes
        func listCustomerCustomAttributes(customerId: String,
                                          limit: Int?,
                                          cursor: String?,
                                          withDefinitions: Bool?,
                                          accessToken: String,
                                          completion: ((ListCustomerCustomAttributesResponse) -> Void)? = nil,
                                          failed: ((Error) -> Void)? = nil) {
            
            let listCustomerCustomAttributesRequest = Serializer.deserialize(ListCustomerCustomAttributesRequest.self, [:])!
            
            listCustomerCustomAttributesRequest.Limit = limit
            listCustomerCustomAttributesRequest.Cursor = cursor
            listCustomerCustomAttributesRequest.WithDefinitions = withDefinitions
            
            request(to: "customers/\(customerId)/custom-attributes",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listCustomerCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteCustomerCustomAttribute: Deletes a custom attribute associated with a customer profile.
        /// To delete a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES. Note that seller-defined custom attributes (also known as custom fields) are always set to VISIBILITY_READ_WRITE_VALUES.
        /// Permissions:CUSTOMERS_WRITE
        ///  https://developer.squareup.com/reference/square/customer-custom-attributes-api/delete-customer-custom-attribute
        func deleteCustomerCustomAttribute(customerId: String,
                                           key: String,
                                           accessToken: String,
                                           completion: ((SquareupResponse) -> Void)? = nil,
                                           failed: ((Error) -> Void)? = nil) {
            
            request(to: "customers/\(customerId)/custom-attributes/\(key)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveCustomerCustomAttribute: Retrieves a custom attribute associated with a customer profile.
        /// You can use the with_definition query parameter to also retrieve the custom attribute definition in the same call.
        /// To retrieve a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES. Note that seller-defined custom attributes (also known as custom fields) are always set to VISIBILITY_READ_WRITE_VALUES.
        /// Permissions:CUSTOMERS_READ
        ///  https://developer.squareup.com/reference/square/customer-custom-attributes-api/retrieve-customer-custom-attribute
        func retrieveCustomerCustomAttribute(customerId: String,
                                             key: String,
                                             withDefinitions: Bool?,
                                             version: Int?,
                                             accessToken: String,
                                             completion: ((RetrieveCustomerCustomAttributeResponse) -> Void)? = nil,
                                             failed: ((Error) -> Void)? = nil) {
            
            let retrieveCustomerCustomAttributeRequest = Serializer.deserialize(RetrieveCustomerCustomAttributeRequest.self, [:])!
            
            retrieveCustomerCustomAttributeRequest.WithDefinitions = withDefinitions
            retrieveCustomerCustomAttributeRequest.Version = version
            
            request(to: "customers/\(customerId)/custom-attributes/\(key)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveCustomerCustomAttributeRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - upsertCustomerCustomAttribute: Creates or updates a custom attribute for a customer profile.
        /// Use this endpoint to set the value of a custom attribute for a specified customer profile. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the CreateCustomerCustomAttributeDefinition endpoint.
        ///
        /// To create or update a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES. Note that seller-defined custom attributes (also known as custom fields) are always set to VISIBILITY_READ_WRITE_VALUES.
        /// Permissions:CUSTOMERS_WRITE
        ///  https://developer.squareup.com/reference/square/customer-custom-attributes-api/upsert-customer-custom-attribute
        func upsertCustomerCustomAttribute(customerId: String,
                                           key: String,
                                           customAttribute: CustomAttribute?,
                                           idempotencyKey: String?,
                                           accessToken: String,
                                           completion: ((UpsertCustomerCustomAttributeResponse) -> Void)? = nil,
                                           failed: ((Error) -> Void)? = nil) {
            
            let upsertCustomerCustomAttributeRequest = Serializer.deserialize(UpsertCustomerCustomAttributeRequest.self, [:])!
            
            upsertCustomerCustomAttributeRequest.customAttribute = customAttribute
            upsertCustomerCustomAttributeRequest.IdempotencyKey = idempotencyKey
            
            request(to: "customers/\(customerId)/custom-attributes/\(key)",
                    method: .post,
                    accessToken: accessToken,
                    request: upsertCustomerCustomAttributeRequest,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - CustomerGroups: Create and manage customer groups to streamline and automate workflows and help personalize customer interactions.
    ///
    /// The Customer Groups API lets you create and manage customer groups to provide targeted promotions or take other customized actions based on group membership. For example, you can create Weekly, Monthly, and Quarterly customer groups and add customers to them based on their preferences to receive marketing promotions on a weekly, monthly, and quarterly basis. You can then use the information to manage your marketing email schedule.
    /// You can use the Customer Groups API to retrieve and manage customer groups. You can use the Customers API to add customers to and remove customers from groups and search for customers based on group membership.
    /// https://developer.squareup.com/reference/square/customer-groups-api
    open class CustomerGroups: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listCustomerGroups: Retrieves the list of customer groups of a business.
        /// Permissions:CUSTOMERS_READ
        ///  https://developer.squareup.com/reference/square/customer-groups-api/list-customer-groups
        func listCustomerGroups(cursor: String?,
                                limit: Int?,
                                accessToken: String,
                                completion: ((ListCustomerGroupsResponse) -> Void)? = nil,
                                failed: ((Error) -> Void)? = nil) {
            
            let listCustomerGroupsRequest = Serializer.deserialize(ListCustomerGroupsRequest.self, [:])!
            
            listCustomerGroupsRequest.Cursor = cursor
            listCustomerGroupsRequest.Limit = limit
            
            request(to: "customers/groups",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listCustomerGroupsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createCustomerGroup: Creates a new customer group for a business.
        /// The request must include the name value of the group.
        /// Permissions:CUSTOMERS_WRITE
        ///  https://developer.squareup.com/reference/square/customer-groups-api/create-customer-group
        func createCustomerGroup(idempotencyKey: String?,
                                 group: CustomerGroup,
                                 accessToken: String,
                                 completion: ((CreateCustomerGroupResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            let createCustomerGroupRequest = Serializer.deserialize(CreateCustomerGroupRequest.self, [:])!
            
            createCustomerGroupRequest.IdempotencyKey = idempotencyKey
            createCustomerGroupRequest.Group = group
            
            request(to: "customers/groups",
                    method: .post,
                    accessToken: accessToken,
                    request: createCustomerGroupRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteCustomerGroup: Deletes a customer group as identified by the group_id value.
        /// Permissions:CUSTOMERS_WRITE
        /// https://developer.squareup.com/reference/square/customer-groups-api/delete-customer-group
        func deleteCustomerGroup(groupId: String,
                                 accessToken: String,
                                 completion: ((SquareupResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            request(to: "customers/groups/\(groupId)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveCustomerGroup: Retrieves a specific customer group as identified by the group_id value.
        /// Permissions:CUSTOMERS_READ
        /// https://developer.squareup.com/reference/square/customer-groups-api/retrieve-customer-group
        func retrieveCustomerGroup(groupId: String,
                                   accessToken: String,
                                   completion: ((RetrieveCustomerGroupResponse) -> Void)? = nil,
                                   failed: ((Error) -> Void)? = nil) {
            
            request(to: "customers/groups/\(groupId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateCustomerGroup: Updates a customer group as identified by the group_id value.
        /// Permissions:CUSTOMERS_WRITE
        /// https://developer.squareup.com/reference/square/customer-groups-api/update-customer-group
        func updateCustomerGroup(groupId: String,
                                 group: CustomerGroup?,
                                 accessToken: String,
                                 completion: ((UpdateCustomerGroupResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            let updateCustomerGroupRequest = Serializer.deserialize(UpdateCustomerGroupRequest.self, [:])!
            updateCustomerGroupRequest.Group = group
            
            request(to: "customers/groups/\(groupId)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateCustomerGroupRequest,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - CustomerSegments: Retrieve customer segments (also called smart groups) in a business account.
    /// The Customer Segments API lets you retrieve information about the segments defined for a business. Square sellers can create customer segments in the Seller Dashboard or Point of Sale by defining filters for the segment. For example, a segment can include customers who have visited more than 10 times. Customers are automatically added to and removed from the segment over time based on this criterion.
    /// You can inspect the customer's segment_ids property to determine which segments a customer belongs to. Then, you can use the Customer Segments API to retrieve basic details about each segment, such as the segment name and the time when it was created.
    /// https://developer.squareup.com/reference/square/customer-segments-api
    open class CustomerSegments: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listCustomerSegments: Retrieves the list of customer segments of a business.
        /// Permissions:CUSTOMERS_READ
        /// https://developer.squareup.com/reference/square/customer-segments-api/list-customer-segments
        func listCustomerSegments(cursor: String?,
                                  limit: Int?,
                                  accessToken: String,
                                  completion: ((ListCustomerSegmentsResponse) -> Void)? = nil,
                                  failed: ((Error) -> Void)? = nil) {
            
            let listCustomerSegmentsRequest = Serializer.deserialize(ListCustomerSegmentsRequest.self, [:])!
            
            listCustomerSegmentsRequest.Cursor = cursor
            listCustomerSegmentsRequest.Limit = limit
            
            request(to: "customers/segments",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listCustomerSegmentsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveCustomerSegment: Retrieves a specific customer segment as identified by the segment_id value.
        /// Permissions:CUSTOMERS_READ
        /// https://developer.squareup.com/reference/square/customer-segments-api/retrieve-customer-segment
        func retrieveCustomerSegment(segmentId: String,
                                     accessToken: String,
                                     completion: ((RetrieveCustomerSegmentResponse) -> Void)? = nil,
                                     failed: ((Error) -> Void)? = nil) {
            
            request(to: "customers/segments/\(segmentId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
    }
}
