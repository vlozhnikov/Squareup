//
//  InvoicesApi.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation
import Alamofire

open class InvoicesApi {
    
    public static let invoices = Invoices()
    
    fileprivate init() {}
    
    /// - Invoices:  Create, configure, and publish invoices for orders that were created using the Orders API.
    /// Square Invoices makes it easy for sellers to request and collect payments from their customers. Square notifies customers and processes invoice payments.
    ///
    /// Use the Invoices API to create and manage invoices for orders that were created using the Orders API. After you create the invoice and configure its delivery method, payment schedule, and other invoice settings, you can publish the invoice. Depending on the invoice settings, Square can send the invoice to the customer or automatically charge a card on file. Square hosts each invoice on a web page where customers can pay for it.
    /// https://developer.squareup.com/reference/square/invoices-api
    open class Invoices: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listInvoices: Returns a list of invoices for a given location.
        /// The response is paginated. If truncated, the response includes a cursor that you
        /// use in a subsequent request to retrieve the next set of invoices.
        /// Permissions: INVOICES_READ
        func listInvoices(locationId: String,
                          cursor: String?,
                          limit: Int?,
                          accessToken: String,
                          completion: ((ListInvoicesResponse) -> Void)? = nil,
                          failed: ((Error) -> Void)? = nil) {
            
            let listInvoicesRequest = Serializer.deserialize(ListInvoicesRequest.self, [:])!
            listInvoicesRequest.Cursor = cursor
            listInvoicesRequest.Limit = limit
            
            request(to: "invoices",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listInvoicesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createInvoice: Creates a draft invoice for an order created using the Orders API.
        /// A draft invoice remains in your account and no action is taken. You must publish the invoice before Square can process it (send it to the customer's email address or charge the customer’s card on file).
        /// Permissions: ORDERS_WRITE, INVOICES_WRITE
        /// https://developer.squareup.com/reference/square/invoices-api/create-invoice
        func createInvoice(invoice: Invoice,
                           idempotencyKey: String?,
                           accessToken: String,
                           completion: ((CreateInvoiceResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            let createInvoiceRequest = Serializer.deserialize(CreateInvoiceRequest.self, [:])!
            createInvoiceRequest.invoice = invoice
            createInvoiceRequest.IdempotencyKey = idempotencyKey
            
            request(to: "invoices",
                    method: .post,
                    accessToken: accessToken,
                    request: createInvoiceRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - searchInvoices: Searches for invoices from a location specified in the filter.
        /// You can optionally specify customers in the filter for whom to retrieve invoices. In the current implementation, you can only specify one location and optionally one customer.
        /// The response is paginated. If truncated, the response includes a cursor that you use in a subsequent request to retrieve the next set of invoices.
        /// Permissions: INVOICES_READ
        /// https://developer.squareup.com/reference/square/invoices-api/search-invoices
        func searchInvoices(query: InvoiceQuery,
                            limit: Int?,
                            cursor: String?,
                            accessToken: String,
                            completion: ((SearchInvoicesResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            let searchInvoicesRequest = Serializer.deserialize(SearchInvoicesRequest.self, [:])!
            
            searchInvoicesRequest.Query = query
            searchInvoicesRequest.Limit = limit
            searchInvoicesRequest.Cursor = cursor
            
            request(to: "invoices/search",
                    method: .post,
                    accessToken: accessToken,
                    request: searchInvoicesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteInvoice: Deletes the specified invoice.
        /// When an invoice is deleted, the associated order status changes to CANCELED. You can only delete a draft invoice (you cannot delete a published invoice, including one that is scheduled for processing).
        /// Permissions: ORDERS_WRITE, INVOICES_WRITE
        /// https://developer.squareup.com/reference/square/invoices-api/delete-invoice
        func deleteInvoice(invoiceId: String,
                           version: Int?,
                           accessToken: String,
                           completion: ((SquareupResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            let deleteInvoiceRequest = Serializer.deserialize(DeleteInvoiceRequest.self, [:])!
            deleteInvoiceRequest.Version = version
            
            request(to: "invoices/\(invoiceId)",
                    method: .delete,
                    accessToken: accessToken,
                    request: deleteInvoiceRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - getInvoice: Retrieves an invoice by invoice ID.
        /// Permissions: INVOICES_READ
        /// https://developer.squareup.com/reference/square/invoices-api/get-invoice
        func getInvoice(invoiceId: String,
                        accessToken: String,
                        completion: ((GetInvoiceResponse) -> Void)? = nil,
                        failed: ((Error) -> Void)? = nil) {
            
            request(to: "invoices/\(invoiceId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateInvoice: Updates an invoice by modifying fields, clearing fields, or both.
        /// For most updates, you can use a sparse Invoice object to add fields or change values and use the fields_to_clear field to specify fields to clear. However, some restrictions apply. For example, you cannot change the order_id or location_id field and you must provide the complete custom_fields list to update a custom field. Published invoices have additional restrictions.
        /// Permissions: ORDERS_WRITE, INVOICES_WRITE
        /// https://developer.squareup.com/reference/square/invoices-api/update-invoice
        func updateInvoice(invoiceId: String,
                           invoice: Invoice,
                           idempotencyKey: String?,
                           fieldsToClear: [String]?,
                           accessToken: String,
                           completion: ((UpdateInvoiceResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            let updateInvoiceRequest = Serializer.deserialize(UpdateInvoiceRequest.self, [:])!
            
            updateInvoiceRequest.invoice = invoice
            updateInvoiceRequest.IdempotencyKey = idempotencyKey
            updateInvoiceRequest.FieldsToClear = fieldsToClear
            
            request(to: "invoices/\(invoiceId)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateInvoiceRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - cancelInvoice: Cancels an invoice.
        /// The seller cannot collect payments for the canceled invoice.
        /// You cannot cancel an invoice in the DRAFT state or in a terminal state: PAID, REFUNDED, CANCELED, or FAILED.
        /// Permissions: ORDERS_WRITE, INVOICES_WRITE
        /// https://developer.squareup.com/reference/square/invoices-api/cancel-invoice
        func cancelInvoice(invoiceId: String,
                           version: Int,
                           accessToken: String,
                           completion: ((CancelInvoiceResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            let cancelInvoiceRequest = Serializer.deserialize(CancelInvoiceRequest.self, [:])!
            cancelInvoiceRequest.Version = version
            
            request(to: "invoices/\(invoiceId)/cancel",
                    method: .post,
                    accessToken: accessToken,
                    request: cancelInvoiceRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - publishInvoice: Publishes the specified draft invoice.
        /// After an invoice is published, Square follows up based on the invoice configuration. For example, Square sends the invoice to the customer's email address, charges the customer's card on file, or does nothing. Square also makes the invoice available on a Square-hosted invoice page.
        ///
        /// The invoice status also changes from DRAFT to a status based on the invoice configuration. For example, the status changes to UNPAID if Square emails the invoice or PARTIALLY_PAID if Square charge a card on file for a portion of the invoice amount.
        /// Permissions: ORDERS_WRITE, INVOICES_WRITE
        /// https://developer.squareup.com/reference/square/invoices-api/publish-invoice
        func publishInvoice(invoiceId: String,
                            version: Int,
                            idempotencyKey: String?,
                            accessToken: String,
                            completion: ((PublishInvoiceResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            let publishInvoiceRequest = Serializer.deserialize(PublishInvoiceRequest.self, [:])!
            
            publishInvoiceRequest.Version = version
            publishInvoiceRequest.IdempotencyKey = idempotencyKey
            
            request(to: "invoices/\(invoiceId)/publish",
                    method: .post,
                    accessToken: accessToken,
                    request: publishInvoiceRequest,
                    completion: completion,
                    failed: failed)
        }
    }
}
