//
//  PaymentsApi.swift
//  Squareup
//
//  Created by user on 12.06.23.
//

import Foundation
import Alamofire

open class PaymentsApi {
    
    public static let payments = Payments()
    public static let refunds = Refunds()
    public static let disputes = Disputes()
    public static let checkout = Checkout()
    public static let applePay = ApplePay()
    public static let cards = Cards()
    public static let payouts = Payouts()
    
    fileprivate init() {}
    
    /// - Payments: The Payments API lets developers take and manage payments.
    /// Applications need the following input to take a payment:
    ///
    /// The amount to charge.
    /// The payment recipient. The payment goes to the account identified by the Authorization header in the API request.
    /// The payment source. The source can be a payment token or card on file.
    /// You can generate a payment token using the Web Payments SDK and the In-App Payments SDK. For working code examples, see Square Connect API Examples.
    /// A card on file is a credit card, debit card, or gift card that is associated with a customer. You can create a customer and add a card on file using Square APIs, the Square Seller Dashboard, or the Square Point of Sale application.
    /// https://developer.squareup.com/reference/square/payments-api
    open class Payments: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listPayments: Retrieves a list of payments taken by the account making the request.
        /// Results are eventually consistent, and new payments or changes to payments might take several seconds to appear.
        /// The maximum results per page is 100.
        /// Permissions:PAYMENTS_READ
        /// https://developer.squareup.com/reference/square/payments-api/list-payments
        public func listPayments(beginTime: Date?,
                          endTime: Date?,
                          sortOrder: SortOrder?,
                          cursor: String?,
                          locationId: String?,
                          total: Int?,
                          last4: String?,
                          cardBrand: String?,
                          limit: Int?,
                          accessToken: String,
                          completion: ((ListPaymentsResponse) -> Void)? = nil,
                          failed: ((Error) -> Void)? = nil) {
            
            let listPaymentsRequest = Serializer.deserialize(ListPaymentsRequest.self, [:])!
            
            listPaymentsRequest.BeginTime = beginTime
            listPaymentsRequest.EndTime = endTime
            listPaymentsRequest.sortOrder = sortOrder
            listPaymentsRequest.Cursor = cursor
            listPaymentsRequest.LocationId = locationId
            listPaymentsRequest.Total = total
            listPaymentsRequest.Last4 = last4
            listPaymentsRequest.CardBrand = cardBrand
            listPaymentsRequest.Limit = limit
            
            request(to: "payments",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listPaymentsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createPayment: Creates a payment using the provided source.
        /// You can use this endpoint to charge a card (credit/debit card or
        /// Square gift card) or record a payment that the seller received outside of Square (cash payment from a buyer or a payment that an external entity processed on behalf of the seller).
        /// The endpoint creates a Payment object and returns it in the response.
        /// Permissions: PAYMENTS_WRITE
        /// https://developer.squareup.com/reference/square/payments-api/create-payment
        public func createPayment(sourceId: String?,
                           idempotencyKey: String?,
                           amountMoney: Money?,
                           tipMoney: Money?,
                           appFeeMoney: Money?,
                           delayDuration: String?,
                           delayAction: PaymentDelayAction?,
                           autocomplete: Bool?,
                           orderId: String?,
                           customerId: String?,
                           locationId: String?,
                           teamMemberId: String?,
                           referenceId: String?,
                           verificationToken: String?,
                           acceptPartialAuthorization: Bool?,
                           buyerEmailAddress: String?,
                           billingAddress: Address?,
                           shippingAddress: Address?,
                           note: String?,
                           statementDescriptionIdentifier: String?,
                           cashDetails: CashPaymentDetails?,
                           externalDetails: ExternalPaymentDetails?,
                           accessToken: String,
                           completion: ((CreatePaymentResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            let createPaymentRequest = Serializer.deserialize(CreatePaymentRequest.self, [:])!
            
            createPaymentRequest.SourceId = sourceId
            createPaymentRequest.IdempotencyKey = idempotencyKey
            createPaymentRequest.AmountMoney = amountMoney
            createPaymentRequest.TipMoney = tipMoney
            createPaymentRequest.AppFeeMoney = appFeeMoney
            createPaymentRequest.DelayDuration = delayDuration
            createPaymentRequest.DelayAction = delayAction
            createPaymentRequest.Autocomplete = autocomplete
            createPaymentRequest.OrderId = orderId
            createPaymentRequest.CustomerId = customerId
            createPaymentRequest.LocationId = locationId
            createPaymentRequest.TeamMemberId = teamMemberId
            createPaymentRequest.ReferenceId = referenceId
            createPaymentRequest.VerificationToken = verificationToken
            createPaymentRequest.AcceptPartialAuthorization = acceptPartialAuthorization
            createPaymentRequest.BuyerEmailAddress = buyerEmailAddress
            createPaymentRequest.BillingAddress = billingAddress
            createPaymentRequest.ShippingAddress = shippingAddress
            createPaymentRequest.Note = note
            createPaymentRequest.StatementDescriptionIdentifier = statementDescriptionIdentifier
            createPaymentRequest.CashDetails = cashDetails
            createPaymentRequest.ExternalDetails = externalDetails
            
            request(to: "payments",
                    method: .post,
                    accessToken: accessToken,
                    request: createPaymentRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - cancelPayment: Cancels (voids) a payment identified by the idempotency key that is specified in the request.
        /// Use this method when the status of a CreatePayment request is unknown (for example, after you send a CreatePayment request, a network error occurs and you do not get a response). In this case, you can direct Square to cancel the payment using this endpoint. In the request, you provide the same idempotency key that you provided in your CreatePayment request that you want to cancel. After canceling the payment, you can submit your CreatePayment request again.
        /// Note that if no payment with the specified idempotency key is found, no action is taken and the endpoint returns successfully.
        /// Permissions: PAYMENTS_WRITE
        /// https://developer.squareup.com/reference/square/payments-api/cancel-payment-by-idempotency-key
        public func cancelPayment(idempotencyKey: String?,
                           accessToken: String,
                           completion: ((SquareupResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            let cancelPaymentRequest = Serializer.deserialize(CancelPaymentRequest.self, [:])!
            cancelPaymentRequest.IdempotencyKey = idempotencyKey
            
            request(to: "payments/cancel",
                    method: .post,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - getPayment: Retrieves details for a specific payment.
        /// Permissions: PAYMENTS_READ
        /// https://developer.squareup.com/reference/square/payments-api/get-payment
        public func getPayment(paymentId: String,
                        accessToken: String,
                        completion: ((GetPaymentResponse) -> Void)? = nil,
                        failed: ((Error) -> Void)? = nil) {
            
            request(to: "payments/\(paymentId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updatePayment: Updates a payment with the APPROVED status.
        /// You can update the amount_money and tip_money using this endpoint.
        /// Permissions: PAYMENTS_WRITE
        /// https://developer.squareup.com/reference/square/payments-api/update-payment
        public func updatePayment(paymentId: String,
                           payment: Payment,
                           idempotencyKey: String,
                           accessToken: String,
                           completion: ((UpdatePaymentResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            let updatePaymentRequest = Serializer.deserialize(UpdatePaymentRequest.self, [:])!
            
            updatePaymentRequest.payment = payment
            updatePaymentRequest.IdempotencyKey = idempotencyKey
            
            request(to: "payments/\(paymentId)",
                    method: .put,
                    accessToken: accessToken,
                    request: updatePaymentRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - cancelPayment: Cancels (voids) a payment.
        /// You can use this endpoint to cancel a payment with the APPROVED status.
        /// Permissions: PAYMENTS_WRITE
        /// https://developer.squareup.com/reference/square/payments-api/cancel-payment
        public func cancelPayment(paymentId: String,
                           accessToken: String,
                           completion: ((CancelPaymentResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            request(to: "payments/\(paymentId)/cancel",
                    method: .post,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - completePayment: Completes (captures) a payment.
        /// By default, payments are set to complete immediately after they are created.
        /// You can use this endpoint to complete a payment with the APPROVED status.
        /// Permissions: PAYMENTS_WRITE
        /// https://developer.squareup.com/reference/square/payments-api/complete-payment
        public func completePayment(paymentId: String,
                             versionToken: String,
                             accessToken: String,
                             completion: ((CompletePaymentResponse) -> Void)? = nil,
                             failed: ((Error) -> Void)? = nil) {
            
            let completePaymentRequest = Serializer.deserialize(CompletePaymentRequest.self, [:])!
            completePaymentRequest.VersionToken = versionToken
            
            request(to: "payments/\(paymentId)/complete",
                    method: .post,
                    accessToken: accessToken,
                    request: completePaymentRequest,
                    completion: completion,
                    failed: failed)
        }
        
    }
    
    /// - Refunds: Manage and issue refunds for payments made to Square sellers.
    /// The following applies to refunds:
    ///
    /// You cannot refund more than what was originally collected.
    /// The refund amount must be available in the account's Square balance. If the amount is not available, Square attempts to take money out of the associated bank account. Refunds are in a state of PENDING until the funds are secured.
    /// If funds cannot be secured, the refund is not completed and the buyer does not receive a credit. The refund has a status of FAILED. Future refunds to this payment are not allowed and the buyer should be reimbursed by other means.
    /// You can refund only payments with status COMPLETED. You cannot refund an APPROVED payment; however, you can cancel an approved payment.
    /// https://developer.squareup.com/reference/square/refunds-api
    open class Refunds: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listPaymentRefunds: Retrieves a list of refunds for the account making the request.
        /// Results are eventually consistent, and new refunds or changes to refunds might take several seconds to appear.
        /// The maximum results per page is 100.
        /// Permissions: PAYMENTS_READ
        /// https://developer.squareup.com/reference/square/refunds-api/list-payment-refunds
        public func listPaymentRefunds(beginTime: Date?,
                                endTime: Date?,
                                sortOrder: SortOrder?,
                                cursor: String?,
                                locationId: String?,
                                status: PaymentRefundStatus?,
                                sourceType: PaymentRefundDestinationType?,
                                limit: Int?,
                                accessToken: String,
                                completion: ((ListPaymentRefundsResponse) -> Void)? = nil,
                                failed: ((Error) -> Void)? = nil) {
            
            let listPaymentRefundsRequest = Serializer.deserialize(ListPaymentRefundsRequest.self, [:])!
            
            listPaymentRefundsRequest.BeginTime = beginTime
            listPaymentRefundsRequest.EndTime = endTime
            listPaymentRefundsRequest.sortOrder = sortOrder
            listPaymentRefundsRequest.Cursor = cursor
            listPaymentRefundsRequest.LocationId = locationId
            listPaymentRefundsRequest.Status = status
            listPaymentRefundsRequest.SourceType = sourceType
            listPaymentRefundsRequest.Limit = limit
            
            request(to: "refunds",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listPaymentRefundsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - refundPayment: Refunds a payment.
        /// You can refund the entire payment amount or a portion of it. You can use this endpoint to refund a card payment or record a refund of a cash or external payment. For more information, see Refund Payment.
        /// Permissions: PAYMENTS_WRITE
        /// https://developer.squareup.com/reference/square/refunds-api/refund-payment
        public func refundPayment(idempotencyKey: String,
                           amountMoney: Money,
                           appFeeMoney: Money?,
                           paymentId: String?,
                           destinationId: String?,
                           unlinked: Bool?,
                           locationId: String?,
                           customerId: String?,
                           reason: String?,
                           paymentVersionToken: String?,
                           teamMemberId: String?,
                           accessToken: String,
                           completion: ((RefundPaymentResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            let refundPaymentRequest = Serializer.deserialize(RefundPaymentRequest.self, [:])!
            
            refundPaymentRequest.IdempotencyKey = idempotencyKey
            refundPaymentRequest.AmountMoney = amountMoney
            refundPaymentRequest.AppFeeMoney = appFeeMoney
            refundPaymentRequest.PaymentId = paymentId
            refundPaymentRequest.DestinationId = destinationId
            refundPaymentRequest.Unlinked = unlinked
            refundPaymentRequest.LocationId = locationId
            refundPaymentRequest.CustomerId = customerId
            refundPaymentRequest.Reason = reason
            refundPaymentRequest.PaymentVersionToken = paymentVersionToken
            refundPaymentRequest.TeamMemberId = teamMemberId
            
            request(to: "refunds",
                    method: .post,
                    accessToken: accessToken,
                    request: refundPaymentRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - getPaymentRefund: Retrieves a specific refund using the refund_id.
        /// Permissions: PAYMENTS_READ
        /// https://developer.squareup.com/reference/square/refunds-api/get-payment-refund
        public func getPaymentRefund(refundId: String,
                              accessToken: String,
                              completion: ((GetPaymentRefundResponse) -> Void)? = nil,
                              failed: ((Error) -> Void)? = nil) {
            
            request(to: "refunds/\(refundId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - Disputes: Use the Disputes API to manage disputes (chargebacks).
    /// A seller has the following options to process a dispute:
    ///
    /// Accept the dispute using the AcceptDispute endpoint. Square returns the disputed amount from the account balance of the Square account.
    /// Challenge the dispute using the SubmitEvidence endpoint. If the payment was valid, you can contest the disputed payment. You submit supporting evidence you have about the transaction, such as receipts, invoices, email correspondence, proof of delivery, or photos. You upload evidence using the CreateDisputeEvidenceFile endpoint.
    ///
    /// The Disputes API also supports other endpoints useful in dispute management.
    /// https://developer.squareup.com/reference/square/disputes-api
    open class Disputes: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listDisputes: Returns a list of disputes associated with a particular account.
        /// Permissions: DISPUTES_READ
        /// https://developer.squareup.com/reference/square/disputes-api/list-disputes
        public func listDisputes(cursor: String?,
                          states: DisputeState?,
                          locationId: String?,
                          accessToken: String,
                          completion: ((ListDisputesResponse) -> Void)? = nil,
                          failed: ((Error) -> Void)? = nil) {
            
            let listDisputesRequest = Serializer.deserialize(ListDisputesRequest.self, [:])!
            
            listDisputesRequest.Cursor = cursor
            listDisputesRequest.States = states
            listDisputesRequest.LocationId = locationId
            
            request(to: "disputes",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listDisputesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveDispute: Returns details about a specific dispute.
        /// Permissions: DISPUTES_READ
        /// https://developer.squareup.com/reference/square/disputes-api/retrieve-dispute
        public func retrieveDispute(disputeId: String,
                             accessToken: String,
                             completion: ((RetrieveDisputeResponse) -> Void)? = nil,
                             failed: ((Error) -> Void)? = nil) {
            
            request(to: "disputes/\(disputeId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - acceptDispute: Accepts the loss on a dispute.
        /// Square returns the disputed amount to the cardholder and updates the dispute state to ACCEPTED.
        /// Square debits the disputed amount from the seller’s Square account. If the Square account does not have sufficient funds, Square debits the associated bank account.
        /// Permissions: DISPUTES_WRITE
        /// https://developer.squareup.com/reference/square/disputes-api/accept-dispute
        public func acceptDispute(disputeId: String,
                           accessToken: String,
                           completion: ((AcceptDisputeResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            request(to: "disputes/\(disputeId)/accept",
                    method: .post,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listDisputeEvidence: Returns a list of evidence associated with a dispute.
        /// Permissions: DISPUTES_READ
        /// https://developer.squareup.com/reference/square/disputes-api/list-dispute-evidence
        public func listDisputeEvidence(disputeId: String,
                                 cursor: String?,
                                 accessToken: String,
                                 completion: ((ListDisputeEvidenceResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            let listDisputeEvidenceRequest = Serializer.deserialize(ListDisputeEvidenceRequest.self, [:])!
            listDisputeEvidenceRequest.Cursor = cursor
            
            request(to: "disputes/\(disputeId)/evidence",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listDisputeEvidenceRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createDisputeEvidenceFile: Uploads a file to use as evidence in a dispute challenge.
        /// The endpoint accepts HTTP multipart/form-data file uploads in HEIC, HEIF, JPEG, PDF, PNG, and TIFF formats.
        /// Permissions: DISPUTES_WRITE
        /// https://developer.squareup.com/reference/square/disputes-api/create-dispute-evidence-file
        public func createDisputeEvidenceFile(disputeId: String,
                                       idempotencyKey: String,
                                       evidenceType: DisputeEvidenceType?,
                                       contentType: String?,
                                       accessToken: String,
                                       completion: ((CreateDisputeEvidenceFileResponse) -> Void)? = nil,
                                       failed: ((Error) -> Void)? = nil) {
            
            let createDisputeEvidenceFileRequest = Serializer.deserialize(CreateDisputeEvidenceFileRequest.self, [:])!
            
            createDisputeEvidenceFileRequest.IdempotencyKey = idempotencyKey
            createDisputeEvidenceFileRequest.EvidenceType = evidenceType
            createDisputeEvidenceFileRequest.ContentType = contentType
            
            
            request(to: "disputes/\(disputeId)/evidence-files",
                    method: .post,
                    accessToken: accessToken,
                    request: createDisputeEvidenceFileRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createDisputeEvidenceText: Uploads text to use as evidence for a dispute challenge.
        /// Permissions: DISPUTES_WRITE
        /// https://developer.squareup.com/reference/square/disputes-api/create-dispute-evidence-text
        public func createDisputeEvidenceText(disputeId: String,
                                       idempotencyKey: String,
                                       evidenceType: DisputeEvidenceType?,
                                       evidenceText: String?,
                                       accessToken: String,
                                       completion: ((CreateDisputeEvidenceTextResponse) -> Void)? = nil,
                                       failed: ((Error) -> Void)? = nil) {
            
            let createDisputeEvidenceTextRequest = Serializer.deserialize(CreateDisputeEvidenceTextRequest.self, [:])!
            
            createDisputeEvidenceTextRequest.IdempotencyKey = idempotencyKey
            createDisputeEvidenceTextRequest.EvidenceType = evidenceType
            createDisputeEvidenceTextRequest.EvidenceText = evidenceText
            
            request(to: "disputes/\(disputeId)/evidence-text",
                    method: .post,
                    accessToken: accessToken,
                    request: createDisputeEvidenceTextRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteDisputeEvidence: Removes specified evidence from a dispute.
        /// Square does not send the bank any evidence that is removed.
        /// Permissions: DISPUTES_WRITE
        /// https://developer.squareup.com/reference/square/disputes-api/delete-dispute-evidence
        public func deleteDisputeEvidence(disputeId: String,
                                   evidenceId: String,
                                   accessToken: String,
                                   completion: ((SquareupResponse) -> Void)? = nil,
                                   failed: ((Error) -> Void)? = nil) {
            
            request(to: "disputes/\(disputeId)/evidence/\(evidenceId)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveDisputeEvidence: Returns the metadata for the evidence specified in the request URL path.
        /// You must maintain a copy of any evidence uploaded if you want to reference it later. Evidence cannot be downloaded after you upload it.
        /// Permissions: DISPUTES_READ
        public func retrieveDisputeEvidence(disputeId: String,
                                     evidenceId: String,
                                     accessToken: String,
                                     completion: ((RetrieveDisputeEvidenceResponse) -> Void)? = nil,
                                     failed: ((Error) -> Void)? = nil) {
            
            
            request(to: "disputes/\(disputeId)/evidence/\(evidenceId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - submitEvidence: Submits evidence to the cardholder's bank.
        /// The evidence submitted by this endpoint includes evidence uploaded using the CreateDisputeEvidenceFile and CreateDisputeEvidenceText endpoints and evidence automatically provided by Square, when available. Evidence cannot be removed from a dispute after submission.
        /// Permissions: DISPUTES_WRITE
        /// https://developer.squareup.com/reference/square/disputes-api/submit-evidence
        public func submitEvidence(disputeId: String,
                            accessToken: String,
                            completion: ((SubmitEvidenceResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            
            request(to: "disputes/\(disputeId)/submit-evidence",
                    method: .post,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - Checkout: Accept payments through a pre-built, Square-hosted checkout page. No frontend required.
    ///
    /// With the Square Checkout API, your customers can pay for a purchase through a simple, Square-hosted checkout page. It can be integrated into any payments workflow with minimal coding.
    ///
    /// You can create and configure your checkout page through a CreatePaymentLink request, specifying the accepted payment methods and checkout options like tipping and custom fields. You can also configure a URL for customers to be redirected to once they complete their purchase.
    ///
    /// First time Square developers should utilize the payment link endpoints to create, update, retrieve, and list checkout pages.
    /// https://developer.squareup.com/reference/square/checkout-api
    open class Checkout: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listPaymentLinks: Lists all payment links.
        /// Permissions: ORDERS_READ
        /// https://developer.squareup.com/reference/square/checkout-api/list-payment-links
        public func listPaymentLinks(cursor: String?,
                              limit: Int,
                              accessToken: String,
                              completion: ((ListPaymentLinksResponse) -> Void)? = nil,
                              failed: ((Error) -> Void)? = nil) {
            
            let listPaymentLinksRequest = Serializer.deserialize(ListPaymentLinksRequest.self, [:])!
            
            listPaymentLinksRequest.Cursor = cursor
            listPaymentLinksRequest.Limit = limit
            
            request(to: "online-checkout/payment-links",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listPaymentLinksRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createPaymentLink: Creates a Square-hosted checkout page.
        /// Applications can share the resulting payment link with their buyer to pay for goods and services.
        /// Permissions: PAYMENTS_WRITE, ORDERS_READ, ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/checkout-api/create-payment-link
        public func createPaymentLink(idempotencyKey: String?,
                               description: String?,
                               quickPay: QuickPay?,
                               order: Order?,
                               checkoutOptions: CheckoutOptions?,
                               prePopulatedData: PrePopulatedData?,
                               paymentNote: String?,
                               accessToken: String,
                               completion: ((CreatePaymentLinkResponse) -> Void)? = nil,
                               failed: ((Error) -> Void)? = nil) {
            
            let createPaymentLinkRequest = Serializer.deserialize(CreatePaymentLinkRequest.self, [:])!
            
            createPaymentLinkRequest.IdempotencyKey = idempotencyKey
            createPaymentLinkRequest.Description = description
            createPaymentLinkRequest.quickPay = quickPay
            createPaymentLinkRequest.order = order
            createPaymentLinkRequest.checkoutOptions = checkoutOptions
            createPaymentLinkRequest.prePopulatedData = prePopulatedData
            createPaymentLinkRequest.PaymentNote = paymentNote
            
            request(to: "online-checkout/payment-links",
                    method: .post,
                    accessToken: accessToken,
                    request: createPaymentLinkRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deletePaymentLink: Deletes a payment link.
        /// Permissions: ORDERS_READ, ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/checkout-api/delete-payment-link
        public func deletePaymentLink(id: String,
                               accessToken: String,
                               completion: ((DeletePaymentLinkResponse) -> Void)? = nil,
                               failed: ((Error) -> Void)? = nil) {
            
            request(to: "online-checkout/payment-links/\(id)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrievePaymentLink: Retrieves a payment link.
        /// Permissions: ORDERS_READ
        /// https://developer.squareup.com/reference/square/checkout-api/retrieve-payment-link
        public func retrievePaymentLink(id: String,
                                 accessToken: String,
                                 completion: ((RetrievePaymentLinkResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            request(to: "online-checkout/payment-links/\(id)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updatePaymentLink: Updates a payment link.
        /// You can update the payment_link fields such as description, checkout_options, and pre_populated_data. You cannot update other fields such as the order_id, version, URL, or timestamp field.
        /// Permissions: PAYMENTS_WRITE, ORDERS_READ, ORDERS_WRITE
        /// https://developer.squareup.com/reference/square/checkout-api/update-payment-link
        public func updatePaymentLink(id: String,
                               paymentLink: PaymentLink?,
                               accessToken: String,
                               completion: ((UpdatePaymentLinkResponse) -> Void)? = nil,
                               failed: ((Error) -> Void)? = nil) {
            
            let updatePaymentLinkRequest = Serializer.deserialize(UpdatePaymentLinkRequest.self, [:])!
            updatePaymentLinkRequest.paymentLink = paymentLink
            
            request(to: "online-checkout/payment-links/\(id)",
                    method: .put,
                    accessToken: accessToken,
                    request: updatePaymentLinkRequest,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - ApplePay: Apple Pay support APIs
    /// The Apple Pay APIs provides an easy way for platform developers to bulk activate Web Apple Pay with Square for merchants using their platform.
    /// https://developer.squareup.com/reference/square/apple-pay-api
    open class ApplePay: SquareupApi {
        
        fileprivate override init() {}
        
        /// - registerDomain: Activates a domain for use with Apple Pay on the Web and Square.
        /// A validation is performed on this domain by Apple to ensure that it is properly set up as an Apple Pay enabled domain.
        /// This endpoint provides an easy way for platform developers to bulk activate Apple Pay on the Web with Square for merchants using their platform.
        /// Note: The SqPaymentForm library is deprecated as of May 13, 2021, and will only receive critical security updates until it is retired on October 31, 2022. You must migrate your payment form code to the Web Payments SDK to continue using your domain for Apple Pay. For more information on migrating to the Web Payments SDK, see Migrate to the Web Payments SDK.
        /// To learn more about the Web Payments SDK and how to add Apple Pay, see Take an Apple Pay Payment.
        /// https://developer.squareup.com/reference/square/apple-pay-api/register-domain
        public func registerDomain(domainName: String,
                            accessToken: String,
                            completion: ((RegisterDomainResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            let registerDomainRequest = Serializer.deserialize(RegisterDomainRequest.self, [:])!
            registerDomainRequest.DomainName = domainName
            
            request(to: "apple-pay/domains",
                    method: .post,
                    accessToken: accessToken,
                    request: registerDomainRequest,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - Cards: Use the Cards API to save a credit or debit card on file.
    ///
    /// You can use the CreateCard endpoint to save a credit or debit card to a Square account. Developers can integrate the Cards API in their application to let Square sellers:
    ///
    /// Save a card that can be charged by any Square seller who uses your application. Your application specifies the organization access token in the CreateCard request.
    /// Save a card that can be charged by a single Square seller. Your application specifies the access token of the specific seller account in the CreateCard request.
    ///
    /// The Cards API also supports other endpoints to manage the cards.
    /// https://developer.squareup.com/reference/square/cards-api
    open class Cards: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listCards: Retrieves a list of cards owned by the account making the request.
        /// A max of 25 cards will be returned.
        /// Permissions: PAYMENTS_READ
        /// https://developer.squareup.com/reference/square/cards-api/list-cards
        public func listCards(cursor: String?,
                       customerId: String?,
                       includeDisabled: Bool?,
                       referenceId: String?,
                       sortOrder: SortOrder?,
                       accessToken: String,
                       completion: ((ListCardsResponse) -> Void)? = nil,
                       failed: ((Error) -> Void)? = nil) {
            
            let listCardsRequest = Serializer.deserialize(ListCardsRequest.self, [:])!
            
            listCardsRequest.Cursor = cursor
            listCardsRequest.CustomerId = customerId
            listCardsRequest.IncludeDisabled = includeDisabled
            listCardsRequest.ReferenceId = referenceId
            listCardsRequest.sortOrder = sortOrder
            
            request(to: "cards",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listCardsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createCard: Adds a card on file to an existing merchant.
        /// Permissions: PAYMENTS_WRITE
        /// https://developer.squareup.com/reference/square/cards-api/create-card
        public func createCard(idempotencyKey: String,
                        sourceId: String,
                        verificationToken: String?,
                        card: Card?,
                        accessToken: String,
                        completion: ((CreateCardResponse) -> Void)? = nil,
                        failed: ((Error) -> Void)? = nil) {
            
            let createCardRequest = Serializer.deserialize(CreateCardRequest.self, [:])!
            
            createCardRequest.IdempotencyKey = idempotencyKey
            createCardRequest.SourceId = sourceId
            createCardRequest.VerificationToken = verificationToken
            createCardRequest.card = card
            
            request(to: "cards",
                    method: .post,
                    accessToken: accessToken,
                    request: createCardRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveCard: Retrieves details for a specific Card.
        /// Permissions: PAYMENTS_READ
        /// https://developer.squareup.com/reference/square/cards-api/retrieve-card
        public func retrieveCard(cardId: String,
                          accessToken: String,
                          completion: ((RetrieveCardResponse) -> Void)? = nil,
                          failed: ((Error) -> Void)? = nil) {
            
            request(to: "cards/\(cardId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - disableCard: Disables the card, preventing any further updates or charges.
        /// Disabling an already disabled card is allowed but has no effect.
        /// Permissions: PAYMENTS_WRITE
        /// https://developer.squareup.com/reference/square/cards-api/disable-card
        public func disableCard(cardId: String,
                        accessToken: String,
                        completion: ((DisableCardResponse) -> Void)? = nil,
                        failed: ((Error) -> Void)? = nil) {
            
            request(to: "cards/\(cardId)/disable",
                    method: .post,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - Payouts: Get a list of deposits and withdrawals from a seller's bank accounts.
    /// The Payouts API allows you to see a complete list of payouts made to a seller's banking destination, with a list of payout entries that describe the payments associated with each payout. It can be paired with the Bank Accounts API to add detail about which bank account each payout was made to.
    /// https://developer.squareup.com/reference/square/payouts-api
    open class Payouts: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listPayouts: Retrieves a list of all payouts for the default location.
        /// You can filter payouts by location ID, status, time range, and order them in ascending or descending order. To call this endpoint, set PAYOUTS_READ for the OAuth scope.
        /// https://developer.squareup.com/reference/square/payouts-api/list-payouts
        public func listPayouts(locationId: String?,
                         status: PayoutStatus?,
                         beginTime: Date?,
                         endTime: Date?,
                         sortOrder: SortOrder?,
                         cursor: String?,
                         limit: Int?,
                         accessToken: String,
                         completion: ((ListPayoutsResponse) -> Void)? = nil,
                         failed: ((Error) -> Void)? = nil) {
            
            let listPayoutsRequest = Serializer.deserialize(ListPayoutsRequest.self, [:])!
            
            listPayoutsRequest.LocationId = locationId
            listPayoutsRequest.Status = status
            listPayoutsRequest.BeginTime = beginTime
            listPayoutsRequest.EndTime = endTime
            listPayoutsRequest.sortOrder = sortOrder
            listPayoutsRequest.Cursor = cursor
            listPayoutsRequest.Limit = limit
            
            request(to: "payouts",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listPayoutsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - getPayout: Retrieves details of a specific payout identified by a payout ID.
        /// To call this endpoint, set PAYOUTS_READ for the OAuth scope.
        /// https://developer.squareup.com/reference/square/payouts-api/get-payout
        public func getPayout(payoutId: String,
                       accessToken: String,
                       completion: ((GetPayoutResponse) -> Void)? = nil,
                       failed: ((Error) -> Void)? = nil) {
            
            request(to: "payouts/\(payoutId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listPayoutEntries: Retrieves a list of all payout entries for a specific payout.
        /// To call this endpoint, set PAYOUTS_READ for the OAuth scope.
        /// https://developer.squareup.com/reference/square/payouts-api/list-payout-entries
        public func listPayoutEntries(payoutId: String,
                               sortOrder: SortOrder?,
                               cursor: String?,
                               limit: Int?,
                               accessToken: String,
                               completion: ((ListPayoutEntriesResponse) -> Void)? = nil,
                               failed: ((Error) -> Void)? = nil) {
            
            let listPayoutEntriesRequest = Serializer.deserialize(ListPayoutEntriesRequest.self, [:])!
            
            listPayoutEntriesRequest.sortOrder = sortOrder
            listPayoutEntriesRequest.Cursor = cursor
            listPayoutEntriesRequest.Limit = limit
            
            request(to: "payouts/\(payoutId)/payout-entries",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listPayoutEntriesRequest,
                    completion: completion,
                    failed: failed)
        }
    }
}
