//
//  PaymentLinkRelatedResources.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

/// - PaymentLinkRelatedResources:
/// https://developer.squareup.com/reference/square/objects/PaymentLinkRelatedResources
open class PaymentLinkRelatedResources: Codable {
    
    /// - Orders: The order associated with the payment link.
    public var Orders: [Order]?
    /// - SubscriptionPlans: The subscription plan associated with the payment link.
    public var SubscriptionPlans: [CatalogObject]?
    
    enum CodingKeys: String, CodingKey {
        case Orders = "orders"
        case SubscriptionPlans = "subscription_plans"
    }
}
