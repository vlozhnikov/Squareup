//
//  ListPaymentLinksResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

open class ListPaymentLinksResponse: SquareupResponse {
    
    /// - PaymentLinks: The list of payment links.
    public var PaymentLinks: [PaymentLink]?
    /// - Cursor: When a response is truncated, it includes a cursor that you can use in a subsequent request to retrieve the next set of gift cards. If a cursor is not present, this is the final response. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case PaymentLinks = "payment_links"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.PaymentLinks = try container.decodeIfPresent([PaymentLink].self, forKey: .PaymentLinks)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
