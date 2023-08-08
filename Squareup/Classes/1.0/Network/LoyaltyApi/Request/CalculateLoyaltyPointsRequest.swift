//
//  CalculateLoyaltyPointsRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

internal class CalculateLoyaltyPointsRequest: Codable {
    
    /// - OrderId: The order ID for which to calculate the points. Specify this field if your application uses the Orders API to process orders. Otherwise, specify the transaction_amount_money.
    var OrderId: String?
    /// - TransactionAmountMoney: The purchase amount for which to calculate the points. Specify this field if your application does not use the Orders API to process orders. Otherwise, specify the order_id.
    var TransactionAmountMoney: Money?
    /// - LoyaltyAccountId: The ID of the target loyalty account. Optionally specify this field if your application uses the Orders API to process orders.
    /// If specified, the promotion_points field in the response shows the number of points the buyer would earn from the purchase. In this case, Square uses the account ID to determine whether the promotion's trigger_limit (the maximum number of times that a buyer can trigger the promotion) has been reached. If not specified, the promotion_points field shows the number of points the purchase qualifies for regardless of the trigger limit.
    /// Min Length 1
    /// Max Length 36
    var LoyaltyAccountId: String?
    
    enum CodingKeys: String, CodingKey {
        case OrderId = "order_id"
        case TransactionAmountMoney = "transaction_amount_money"
        case LoyaltyAccountId = "loyalty_account_id"
    }
}
