//
//  CreatePaymentLinkResponse.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

open class CreatePaymentLinkResponse: SquareupResponse {
    
    /// - paymentLink: The created payment link.
    var paymentLink: PaymentLink?
    /// - RelatedResources: The list of related objects.
    var RelatedResources: PaymentLinkRelatedResources?
    
    enum CodingKeys: String, CodingKey {
        case paymentLink = "payment_link"
        case RelatedResources = "related_resources"
    }
}
