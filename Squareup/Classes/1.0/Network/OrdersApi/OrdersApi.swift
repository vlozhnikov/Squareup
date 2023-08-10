//
//  OrdersApi.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 8.06.23.
//

import Foundation
import Alamofire

open class OrdersApi {
    
    public static let orders = Orders()
    public static let customAttributes = OrderCustomAttributes()
    
    fileprivate init() {}
    
    /// - OrdersApi: Get sales data for a Square seller, itemize payments, push orders to POS, and more.
    ///
    /// The Orders API is your one-stop shop for adding rich functionality to payments. You can itemize payments using custom line items or catalog objects, send orders to physical Point of Sale devices to be fulfilled, attach a customer to a payment, and more.
    ///
    /// In addition, the Orders API lets you search through all of a seller's past sales and returns itemization data, customer references, and other details from sales made using POS or online.
    ///
    /// If you use the Square Orders API with a non-Square payments provider, Square charges a transaction fee. For more information, see Orders API fee structure.
    /// https://developer.squareup.com/reference/square/orders-api
    open class Orders: SquareupApi {
        
        fileprivate override init() {}
        
        /// - createOrder: Creates a new order that can include information about products for purchase and settings to apply to the purchase.
        /// To pay for a created order, see Pay for Orders.
        ///
        /// You can modify open orders using the UpdateOrder endpoint.
        /// Permissions: ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/orders-api/create-order
        public func createOrder(order: Order,
                                idempotencyKey: String?,
                                accessToken: String,
                                completion: ((CreateOrderResponse) -> Void)? = nil,
                                failed: ((Error) -> Void)? = nil) {
            
            let createOrderRequest = Serializer.deserialize(CreateOrderRequest.self, [:])!
            
            createOrderRequest.IdempotencyKey = idempotencyKey
            createOrderRequest.order = order
            
            request(to: "orders",
                    method: .post,
                    accessToken: accessToken,
                    request: createOrderRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - batchRetrieveOrders: Retrieves a set of orders by their IDs.
        /// If a given order ID does not exist, the ID is ignored instead of generating an error.
        /// Permissions: ORDERS_READ
        /// https://developer.squareup.com/reference/square/orders-api/batch-retrieve-orders
        public func batchRetrieveOrders(locationId: String,
                                        orderIds: [String],
                                        accessToken: String,
                                        completion: ((BatchRetrieveOrdersResponse) -> Void)? = nil,
                                        failed: ((Error) -> Void)? = nil) {
            let batchRetrieveOrdersRequest = Serializer.deserialize(BatchRetrieveOrdersRequest.self, [:])!
            
            batchRetrieveOrdersRequest.LocationId = locationId
            batchRetrieveOrdersRequest.OrderIds = orderIds
            
            request(to: "orders/batch-retrieve",
                    method: .post,
                    accessToken: accessToken,
                    request: batchRetrieveOrdersRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - calculateOrder: Enables applications to preview order pricing without creating an order.
        /// https://developer.squareup.com/reference/square/orders-api/calculate-order
        public func calculateOrder(order: Order,
                                   proposedRewards: [OrderReward],
                                   accessToken: String,
                                   completion: ((CalculateOrderResponse) -> Void)? = nil,
                                   failed: ((Error) -> Void)? = nil) {
            let calculateOrderRequest = Serializer.deserialize(CalculateOrderRequest.self, [:])!
            
            calculateOrderRequest.order = order
            calculateOrderRequest.ProposedRewards = proposedRewards
            
            request(to: "orders/calculate",
                    method: .post,
                    accessToken: accessToken,
                    request: calculateOrderRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - cloneOrder: Creates a new order, in the DRAFT state, by duplicating an existing order.
        /// The newly created order has only the core fields (such as line items, taxes, and discounts) copied from the original order.
        /// Permissions: ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/orders-api/clone-order
        public func cloneOrder(orderId: String,
                               version: Int?,
                               idempotencyKey: String?,
                               accessToken: String,
                               completion: ((CloneOrderResponse) -> Void)? = nil,
                               failed: ((Error) -> Void)? = nil) {
            let cloneOrderRequest = Serializer.deserialize(CloneOrderRequest.self, [:])!
            
            cloneOrderRequest.OrderId = orderId
            cloneOrderRequest.IdempotencyKey = idempotencyKey
            
            request(to: "orders/clone",
                    method: .post,
                    accessToken: accessToken,
                    request: cloneOrderRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - searchOrders: Search all orders for one or more locations.
        /// Orders include all sales, returns, and exchanges regardless of how or when they entered the Square ecosystem (such as Point of Sale, Invoices, and Connect APIs).
        ///
        /// SearchOrders requests need to specify which locations to search and define a SearchOrdersQuery object that controls how to sort or filter the results. Your SearchOrdersQuery can:
        ///
        /// Set filter criteria. Set the sort order. Determine whether to return results as complete Order objects or as OrderEntry objects.
        ///
        /// Note that details for orders processed with Square Point of Sale while in offline mode might not be transmitted to Square for up to 72 hours. Offline orders have a created_at value that reflects the time the order was created, not the time it was subsequently transmitted to Square.
        /// Permissions: ORDERS_READ
        public func searchOrders(locationIds: [String],
                                 cursor: String?,
                                 query: SearchOrdersQuery,
                                 limit: Int?,
                                 returnEntries: Bool?,
                                 accessToken: String,
                                 completion: ((SearchOrdersResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            let searchOrdersRequest = Serializer.deserialize(SearchOrdersRequest.self, [:])!
            
            searchOrdersRequest.LocationIds = locationIds
            searchOrdersRequest.Cursor = cursor
            searchOrdersRequest.Query = query
            searchOrdersRequest.Limit = limit
            searchOrdersRequest.ReturnEntries = returnEntries
            
            request(to: "orders/search",
                    method: .post,
                    accessToken: accessToken,
                    request: searchOrdersRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveOrder: Retrieves an Order by ID.
        /// Permissions: ORDERS_READ
        /// https://developer.squareup.com/reference/square/orders-api/retrieve-order
        public func retrieveOrder(orderId: String,
                                  accessToken: String,
                                  completion: ((RetrieveOrderResponse) -> Void)? = nil,
                                  failed: ((Error) -> Void)? = nil) {
            
            request(to: "orders/\(orderId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateOrder: Updates an open order by adding, replacing, or deleting fields.
        /// Orders with a COMPLETED or CANCELED state cannot be updated.
        ///
        /// An UpdateOrder request requires the following:
        ///
        /// The order_id in the endpoint path, identifying the order to update.
        /// The latest version of the order to update.
        /// The sparse order containing only the fields to update and the version to which the update is being applied.
        /// If deleting fields, the dot notation paths identifying the fields to clear.
        ///
        /// To pay for an order, see Pay for Orders.
        /// Permissions: ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/orders-api/update-order
        public func updateOrder(orderId: String,
                                order: Order?,
                                fieldsToClear: [String],
                                idempotencyKey: String?,
                                accessToken: String,
                                completion: ((UpdateOrderResponse) -> Void)? = nil,
                                failed: ((Error) -> Void)? = nil) {
            let updateOrderRequest = Serializer.deserialize(UpdateOrderRequest.self, [:])!
            
            updateOrderRequest.order = order
            updateOrderRequest.FieldsToClear = fieldsToClear
            updateOrderRequest.IdempotencyKey = idempotencyKey
            
            request(to: "orders/\(orderId)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateOrderRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - payOrder: Pay for an order using one or more approved payments or settle an order with a total of 0.
        /// The total of the payment_ids listed in the request must be equal to the order total. Orders with a total amount of 0 can be marked as paid by specifying an empty array of payment_ids in the request.
        ///
        /// To be used with PayOrder, a payment must:
        ///
        /// Reference the order by specifying the order_id when creating the payment. Any approved payments that reference the same order_id not specified in the payment_ids is canceled.
        /// Be approved with delayed capture. Using a delayed capture payment with PayOrder completes the approved payment.
        /// Permissions: PAYMENTS_WRITE, ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/orders-api/pay-order
        public func payOrder(orderId: String,
                             orderVersion: Int?,
                             paymentIds: [String],
                             idempotencyKey: String?,
                             accessToken: String,
                             completion: ((PayOrderResponse) -> Void)? = nil,
                             failed: ((Error) -> Void)? = nil) {
            let payOrderRequest = Serializer.deserialize(PayOrderRequest.self, [:])!
            
            payOrderRequest.OrderVersion = orderVersion
            payOrderRequest.PaymentIds = paymentIds
            payOrderRequest.IdempotencyKey = idempotencyKey
            
            request(to: "orders/\(orderId)/pay",
                    method: .post,
                    accessToken: accessToken,
                    request: payOrderRequest,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - OrderCustomAttributes: Create and manage order-related custom attribute definitions and custom attributes.
    /// Use the Order Custom Attributes API to create and manage custom attributes for orders. Custom attributes can be used to store properties or metadata that simplify integration, synchronization, and personalization workflows. After a custom attribute definition is created in a Square seller account, the custom attribute value can be set for orders.
    /// https://developer.squareup.com/reference/square/order-custom-attributes-api
    open class OrderCustomAttributes: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listOrderCustomAttributeDefinitions: Lists the order-related custom attribute definitions that belong to a Square seller account.
        /// When all response pages are retrieved, the results include all custom attribute definitions that are visible to the requesting application, including those that are created by other applications and set to VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES. Note that seller-defined custom attributes (also known as custom fields) are always set to VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: ORDERS_READ
        /// https://developer.squareup.com/reference/square/order-custom-attributes-api/list-order-custom-attribute-definitions
        public func listOrderCustomAttributeDefinitions(visibilityFilter: VisibilityFilter?,
                                                        cursor: String?,
                                                        limit: Int?,
                                                        accessToken: String,
                                                        completion: ((ListPrderCustomAttributeDefinitionsResponse) -> Void)? = nil,
                                                        failed: ((Error) -> Void)? = nil) {
            
            let listPrderCustomAttributeDefinitionsRequest = Serializer.deserialize(ListPrderCustomAttributeDefinitionsRequest.self, [:])!
            
            listPrderCustomAttributeDefinitionsRequest.visibilityFilter = visibilityFilter
            listPrderCustomAttributeDefinitionsRequest.Cursor = cursor
            listPrderCustomAttributeDefinitionsRequest.Limit = limit
            
            request(to: "orders/custom-attribute-definitions",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listPrderCustomAttributeDefinitionsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createOrderCustomAttributeDefinition: Creates an order-related custom attribute definition.
        /// Use this endpoint to define a custom attribute that can be associated with orders.
        /// After creating a custom attribute definition, you can set the custom attribute for orders in the Square seller account.
        /// Permissions: ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/order-custom-attributes-api/create-order-custom-attribute-definition
        public func createOrderCustomAttributeDefinition(customAttributeDefinition: CustomAttributeDefinition,
                                                         idempotencyKey: String,
                                                         accessToken: String,
                                                         completion: ((CreateOrderCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                         failed: ((Error) -> Void)? = nil) {
            
            let createOrderCustomAttributeDefinitionRequest = Serializer.deserialize(CreateOrderCustomAttributeDefinitionRequest.self, [:])!
            
            createOrderCustomAttributeDefinitionRequest.customAttributeDefinition = customAttributeDefinition
            createOrderCustomAttributeDefinitionRequest.IdempotencyKey = idempotencyKey
            
            request(to: "orders/custom-attribute-definitions",
                    method: .post,
                    accessToken: accessToken,
                    request: createOrderCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteOrderCustomAttributeDefinition: Deletes an order-related custom attribute definition from a Square seller account.
        /// Only the definition owner can delete a custom attribute definition.
        /// Permissions: ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/order-custom-attributes-api/delete-order-custom-attribute-definition
        public func deleteOrderCustomAttributeDefinition(key: String,
                                                         accessToken: String,
                                                         completion: ((SquareupResponse) -> Void)? = nil,
                                                         failed: ((Error) -> Void)? = nil) {
            
            request(to: "orders/custom-attribute-definitions/\(key)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveOrderCustomAttributeDefinition: Retrieves an order-related custom attribute definition from a Square seller account.
        /// To retrieve a custom attribute definition created by another application, the visibility setting must be VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES. Note that seller-defined custom attributes (also known as custom fields) are always set to VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: ORDERS_READ
        /// https://developer.squareup.com/reference/square/order-custom-attributes-api/retrieve-order-custom-attribute-definition
        public func retrieveOrderCustomAttributeDefinition(key: String,
                                                           version: Int?,
                                                           accessToken: String,
                                                           completion: ((RetrieveOrderCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                           failed: ((Error) -> Void)? = nil) {
            
            let retrieveOrderCustomAttributeDefinitionRequest = Serializer.deserialize(RetrieveOrderCustomAttributeDefinitionRequest.self, [:])!
            retrieveOrderCustomAttributeDefinitionRequest.Version = version
            
            request(to: "orders/custom-attribute-definitions/\(key)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveOrderCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateOrderCustomAttributeDefinition: Updates an order-related custom attribute definition for a Square seller account.
        /// Only the definition owner can update a custom attribute definition. Note that sellers can view all custom attributes in exported customer data, including those set to VISIBILITY_HIDDEN.
        /// Permissions: ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/order-custom-attributes-api/update-order-custom-attribute-definition
        public func updateOrderCustomAttributeDefinition(key: String,
                                                         customAttributeDefinition: CustomAttributeDefinition?,
                                                         idempotencyKey: String?,
                                                         accessToken: String,
                                                         completion: ((UpdateOrderCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                         failed: ((Error) -> Void)? = nil) {
            
            let updateOrderCustomAttributeDefinitionRequest = Serializer.deserialize(UpdateOrderCustomAttributeDefinitionRequest.self, [:])!
            
            updateOrderCustomAttributeDefinitionRequest.customAttributeDefinition = customAttributeDefinition
            updateOrderCustomAttributeDefinitionRequest.IdempotencyKey = idempotencyKey
            
            request(to: "orders/custom-attribute-definitions/\(key)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateOrderCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - bulkDeleteOrderCustomAttributes: Deletes order custom attributes as a bulk operation.
        /// Use this endpoint to delete one or more custom attributes from one or more orders. A custom attribute is based on a custom attribute definition in a Square seller account. (To create a custom attribute definition, use the CreateOrderCustomAttributeDefinition endpoint.)
        /// This BulkDeleteOrderCustomAttributes endpoint accepts a map of 1 to 25 individual delete requests and returns a map of individual delete responses. Each delete request has a unique ID and provides an order ID and custom attribute. Each delete response is returned with the ID of the corresponding request.
        /// To delete a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES. Note that seller-defined custom attributes (also known as custom fields) are always set to VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/order-custom-attributes-api/bulk-delete-order-custom-attributes
        public func bulkDeleteOrderCustomAttributes(values: [String: BulkDeleteOrderCustomAttributesRequestDeleteCustomAttribute]?,
                                                    accessToken: String,
                                                    completion: ((BulkDeleteOrderCustomAttributesResponse) -> Void)? = nil,
                                                    failed: ((Error) -> Void)? = nil) {
            
            let bulkDeleteOrderCustomAttributesRequest = Serializer.deserialize(BulkDeleteOrderCustomAttributesRequest.self, [:])!
            bulkDeleteOrderCustomAttributesRequest.Values = values
            
            request(to: "orders/custom-attributes/bulk-delete",
                    method: .post,
                    accessToken: accessToken,
                    request: bulkDeleteOrderCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - bulkUpsertOrderCustomAttributes: Creates or updates order custom attributes as a bulk operation.
        /// Use this endpoint to delete one or more custom attributes from one or more orders. A custom attribute is based on a custom attribute definition in a Square seller account. (To create a custom attribute definition, use the CreateOrderCustomAttributeDefinition endpoint.)
        /// This BulkUpsertOrderCustomAttributes endpoint accepts a map of 1 to 25 individual upsert requests and returns a map of individual upsert responses. Each upsert request has a unique ID and provides an order ID and custom attribute. Each upsert response is returned with the ID of the corresponding request.
        /// To create or update a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES. Note that seller-defined custom attributes (also known as custom fields) are always set to VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/order-custom-attributes-api/bulk-upsert-order-custom-attributes
        public func bulkUpsertOrderCustomAttributes(values: [String: BulkUpsertOrderCustomAttributesRequestUpsertCustomAttribute]?,
                                                    accessToken: String,
                                                    completion: ((BulkUpsertOrderCustomAttributesResponse) -> Void)? = nil,
                                                    failed: ((Error) -> Void)? = nil) {
            
            let bulkUpsertOrderCustomAttributesRequest = Serializer.deserialize(BulkUpsertOrderCustomAttributesRequest.self, [:])!
            bulkUpsertOrderCustomAttributesRequest.Values = values
            
            request(to: "orders/custom-attributes/bulk-upsert",
                    method: .post,
                    accessToken: accessToken,
                    request: bulkUpsertOrderCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listOrderCustomAttributes: Lists the custom attributes associated with an order.
        /// You can use the with_definitions query parameter to also retrieve custom attribute definitions in the same call.
        /// When all response pages are retrieved, the results include all custom attributes that are visible to the requesting application, including those that are owned by other applications and set to VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: ORDERS_READ
        /// https://developer.squareup.com/reference/square/order-custom-attributes-api/list-order-custom-attributes
        public func listOrderCustomAttributes(orderId: String,
                                              visibilityFilter: VisibilityFilter?,
                                              cursor: String?,
                                              limit: Int?,
                                              withDefinitions: Bool?,
                                              accessToken: String,
                                              completion: ((ListOrderCustomAttributesResponse) -> Void)? = nil,
                                              failed: ((Error) -> Void)? = nil) {
            
            let listOrderCustomAttributesRequest = Serializer.deserialize(ListOrderCustomAttributesRequest.self, [:])!
            
            listOrderCustomAttributesRequest.visibilityFilter = visibilityFilter
            listOrderCustomAttributesRequest.Cursor = cursor
            listOrderCustomAttributesRequest.Limit = limit
            listOrderCustomAttributesRequest.WithDefinitions = withDefinitions
            
            request(to: "orders/\(orderId)/custom-attributes",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listOrderCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteOrderCustomAttribute: Deletes a custom attribute associated with a customer profile.
        /// To delete a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES. Note that seller-defined custom attributes (also known as custom fields) are always set to VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/order-custom-attributes-api/delete-order-custom-attribute
        public func deleteOrderCustomAttribute(orderId: String,
                                               customAttributeKey: String,
                                               accessToken: String,
                                               completion: ((SquareupResponse) -> Void)? = nil,
                                               failed: ((Error) -> Void)? = nil) {
            
            request(to: "orders/\(orderId)/custom-attributes/\(customAttributeKey)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveOrderCustomAttribute: Retrieves a custom attribute associated with an order.
        /// You can use the with_definition query parameter to also retrieve the custom attribute definition in the same call.
        /// To retrieve a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES. Note that seller-defined custom attributes also known as custom fields) are always set to VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: ORDERS_READ
        /// https://developer.squareup.com/reference/square/order-custom-attributes-api/retrieve-order-custom-attribute
        public func retrieveOrderCustomAttribute(orderId: String,
                                                 customAttributeKey: String,
                                                 version: Int?,
                                                 withDefinitions: Bool?,
                                                 accessToken: String,
                                                 completion: ((RetrieveOrderCustomAttributeResponse) -> Void)? = nil,
                                                 failed: ((Error) -> Void)? = nil) {
            
            let retrieveOrderCustomAttributeRequest = Serializer.deserialize(RetrieveOrderCustomAttributeRequest.self, [:])!
            
            retrieveOrderCustomAttributeRequest.Version = version
            retrieveOrderCustomAttributeRequest.WithDefinitions = withDefinitions
            
            request(to: "orders/\(orderId)/custom-attributes/\(customAttributeKey)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveOrderCustomAttributeRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - upsertOrderCustomAttribute: Creates or updates a custom attribute for an order.
        /// Use this endpoint to set the value of a custom attribute for a specific order. A custom attribute is based on a custom attribute definition in a Square seller account. (To create a custom attribute definition, use the CreateOrderCustomAttributeDefinition endpoint.)
        /// To create or update a custom attribute owned by another application, the visibility setting must be VISIBILITY_READ_WRITE_VALUES. Note that seller-defined custom attributes (also known as custom fields) are always set to VISIBILITY_READ_WRITE_VALUES.
        /// Permissions: ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/order-custom-attributes-api/upsert-order-custom-attribute
        public func upsertOrderCustomAttribute(orderId: String,
                                               customAttributeKey: String,
                                               customAttribute: CustomAttribute?,
                                               idempotencyKey: String?,
                                               accessToken: String,
                                               completion: ((UpsertOrderCustomAttributeResponse) -> Void)? = nil,
                                               failed: ((Error) -> Void)? = nil) {
            
            let upsertOrderCustomAttributeRequest = Serializer.deserialize(UpsertOrderCustomAttributeRequest.self, [:])!
            
            upsertOrderCustomAttributeRequest.customAttribute = customAttribute
            upsertOrderCustomAttributeRequest.IdempotencyKey = idempotencyKey
            
            request(to: "orders/\(orderId)/custom-attributes/\(customAttributeKey)",
                    method: .post,
                    accessToken: accessToken,
                    request: upsertOrderCustomAttributeRequest,
                    completion: completion,
                    failed: failed)
        }
    }
}
