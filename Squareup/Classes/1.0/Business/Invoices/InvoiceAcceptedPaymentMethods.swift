//
//  InvoiceAcceptedPaymentMethods.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

/// - InvoiceAcceptedPaymentMethods: The payment methods that customers can use to pay an invoice on the Square-hosted invoice payment page.
/// https://developer.squareup.com/reference/square/objects/InvoiceAcceptedPaymentMethods
open class InvoiceAcceptedPaymentMethods: Codable {
    
    /// - Card: Indicates whether credit card or debit card payments are accepted. The default value is false.
    var Card: Bool?
    /// - SquareGiftCard: Indicates whether Square gift card payments are accepted. The default value is false
    var SquareGiftCard: Bool?
    /// - BankAccount: Indicates whether ACH bank transfer payments are accepted. The default value is false.
    var BankAccount: Bool?
    /// - BuyNowPayLater: Indicates whether Afterpay (also known as Clearpay) payments are accepted. The default value is false.
    ///
    /// This option is allowed only for invoices that have a single payment request of the BALANCE type. This payment method is supported if the seller account accepts Afterpay payments and the seller location is in a country where Afterpay invoice payments are supported. As a best practice, consider enabling an additional payment method when allowing buy_now_pay_later payments. For more information, including detailed requirements and processing limits, see Buy Now Pay Later payments with Afterpay.
    var BuyNowPayLater: Bool?
    
    enum CodingKeys: String, CodingKey {
        case Card = "card"
        case SquareGiftCard = "square_gift_card"
        case BankAccount = "bank_account"
        case BuyNowPayLater = "buy_now_pay_later"
    }
}
