//
//  CreatePaymentLinkResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

open class CreatePaymentLinkResponse: SquareupResponse {
    
    /// - paymentLink: The created payment link.
    public var paymentLink: PaymentLink?
    /// - RelatedResources: The list of related objects.
    public var RelatedResources: PaymentLinkRelatedResources?
    
    enum CodingKeys: String, CodingKey {
        case paymentLink = "payment_link"
        case RelatedResources = "related_resources"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.paymentLink = try container.decodeIfPresent(PaymentLink.self, forKey: .paymentLink)
        self.RelatedResources = try container.decodeIfPresent(PaymentLinkRelatedResources.self, forKey: .RelatedResources)
    }
}
