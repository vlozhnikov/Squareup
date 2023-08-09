//
//  GiftCardsApi.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 23.06.23.
//

import Foundation
import Alamofire

open class GiftCardsApi {
    
    public static let giftCards = GiftCards()
    public static let activities = GiftCardsActivities()
    
    fileprivate init() {}
    
    /// - GiftCards: Create and retrieve gift cards and manage gift cards on file.
    /// Square Gift Cards enable sellers to boost sales and attract new customers. Customers can purchase gift cards and redeem them at any of the seller's locations. Sellers can manage gift cards and track activity.
    /// Use the Gift Cards API to create and retrieve gift cards (for example, to get the gift card balance) and manage gift cards on file by linking or unlinking gift cards with customers. After creating a gift card, use the Gift Card Activities API to activate the gift card with an initial balance and manage other activities.
    /// https://developer.squareup.com/reference/square/gift-cards-api
    open class GiftCards: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listGiftCards: Lists all gift cards.
        /// You can specify optional filters to retrieve a subset of the gift cards. Results are sorted by created_at in ascending order.
        /// Permissions: GIFTCARDS_READ
        /// https://developer.squareup.com/reference/square/gift-cards-api/list-gift-cards
        public func listGiftCards(type: GiftCardType? = nil,
                           state: GiftCardStatus? = nil,
                           limit: Int? = nil,
                           cursor: String?,
                           customer_id: String? = nil,
                           accessToken: String,
                           completion: ((ListGiftCardsResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            let listGiftCardsRequest = Serializer.deserialize(ListGiftCardsRequest.self, [:])!
            
            listGiftCardsRequest.type = type
            listGiftCardsRequest.State = state
            listGiftCardsRequest.Limit = limit
            listGiftCardsRequest.Cursor = cursor
            
            request(to: "gift-cards",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listGiftCardsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createGiftCard: Creates a digital gift card or registers a physical (plastic) gift card.
        /// After the gift card is created, you must call CreateGiftCardActivity to activate the card with an initial balance before it can be used for payment.
        /// Permissions: GIFTCARDS_WRITE
        /// https://developer.squareup.com/reference/square/gift-cards-api/create-gift-card
        public func createGiftCard(idempotencyKey: String,
                            locationId: String,
                            giftCard: GiftCard,
                            accessToken: String,
                            completion: ((CreateGiftCardResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            let createGiftCardRequest = Serializer.deserialize(CreateGiftCardRequest.self, [:])!
            
            createGiftCardRequest.IdempotencyKey = idempotencyKey
            createGiftCardRequest.LocationId = locationId
            createGiftCardRequest.giftCard = giftCard
            
            request(to: "gift-cards",
                    method: .post,
                    accessToken: accessToken,
                    request: createGiftCardRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveGiftCardFromGAN: Retrieves a gift card using the gift card account number (GAN).
        /// Permissions: GIFTCARDS_READ
        /// https://developer.squareup.com/reference/square/gift-cards-api/retrieve-gift-card-from-gan
        public func retrieveGiftCardFromGAN(gan: String,
                                     accessToken: String,
                                     completion: ((RetrieveGiftCardFromGANResponse) -> Void)? = nil,
                                     failed: ((Error) -> Void)? = nil) {
            
            let retrieveGiftCardFromGANRequest = Serializer.deserialize(RetrieveGiftCardFromGANRequest.self, [:])!
            retrieveGiftCardFromGANRequest.Gan = gan
            
            request(to: "gift-cards/from-gan",
                    method: .post,
                    accessToken: accessToken,
                    request: retrieveGiftCardFromGANRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveGiftCardFromNonce: Retrieves a gift card using a secure payment token that represents the gift card.
        /// Permissions: GIFTCARDS_READ
        /// https://developer.squareup.com/reference/square/gift-cards-api/retrieve-gift-card-from-nonce
        public func retrieveGiftCardFromNonce(nonce: String,
                                       accessToken: String,
                                       completion: ((RetrieveGiftCardFromNonceResponse) -> Void)? = nil,
                                       failed: ((Error) -> Void)? = nil) {
            
            let retrieveGiftCardFromNonceRequest = Serializer.deserialize(RetrieveGiftCardFromNonceRequest.self, [:])!
            retrieveGiftCardFromNonceRequest.Nonce = nonce
            
            request(to: "gift-cards/from-nonce",
                    method: .post,
                    accessToken: accessToken,
                    request: retrieveGiftCardFromNonceRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - linkCustomerToGiftCard: Links a customer to a gift card, which is also referred to as adding a card on file.
        /// Permissions: GIFTCARDS_WRITE
        /// https://developer.squareup.com/reference/square/gift-cards-api/link-customer-to-gift-card
        public func linkCustomerToGiftCard(giftCardId: String,
                                    customerId: String,
                                    accessToken: String,
                                    completion: ((LinkCustomerToGiftCardResponse) -> Void)? = nil,
                                    failed: ((Error) -> Void)? = nil) {
            
            let linkCustomerToGiftCardRequest = Serializer.deserialize(LinkCustomerToGiftCardRequest.self, [:])!
            linkCustomerToGiftCardRequest.CustomerId = customerId
            
            request(to: "gift-cards/\(giftCardId)/link-customer",
                    method: .post,
                    accessToken: accessToken,
                    request: linkCustomerToGiftCardRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - uplinkCustomerFromGiftCard: Unlinks a customer from a gift card, which is also referred to as removing a card on file.
        /// Permissions: GIFTCARDS_WRITE
        /// https://developer.squareup.com/reference/square/gift-cards-api/unlink-customer-from-gift-card
        public func uplinkCustomerFromGiftCard(giftCardId: String,
                                        customerId: String,
                                        accessToken: String,
                                        completion: ((UnlinkCustomerFromGiftCardResponse) -> Void)? = nil,
                                        failed: ((Error) -> Void)? = nil) {
            
            let unlinkCustomerFromGiftCardRequest = Serializer.deserialize(UnlinkCustomerFromGiftCardRequest.self, [:])!
            unlinkCustomerFromGiftCardRequest.CustomerId = customerId
            
            request(to: "gift-cards/\(giftCardId)/unlink-customer",
                    method: .post,
                    accessToken: accessToken,
                    request: unlinkCustomerFromGiftCardRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveGiftCard: Retrieves a gift card using the gift card ID.
        /// Permissions: GIFTCARDS_READ
        /// https://developer.squareup.com/reference/square/gift-cards-api/retrieve-gift-card
        public func retrieveGiftCard(id: String,
                              accessToken: String,
                              completion: ((RetrieveGiftCardResponse) -> Void)? = nil,
                              failed: ((Error) -> Void)? = nil) {
            
            request(to: "gift-cards/\(id)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - GiftCardsActivities: Create and retrieve gift card activities.
    /// Use the Gift Card Activities API to create activities for a Square gift card (such as activating or reloading the gift card) and to track gift card activities. The Gift Card Activities API is used with the Gift Cards API to manage the gift card program for a Square seller.
    /// https://developer.squareup.com/reference/square/gift-card-activities-api
    open class GiftCardsActivities: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listGiftCardActivities: Lists gift card activities.
        /// By default, you get gift card activities for all gift cards in the seller's account. You can optionally specify query parameters to filter the list. For example, you can get a list of gift card activities for a gift card, for all gift cards in a specific region, or for activities within a time window.
        /// Permissions:GIFTCARDS_READ
        /// https://developer.squareup.com/reference/square/gift-card-activities-api/list-gift-card-activities
        public func listGiftCardActivities(giftCardId: String?,
                                    type: GiftCardActivityType?,
                                    locationId: String?,
                                    beginTime: Date?,
                                    endTime: Date?,
                                    limit: Int?,
                                    cursor: String?,
                                    sortOrder: SortOrder?,
                                    accessToken: String,
                                    completion: ((ListGiftCardActivitiesResponse) -> Void)? = nil,
                                    failed: ((Error) -> Void)? = nil) {
            
            let listGiftCardActivitiesRequest = Serializer.deserialize(ListGiftCardActivitiesRequest.self, [:])!
            
            listGiftCardActivitiesRequest.GiftCardId = giftCardId
            listGiftCardActivitiesRequest.type = type
            listGiftCardActivitiesRequest.LocationLd = locationId
            listGiftCardActivitiesRequest.BeginTime = beginTime
            listGiftCardActivitiesRequest.EndTime = endTime
            listGiftCardActivitiesRequest.Limit = limit
            listGiftCardActivitiesRequest.Cursor = cursor
            listGiftCardActivitiesRequest.sortOrder = sortOrder
            
            request(to: "gift-cards/activities",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listGiftCardActivitiesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createGiftCardActivity: Creates a gift card activity to manage the balance or state of a gift card.
        /// For example, you create an ACTIVATE activity to activate a gift card with an initial balance before the gift card can be used.
        /// Permissions:GIFTCARDS_WRITE
        /// https://developer.squareup.com/reference/square/gift-card-activities-api/create-gift-card-activity
        public func createGiftCardActivity(idempotencyKey: String,
                                    giftCardActivity: GiftCardActivity,
                                    accessToken: String,
                                    completion: ((CreateGiftCardActivityResponse) -> Void)? = nil,
                                    failed: ((Error) -> Void)? = nil) {
            
            let createGiftCardActivityRequest = Serializer.deserialize(CreateGiftCardActivityRequest.self, [:])!
            
            createGiftCardActivityRequest.IdempotencyKey = idempotencyKey
            createGiftCardActivityRequest.giftCardActivity = giftCardActivity
            
            request(to: "gift-cards/activities",
                    method: .post,
                    accessToken: accessToken,
                    request: createGiftCardActivityRequest,
                    completion: completion,
                    failed: failed)
        }
    }
}
