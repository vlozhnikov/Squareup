//
//  CreatePaymentLinkRequest.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

internal class CreatePaymentLinkRequest: Codable {
    
    /// - IdempotencyKey: A unique string that identifies this CreatePaymentLinkRequest request. If you do not provide a unique string (or provide an empty string as the value), the endpoint treats each request as independent.
    /// For more information, see Idempotency.
    /// Max Length 192
    var IdempotencyKey: String?
    /// - Description: A description of the payment link. You provide this optional description that is useful in your application context. It is not used anywhere.
    /// Max Length 4096
    var Description: String?
    /// - quickPay: Describes an ad hoc item and price for which to generate a quick pay checkout link. For more information, see Quick Pay Checkout.
    var quickPay: QuickPay?
    /// - order: Describes the Order for which to create a checkout link. For more information, see Square Order Checkout.
    var order: Order?
    /// - checkoutOptions: Describes optional fields to add to the resulting checkout page. For more information, see Optional Checkout Configurations.
    var checkoutOptions: CheckoutOptions?
    /// - prePopulatedData: Describes fields to prepopulate in the resulting checkout page. For more information, see Prepopulate the shipping address.
    var prePopulatedData: PrePopulatedData?
    /// - PaymentNote: A note for the payment. After processing the payment, Square adds this note to the resulting Payment.
    /// Max Length 500
    var PaymentNote: String?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case Description = "description"
        case quickPay = "quick_pay"
        case order = "order"
        case checkoutOptions = "checkout_options"
        case prePopulatedData = "pre_populated_data"
        case PaymentNote = "payment_note"
    }
}
