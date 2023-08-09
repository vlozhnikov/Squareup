//
//  SubscriptionsApi.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 19.06.23.
//

import Foundation
import Alamofire

open class SubscriptionsApi {
    
    public static let subscriptions = Subscriptions()
    
    fileprivate init() {}
    
    /// - Subscriptions: Create and manage subscriptions.
    /// ubscriptions enable sellers to generate a reliable cash flow and recurring revenue to grow their businesses. Square offers the Subscriptions API for developers to embed subscription functionality in their applications. You first create a subscription plan using the Catalog API and then use the Subscriptions API to create and manage subscriptions.
    /// https://developer.squareup.com/reference/square/subscriptions-api
    open class Subscriptions: SquareupApi {
        
        fileprivate override init() {}
        
        /// - createSubscription: Enrolls a customer in a subscription.
        /// If you provide a card on file in the request, Square charges the card for the subscription. Otherwise, Square sends an invoice to the customer's email address. The subscription starts immediately, unless the request includes the optional start_date. Each individual subscription is associated with a particular location.
        /// For more information, see Create a subscription.
        /// Permissions: CUSTOMERS_READ, PAYMENTS_WRITE, SUBSCRIPTIONS_WRITE, ITEMS_READ, ORDERS_WRITE, INVOICES_WRITE
        /// https://developer.squareup.com/reference/square/subscriptions-api/create-subscription
        public func createSubscription(idempotencyKey: String,
                                locationId: String,
                                planId: String,
                                planVariationId: String?,
                                customerId: String,
                                startDate: Date?,
                                canceledDate: Date?,
                                taxPercentage: String?,
                                priceOverrideMoney: Money?,
                                cardId: String?,
                                timezone: String?,
                                source: SubscriptionSource?,
                                phases: [Phase]?,
                                accessToken: String,
                                completion: ((CreateSubscriptionResponse) -> Void)? = nil,
                                failed: ((Error) -> Void)? = nil) {
            
            let createSubscriptionRequest = Serializer.deserialize(CreateSubscriptionRequest.self, [:])!
            
            createSubscriptionRequest.IdempotencyKey = idempotencyKey
            createSubscriptionRequest.LocationId = locationId
            createSubscriptionRequest.PlanId = planId
            createSubscriptionRequest.PlanVariationId = planVariationId
            createSubscriptionRequest.CustomerId = customerId
            createSubscriptionRequest.StartDate = startDate
            createSubscriptionRequest.CanceledDate = canceledDate
            createSubscriptionRequest.TaxPercentage = taxPercentage
            createSubscriptionRequest.PriceOverrideMoney = priceOverrideMoney
            createSubscriptionRequest.CardId = cardId
            createSubscriptionRequest.Timezone = timezone
            createSubscriptionRequest.Source = source
            createSubscriptionRequest.Phases = phases
            
            request(to: "subscriptions",
                    method: .post,
                    accessToken: accessToken,
                    request: createSubscriptionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - searchSubscriptions: Searches for subscriptions.
        /// Results are ordered chronologically by subscription creation date. If the request specifies more than one location ID, the endpoint orders the result by location ID, and then by creation date within each location. If no locations are given in the query, all locations are searched.
        /// You can also optionally specify customer_ids to search by customer. If left unset, all customers associated with the specified locations are returned. If the request specifies customer IDs, the endpoint orders results first by location, within location by customer ID, and within customer by subscription creation date.
        /// Permissions: SUBSCRIPTIONS_READ
        /// https://developer.squareup.com/reference/square/subscriptions-api/search-subscriptions
        public func searchSubscriptions(cursor: String?,
                                 limit: Int?,
                                 query: SearchSubscriptionsQuery?,
                                 include: [String]?,
                                 accessToken: String,
                                 completion: ((SearchSubscriptionsResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            let searchSubscriptionsRequest = Serializer.deserialize(SearchSubscriptionsRequest.self, [:])!
            
            searchSubscriptionsRequest.Cursor = cursor
            searchSubscriptionsRequest.Limit = limit
            searchSubscriptionsRequest.Query = query
            searchSubscriptionsRequest.Include = include
            
            request(to: "subscriptions/search",
                    method: .post,
                    accessToken: accessToken,
                    request: searchSubscriptionsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveSubscription: Retrieves a specific subscription.
        /// Permissions: SUBSCRIPTIONS_READ
        /// https://developer.squareup.com/reference/square/subscriptions-api/retrieve-subscription
        public func retrieveSubscription(subscriptionId: String,
                                  include: String?,
                                  accessToken: String,
                                  completion: ((RetrieveSubscriptionResponse) -> Void)? = nil,
                                  failed: ((Error) -> Void)? = nil) {
             
            let retrieveSubscriptionRequest = Serializer.deserialize(RetrieveSubscriptionRequest.self, [:])!
            retrieveSubscriptionRequest.Include = include
             
            request(to: "subscriptions/\(subscriptionId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveSubscriptionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateSubscription: Updates a subscription by modifying or clearing subscription field values.
        /// To clear a field, set its value to null.
        /// Permissions: CUSTOMERS_READ, PAYMENTS_WRITE, SUBSCRIPTIONS_WRITE, ITEMS_READ, ORDERS_WRITE, INVOICES_WRITE
        /// https://developer.squareup.com/reference/square/subscriptions-api/update-subscription
        public func updateSubscription(subscriptionId: String,
                                subscription: Subscription?,
                                accessToken: String,
                                completion: ((UpdateSubscriptionResponse) -> Void)? = nil,
                                failed: ((Error) -> Void)? = nil) {
            
            let updateSubscriptionRequest = Serializer.deserialize(UpdateSubscriptionRequest.self, [:])!
            updateSubscriptionRequest.subscription = subscription
           
            request(to: "subscriptions/\(subscriptionId)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateSubscriptionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteSubscription: Deletes a scheduled action for a subscription.
        /// Permissions: SUBSCRIPTIONS_WRITE
        /// https://developer.squareup.com/reference/square/subscriptions-api/delete-subscription-action
        public func deleteSubscription(subscriptionId: String,
                                actionId: String,
                                accessToken: String,
                                completion: ((DeleteSubscriptionResponse) -> Void)? = nil,
                                failed: ((Error) -> Void)? = nil) {
           
            request(to: "subscriptions/\(subscriptionId)/actions/\(actionId)",
                    method: .delete,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - cancelSubscription: Schedules a CANCEL action to cancel an active subscription.
        /// This sets the canceled_date field to the end of the active billing period. After this date, the subscription status changes from ACTIVE to CANCELED.
        /// Permissions: SUBSCRIPTIONS_WRITE
        public func cancelSubscription(subscriptionId: String,
                                accessToken: String,
                                completion: ((CancelSubscriptionResponse) -> Void)? = nil,
                                failed: ((Error) -> Void)? = nil) {
           
            request(to: "subscriptions/\(subscriptionId)/cancel",
                    method: .post,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listSubscriptionEvents: Lists all events for a specific subscription.
        /// Permissions: SUBSCRIPTIONS_READ
        /// https://developer.squareup.com/reference/square/subscriptions-api/list-subscription-events
        public func listSubscriptionEvents(subscriptionId: String,
                                    cursor: String?,
                                    limit: Int?,
                                    accessToken: String,
                                    completion: ((ListSubscriptionEventsResponse) -> Void)? = nil,
                                    failed: ((Error) -> Void)? = nil) {
            
            let listSubscriptionEventsRequest = Serializer.deserialize(ListSubscriptionEventsRequest.self, [:])!
            
            listSubscriptionEventsRequest.Cursor = cursor
            listSubscriptionEventsRequest.Limit = limit
           
            request(to: "subscriptions/\(subscriptionId)/events",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listSubscriptionEventsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - pauseSubscription: Schedules a PAUSE action to pause an active subscription.
        /// Permissions: CUSTOMERS_READ, PAYMENTS_WRITE, SUBSCRIPTIONS_WRITE, ITEMS_READ, ORDERS_WRITE, INVOICES_WRITE
        /// https://developer.squareup.com/reference/square/subscriptions-api/pause-subscription
        public func pauseSubscription(subscriptionId: String,
                               pauseEffectiveDate: Date?,
                               pauseCycleDuration: Int?,
                               resumeEffectiveDate: Date?,
                               resumeChangeTiming: ChangeTiming?,
                               pauseReason: String?,
                               accessToken: String,
                               completion: ((PauseSubscriptionResponse) -> Void)? = nil,
                               failed: ((Error) -> Void)? = nil) {
            
            let pauseSubscriptionRequest = Serializer.deserialize(PauseSubscriptionRequest.self, [:])!
            
            pauseSubscriptionRequest.PauseEffectiveDate = pauseEffectiveDate
            pauseSubscriptionRequest.PauseCycleDuration = pauseCycleDuration
            pauseSubscriptionRequest.ResumeEffectiveDate = resumeEffectiveDate
            pauseSubscriptionRequest.ResumeChangeTiming = resumeChangeTiming
            pauseSubscriptionRequest.PauseReason = pauseReason
           
            request(to: "subscriptions/\(subscriptionId)/pause",
                    method: .post,
                    accessToken: accessToken,
                    request: pauseSubscriptionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - resumeSubscription: Schedules a RESUME action to resume a paused or a deactivated subscription.
        /// Permissions: CUSTOMERS_READ, PAYMENTS_WRITE, SUBSCRIPTIONS_WRITE, ITEMS_READ, ORDERS_WRITE, INVOICES_WRITE
        /// https://developer.squareup.com/reference/square/subscriptions-api/resume-subscription
        public func resumeSubscription(subscriptionId: String,
                                resumeEffectiveDate: Date?,
                                resumeChangeTiming: ChangeTiming?,
                                accessToken: String,
                                completion: ((ResumeSubscriptionResponse) -> Void)? = nil,
                                failed: ((Error) -> Void)? = nil) {
            
            let resumeSubscriptionRequest = Serializer.deserialize(ResumeSubscriptionRequest.self, [:])!
            
            resumeSubscriptionRequest.ResumeEffectiveDate = resumeEffectiveDate
            resumeSubscriptionRequest.ResumeChangeTiming = resumeChangeTiming
           
            request(to: "subscriptions/\(subscriptionId)/resume",
                    method: .post,
                    accessToken: accessToken,
                    request: resumeSubscriptionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - swapPlan: Schedules a SWAP_PLAN action to swap a subscription plan variation in an existing subscription.
        /// For more information, see Swap Subscription Plan Variations.
        /// Permissions: CUSTOMERS_READ, PAYMENTS_WRITE, SUBSCRIPTIONS_WRITE, ITEMS_READ, ORDERS_WRITE, INVOICES_WRITE
        /// https://developer.squareup.com/reference/square/subscriptions-api/swap-plan
        public func swapPlan(subscriptionId: String,
                      newPlanVariationId: String,
                      phases: [PhaseInput]?,
                      accessToken: String,
                      completion: ((SwapPlanResponse) -> Void)? = nil,
                      failed: ((Error) -> Void)? = nil) {
            
            let swapPlanRequest = Serializer.deserialize(SwapPlanRequest.self, [:])!
            
            swapPlanRequest.NewPlanVariationId = newPlanVariationId
            swapPlanRequest.Phases = phases
           
            request(to: "subscriptions/\(subscriptionId)/swap-plan",
                    method: .post,
                    accessToken: accessToken,
                    request: swapPlanRequest,
                    completion: completion,
                    failed: failed)
        }
    }
}
