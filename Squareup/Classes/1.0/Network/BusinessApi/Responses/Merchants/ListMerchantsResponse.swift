//
//  ListMerchantsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 7.06.23.
//

import Foundation

open class ListMerchantsResponse: SquareupResponse {
    
    /// - Merchant: The requested Merchant entities.
    public var Merchants: [Merchant]?
    /// - Cursor: The cursor generated by the previous response.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Merchants = "merchant"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Merchants = try container.decodeIfPresent([Merchant].self, forKey: .Merchants)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
