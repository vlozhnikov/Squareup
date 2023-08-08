//
//  CashAppDetails.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation

/// - CashAppDetails: Additional details about WALLET type payments with the brand of CASH_APP.
/// https://developer.squareup.com/reference/square/objects/CashAppDetails
open class CashAppDetails: Codable {
    
    /// - BuyerFullName: The name of the Cash App account holder.
    /// Max Length 255
    var BuyerFullName: String?
    /// - BuyerCountryCode: The country of the Cash App account holder, in ISO 3166-1-alpha-2 format.
    /// For possible values, see Country.
    /// Min Length 2
    /// Max Length 2
    var BuyerCountryCode: Country?
    /// - BuyerCashtag: Read only $Cashtag of the Cash App account holder.
    /// Min Length 1
    /// Max Length 21
    var BuyerCashtag: String?
    
    enum CodingKeys: String, CodingKey {
        case BuyerFullName = "buyer_full_name"
        case BuyerCountryCode = "buyer_country_code"
        case BuyerCashtag = "buyer_cashtag"
    }
}
