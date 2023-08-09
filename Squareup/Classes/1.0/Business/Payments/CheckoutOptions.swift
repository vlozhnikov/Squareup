//
//  CheckoutOptions.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

/// - CheckoutOptions:
/// https://developer.squareup.com/reference/square/objects/CheckoutOptions
open class CheckoutOptions: Codable {
    
    /// - AllowTipping: Indicates whether the payment allows tipping.
    public var AllowTipping: Bool?
    /// - CustomFields: The custom fields requesting information from the buyer.
    public var CustomFields: [CustomField]?
    /// - SubscriptionPlanId: The ID of the subscription plan for the buyer to pay and subscribe. For more information, see Subscription Plan Checkout.
    /// Max Length 255
    public var SubscriptionPlanId: String?
    /// - RedirectUrl: The confirmation page URL to redirect the buyer to after Square processes the payment.
    /// Max Length 2048
    public var RedirectUrl: String?
    /// - MerchantSupportEmail: The email address that buyers can use to contact the seller.
    /// Max Length 256
    public var MerchantSupportEmail: String?
    /// - AskForShippingAddress: Indicates whether to include the address fields in the payment form.
    public var AskForShippingAddress: Bool?
    /// - acceptedPaymentMethods: The methods allowed for buyers during checkout.
    public var acceptedPaymentMethods: AcceptedPaymentMethods?
    /// - AppFeeMoney: The amount of money that the developer is taking as a fee for facilitating the payment on behalf of the seller.
    /// The amount cannot be more than 90% of the total amount of the payment.
    /// The amount must be specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). For more information, see Working with Monetary Amounts.
    /// The fee currency code must match the currency associated with the seller that is accepting the payment. The application must be from a developer account in the same country and using the same currency code as the seller. For more information about the application fee scenario, see Take Payments and Collect Fees.
    /// To set this field, PAYMENTS_WRITE_ADDITIONAL_RECIPIENTS OAuth permission is required. For more information, see Permissions.
    public var AppFeeMoney: Money?
    /// - shippingFee: The fee associated with shipping to be applied to the Order as a service charge.
    public var shippingFee: ShippingFee?
    /// - EnableCoupon: Indicates whether to include the Add coupon section for the buyer to provide a Square marketing coupon in the payment form.
    public var EnableCoupon: Bool?
    /// - EnableLoyalty: Indicates whether to include the REWARDS section for the buyer to opt in to loyalty, redeem rewards in the payment form, or both.
    public var EnableLoyalty: Bool?
    
    enum CodingKeys: String, CodingKey {
        case AllowTipping = "allow_tipping"
        case CustomFields = "custom_fields"
        case SubscriptionPlanId = "subscription_plan_id"
        case RedirectUrl = "redirect_url"
        case MerchantSupportEmail = "merchant_support_email"
        case AskForShippingAddress = "ask_for_shipping_address"
        case acceptedPaymentMethods = "accepted_payment_methods"
        case AppFeeMoney = "app_fee_money"
        case shippingFee = "shipping_fee"
        case EnableCoupon = "enable_coupon"
        case EnableLoyalty = "enable_loyalty"
    }
}
