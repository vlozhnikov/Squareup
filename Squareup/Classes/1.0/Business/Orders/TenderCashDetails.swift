//
//  TenderCashDetails.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

/// - TenderCashDetails: Represents the details of a tender with type CASH.
/// https://developer.squareup.com/reference/square/objects/TenderCashDetails
open class TenderCashDetails: Codable {
    
    /// - BuyerTenderedMoney: The total amount of cash provided by the buyer, before change is given.
    public var BuyerTenderedMoney: Money?
    /// - ChangeBackMoney: The amount of change returned to the buyer.
    public var ChangeBackMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case BuyerTenderedMoney = "buyer_tendered_money"
        case ChangeBackMoney = "change_back_money"
    }
}
