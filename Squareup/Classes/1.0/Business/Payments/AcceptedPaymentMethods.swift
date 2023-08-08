//
//  AcceptedPaymentMethods.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

/// - AcceptedPaymentMethods: 
/// https://developer.squareup.com/reference/square/objects/AcceptedPaymentMethods
open class AcceptedPaymentMethods: Codable {
    
    /// - ApplePay: Whether Apple Pay is accepted at checkout.
    public var ApplePay: Bool?
    /// - GooglePay: Whether Google Pay is accepted at checkout.
    public var GooglePay: Bool?
    /// - CashAppPay: Whether Cash App Pay is accepted at checkout.
    public var CashAppPay: Bool?
    /// - AfterpayClearpay: Whether Afterpay/Clearpay is accepted at checkout.
    public var AfterpayClearpay: Bool?
    
    enum CodingKeys: String, CodingKey {
        case ApplePay = "apple_pay"
        case GooglePay = "google_pay"
        case CashAppPay = "cash_app_pay"
        case AfterpayClearpay = "afterpay_clearpay"
    }
}
