//
//  LoyaltyApi.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation
import Alamofire

open class LoyaltyApi {
    
    public static let loyalty = Loyalty()
    
    fileprivate init() {}
    
    /// - Loyalty: Enroll buyers in a Square loyalty program, view program settings, manage and track loyalty activity, and create and manage promotions.
    ///
    /// Sellers subscribe to Square Loyalty to offer a loyalty program that can increase repeat visits to their business by rewarding customers.
    ///
    /// Use the Loyalty API to create loyalty accounts for buyers and enable them to earn points for purchases and redeem points for reward discounts. Also use the Loyalty API to retrieve details about the loyalty program, create and manage loyalty promotions that extend the base program, and track balance-changing events for loyalty accounts.
    /// https://developer.squareup.com/reference/square/loyalty-api
    open class Loyalty: SquareupApi {
        
        fileprivate override init() {}
        
        /// - createLoyaltyAccount: Creates a loyalty account.
        /// To create a loyalty account, you must provide the program_id and a mapping with the phone_number of the buyer.
        /// Permissions: LOYALTY_WRITE
        /// https://developer.squareup.com/reference/square/loyalty-api/create-loyalty-account
        func createLoyaltyAccount(idempotencyKey: String,
                                  loyaltyAccount: LoyaltyAccount,
                                  accessToken: String,
                                  completion: ((CreateLoyaltyAccountResponse) -> Void)? = nil,
                                  failed: ((Error) -> Void)? = nil) {
            
            let createLoyaltyAccountRequest = Serializer.deserialize(CreateLoyaltyAccountRequest.self, [:])!
            
            createLoyaltyAccountRequest.IdempotencyKey = idempotencyKey
            createLoyaltyAccountRequest.loyaltyAccount = loyaltyAccount
            
            request(to: "loyalty/accounts",
                    method: .post,
                    accessToken: accessToken,
                    request: createLoyaltyAccountRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - searchLoyaltyAccounts: Searches for loyalty accounts in a loyalty program.
        /// You can search for a loyalty account using the phone number or customer ID associated with the account. To return all loyalty accounts, specify an empty query object or omit it entirely.
        /// Search results are sorted by created_at in ascending order.
        /// Permissions: LOYALTY_READ
        /// https://developer.squareup.com/reference/square/loyalty-api/search-loyalty-accounts
        func searchLoyaltyAccounts(query: SearchLoyaltyAccountsRequestLoyaltyAccountQuery?,
                                   limit: Int?,
                                   cursor: String?,
                                   accessToken: String,
                                   completion: ((SearchLoyaltyAccountsResponse) -> Void)? = nil,
                                   failed: ((Error) -> Void)? = nil) {
            
            let searchLoyaltyAccountsRequest = Serializer.deserialize(SearchLoyaltyAccountsRequest.self, [:])!
            
            searchLoyaltyAccountsRequest.Query = query
            searchLoyaltyAccountsRequest.Limit = limit
            searchLoyaltyAccountsRequest.Cursor = cursor
            
            request(to: "loyalty/accounts/search",
                    method: .post,
                    accessToken: accessToken,
                    request: searchLoyaltyAccountsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveLoyaltyAccount: Retrieves a loyalty account.
        /// Permissions: LOYALTY_READ
        /// https://developer.squareup.com/reference/square/loyalty-api/retrieve-loyalty-account
        func retrieveLoyaltyAccount(accountId: String,
                                    accessToken: String,
                                    completion: ((RetrieveLocationResponse) -> Void)? = nil,
                                    failed: ((Error) -> Void)? = nil) {
            
            request(to: "loyalty/accounts/\(accountId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - accumulateLoyaltyPoints: Adds points earned from a purchase to a loyalty account.
        /// If you are using the Orders API to manage orders, provide the order_id. Square reads the order to compute the points earned from both the base loyalty program and an associated loyalty promotion. For purchases that qualify for multiple accrual rules, Square computes points based on the accrual rule that grants the most points. For purchases that qualify for multiple promotions, Square computes points based on the most recently created promotion. A purchase must first qualify for program points to be eligible for promotion points.
        /// If you are not using the Orders API to manage orders, provide points with the number of points to add. You must first perform a client-side computation of the points earned from the loyalty program and loyalty promotion. For spend-based and visit-based programs, you can call CalculateLoyaltyPoints to compute the points earned from the base loyalty program. For information about computing points earned from a loyalty promotion, see Calculating promotion points.
        /// Permissions: LOYALTY_WRITE
        /// https://developer.squareup.com/reference/square/loyalty-api/accumulate-loyalty-points
        func accumulateLoyaltyPoints(accountId: String,
                                     accumulatePoints: LoyaltyEventAccumulatePoints,
                                     idempotencyKey: String,
                                     locationId: String,
                                     accessToken: String,
                                     completion: ((AccumulateLoyaltyPointsResponse) -> Void)? = nil,
                                     failed: ((Error) -> Void)? = nil) {
            
            let accumulateLoyaltyPointsRequest = Serializer.deserialize(AccumulateLoyaltyPointsRequest.self, [:])!
            
            accumulateLoyaltyPointsRequest.AccumulatePoints = accumulatePoints
            accumulateLoyaltyPointsRequest.IdempotencyKey = idempotencyKey
            accumulateLoyaltyPointsRequest.LocationId = locationId
            
            request(to: "loyalty/accounts/\(accountId)/accumulate",
                    method: .post,
                    accessToken: accessToken,
                    request: accumulateLoyaltyPointsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - adjustLoyaltyPoints: Adds points to or subtracts points from a buyer's account.
        /// Use this endpoint only when you need to manually adjust points. Otherwise, in your application flow, you call AccumulateLoyaltyPoints to add points when a buyer pays for the purchase.
        /// Permissions: LOYALTY_WRITE
        /// https://developer.squareup.com/reference/square/loyalty-api/adjust-loyalty-points
        func adjustLoyaltyPoints(accountId: String,
                                 idempotencyKey: String,
                                 adjustPoints: LoyaltyEventAdjustPoints,
                                 allowNegativeBalance: Bool?,
                                 accessToken: String,
                                 completion: ((AdjustLoyaltyPointsResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            let adjustLoyaltyPointsRequest = Serializer.deserialize(AdjustLoyaltyPointsRequest.self, [:])!
            
            adjustLoyaltyPointsRequest.IdempotencyKey = idempotencyKey
            adjustLoyaltyPointsRequest.AdjustPoints = adjustPoints
            adjustLoyaltyPointsRequest.AllowNegativeBalance = allowNegativeBalance
            
            request(to: "loyalty/accounts/\(accountId)/adjust",
                    method: .post,
                    accessToken: accessToken,
                    request: adjustLoyaltyPointsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - searchLoyaltyEvents: Searches for loyalty events.
        /// A Square loyalty program maintains a ledger of events that occur during the lifetime of a buyer's loyalty account. Each change in the point balance (for example, points earned, points redeemed, and points expired) is recorded in the ledger. Using this endpoint, you can search the ledger for events.
        /// Search results are sorted by created_at in descending order.
        /// Permissions: LOYALTY_READ
        /// https://developer.squareup.com/reference/square/loyalty-api/search-loyalty-events
        func searchLoyaltyEvents(query: LoyaltyEventQuery?,
                                 limit: Int?,
                                 cursor: String?,
                                 accessToken: String,
                                 completion: ((SearchLoyaltyEventsResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            let searchLoyaltyEventsRequest = Serializer.deserialize(SearchLoyaltyEventsRequest.self, [:])!
            
            searchLoyaltyEventsRequest.Query = query
            searchLoyaltyEventsRequest.Limit = limit
            searchLoyaltyEventsRequest.Cursor = cursor
            
            request(to: "loyalty/events/search",
                    method: .post,
                    accessToken: accessToken,
                    request: searchLoyaltyEventsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveLoyaltyProgram: Retrieves the loyalty program in a seller's account, specified by the program ID or the keyword main.
        /// Loyalty programs define how buyers can earn points and redeem points for rewards. Square sellers can have only one loyalty program, which is created and managed from the Seller Dashboard. For more information, see Loyalty Program Overview.
        /// Permissions: LOYALTY_READ
        /// https://developer.squareup.com/reference/square/loyalty-api/retrieve-loyalty-program
        func retrieveLoyaltyProgram(programId: String,
                                    accessToken: String,
                                    completion: ((RetrieveLoyaltyProgramResponse) -> Void)? = nil,
                                    failed: ((Error) -> Void)? = nil) {
            
            request(to: "loyalty/programs/\(programId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - calculateLoyaltyPoints: Calculates the number of points a buyer can earn from a purchase.
        /// Applications might call this endpoint to display the points to the buyer.
        ///
        /// If you are using the Orders API to manage orders, provide the order_id and (optional) loyalty_account_id. Square reads the order to compute the points earned from the base loyalty program and an associated loyalty promotion.
        ///
        /// If you are not using the Orders API to manage orders, provide transaction_amount_money with the purchase amount. Square uses this amount to calculate the points earned from the base loyalty program, but not points earned from a loyalty promotion. For spend-based and visit-based programs, the tax_mode setting of the accrual rule indicates how taxes should be treated for loyalty points accrual. If the purchase qualifies for program points, call ListLoyaltyPromotions and perform a client-side computation to calculate whether the purchase also qualifies for promotion points. For more information, see Calculating promotion points.
        ///
        /// Permissions: LOYALTY_READ
        /// https://developer.squareup.com/reference/square/loyalty-api/calculate-loyalty-points
        func calculateLoyaltyPoints(programId: String,
                                    orderId: String?,
                                    transactionAmountMoney: Money?,
                                    loyaltyAccountId: String?,
                                    accessToken: String,
                                    completion: ((CalculateLoyaltyPointsResponse) -> Void)? = nil,
                                    failed: ((Error) -> Void)? = nil) {
            
            let calculateLoyaltyPointsRequest = Serializer.deserialize(CalculateLoyaltyPointsRequest.self, [:])!
            
            calculateLoyaltyPointsRequest.OrderId = orderId
            calculateLoyaltyPointsRequest.TransactionAmountMoney = transactionAmountMoney
            calculateLoyaltyPointsRequest.LoyaltyAccountId = loyaltyAccountId
            
            request(to: "loyalty/programs/\(programId)/calculate",
                    method: .post,
                    accessToken: accessToken,
                    request: calculateLoyaltyPointsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listLoyaltyPromotions: Lists the loyalty promotions associated with a loyalty program.
        /// Results are sorted by the created_at date in descending order (newest to oldest).
        /// Permissions: LOYALTY_READ
        /// https://developer.squareup.com/reference/square/loyalty-api/list-loyalty-promotions
        func listLoyaltyPromotions(programId: String,
                                   status: LoyaltyPromotionStatus?,
                                   cursor: String?,
                                   limit: Int?,
                                   accessToken: String,
                                   completion: ((ListLoyaltyPromotionsResponse) -> Void)? = nil,
                                   failed: ((Error) -> Void)? = nil) {
            
            let listLoyaltyPromotionsRequest = Serializer.deserialize(ListLoyaltyPromotionsRequest.self, [:])!
            
            listLoyaltyPromotionsRequest.Status = status
            listLoyaltyPromotionsRequest.Cursor = cursor
            listLoyaltyPromotionsRequest.Limit = limit
            
            request(to: "loyalty/programs/\(programId)/promotions",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listLoyaltyPromotionsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createLoyaltyPromotion: Creates a loyalty promotion for a loyalty program.
        /// A loyalty promotion enables buyers to earn points in addition to those earned from the base loyalty program.
        /// This endpoint sets the loyalty promotion to the ACTIVE or SCHEDULED status, depending on the available_time setting. A loyalty program can have a maximum of 10 loyalty promotions with an ACTIVE or SCHEDULED status.
        /// Permissions: LOYALTY_WRITE
        /// https://developer.squareup.com/reference/square/loyalty-api/create-loyalty-promotion
        func createLoyaltyPromotion(programId: String,
                                    loyaltyPromotion: LoyaltyPromotion,
                                    idempotencyKey: String,
                                    accessToken: String,
                                    completion: ((CreateLoyaltyPromotionResponse) -> Void)? = nil,
                                    failed: ((Error) -> Void)? = nil) {
            
            let createLoyaltyPromotionRequest = Serializer.deserialize(CreateLoyaltyPromotionRequest.self, [:])!
            
            createLoyaltyPromotionRequest.LoyaltyPromotion = loyaltyPromotion
            createLoyaltyPromotionRequest.IdempotencyKey = idempotencyKey
            
            request(to: "loyalty/programs/\(programId)/promotions",
                    method: .post,
                    accessToken: accessToken,
                    request: createLoyaltyPromotionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveLoyaltyPromotion: Retrieves a loyalty promotion.
        /// Permissions: LOYALTY_READ
        /// https://developer.squareup.com/reference/square/loyalty-api/retrieve-loyalty-promotion
        func retrieveLoyaltyPromotion(promotionId: String,
                                      programId: String,
                                      accessToken: String,
                                      completion: ((RetrieveLoyaltyPromotionResponse) -> Void)? = nil,
                                      failed: ((Error) -> Void)? = nil) {
            
            request(to: "loyalty/programs/\(programId)/promotions/\(promotionId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - cancelLoyaltyPromotion: Cancels a loyalty promotion.
        /// Use this endpoint to cancel an ACTIVE promotion earlier than the end date, cancel an ACTIVE promotion when an end date is not specified, or cancel a SCHEDULED promotion. Because updating a promotion is not supported, you can also use this endpoint to cancel a promotion before you create a new one.
        /// This endpoint sets the loyalty promotion to the CANCELED state
        /// Permissions: LOYALTY_WRITE
        /// https://developer.squareup.com/reference/square/loyalty-api/cancel-loyalty-promotion
        func cancelLoyaltyPromotion(promotionId: String,
                                    programId: String,
                                    accessToken: String,
                                    completion: ((CancelLoyaltyPromotionResponse) -> Void)? = nil,
                                    failed: ((Error) -> Void)? = nil) {
            
            request(to: "loyalty/programs/\(programId)/promotions/\(promotionId)/cancel",
                    method: .post,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createLoyaltyReward: Creates a loyalty reward.
        /// In the process, the endpoint does following:
        /// Uses the reward_tier_id in the request to determine the number of points to lock for this reward.
        /// If the request includes order_id, it adds the reward and related discount to the order.
        /// After a reward is created, the points are locked and not available for the buyer to redeem another reward.
        /// Permissions: LOYALTY_WRITE
        /// https://developer.squareup.com/reference/square/loyalty-api/create-loyalty-reward
        func createLoyaltyReward(reward: LoyaltyReward,
                                 idempotencyKey: String,
                                 accessToken: String,
                                 completion: ((CreateLoyaltyRewardResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            let createLoyaltyRewardRequest = Serializer.deserialize(CreateLoyaltyRewardRequest.self, [:])!
            
            createLoyaltyRewardRequest.Reward = reward
            createLoyaltyRewardRequest.IdempotencyKey = idempotencyKey
            
            request(to: "loyalty/rewards",
                    method: .post,
                    accessToken: accessToken,
                    request: createLoyaltyRewardRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - searchLoyaltyRewards: Searches for loyalty rewards.
        /// This endpoint accepts a request with no query filters and returns results for all loyalty accounts. If you include a query object, loyalty_account_id is required and status is optional.
        /// If you know a reward ID, use the RetrieveLoyaltyReward endpoint.
        /// Search results are sorted by updated_at in descending order.
        /// Permissions: LOYALTY_READ
        /// https://developer.squareup.com/reference/square/loyalty-api/search-loyalty-rewards
        func searchLoyaltyRewards(query: SearchLoyaltyRewardsRequestLoyaltyRewardQuery?,
                                  limit: Int?,
                                  cursor: String?,
                                  accessToken: String,
                                  completion: ((SearchLoyaltyRewardsResponse) -> Void)? = nil,
                                  failed: ((Error) -> Void)? = nil) {
            
            let searchLoyaltyRewardsRequest = Serializer.deserialize(SearchLoyaltyRewardsRequest.self, [:])!
            
            searchLoyaltyRewardsRequest.Query = query
            searchLoyaltyRewardsRequest.Limit = limit
            searchLoyaltyRewardsRequest.Cursor = cursor
            
            request(to: "loyalty/rewards/search",
                    method: .post,
                    accessToken: accessToken,
                    request: searchLoyaltyRewardsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteLoyaltyReward: Deletes a loyalty reward by doing the following:
        /// Returns the loyalty points back to the loyalty account.
        /// If an order ID was specified when the reward was created (see CreateLoyaltyReward), it updates the order by removing the reward and related discounts.
        /// You cannot delete a reward that has reached the terminal state (REDEEMED).
        /// Permissions: LOYALTY_WRITE
        /// https://developer.squareup.com/reference/square/loyalty-api/delete-loyalty-reward
        func deleteLoyaltyReward(rewardId: String,
                                 accessToken: String,
                                 completion: ((SquareupResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            request(to: "loyalty/rewards/\(rewardId)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveLoyaltyReward: Retrieves a loyalty reward.
        /// Permissions: LOYALTY_READ
        /// https://developer.squareup.com/reference/square/loyalty-api/retrieve-loyalty-reward
        func retrieveLoyaltyReward(rewardId: String,
                                   accessToken: String,
                                   completion: ((RetrieveLoyaltyRewardResponse) -> Void)? = nil,
                                   failed: ((Error) -> Void)? = nil) {
            
            request(to: "loyalty/rewards/\(rewardId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - redeemLoyaltyReward: Redeems a loyalty reward.
        /// The endpoint sets the reward to the REDEEMED terminal state.
        /// If you are using your own order processing system (not using the Orders API), you call this endpoint after the buyer paid for the purchase.
        /// After the reward reaches the terminal state, it cannot be deleted. In other words, points used for the reward cannot be returned to the account.
        /// Permissions: LOYALTY_WRITE
        /// https://developer.squareup.com/reference/square/loyalty-api/redeem-loyalty-reward
        func redeemLoyaltyReward(rewardId: String,
                                 idempotencyKey: String,
                                 locationId: String,
                                 accessToken: String,
                                 completion: ((RedeemLoyaltyRewardResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            let redeemLoyaltyRewardRequest = Serializer.deserialize(RedeemLoyaltyRewardRequest.self, [:])!
            
            redeemLoyaltyRewardRequest.IdempotencyKey = idempotencyKey
            redeemLoyaltyRewardRequest.LocationId = locationId
            
            request(to: "loyalty/rewards/\(rewardId)/redeem",
                    method: .post,
                    accessToken: accessToken,
                    request: redeemLoyaltyRewardRequest,
                    completion: completion,
                    failed: failed)
        }
    }
}
