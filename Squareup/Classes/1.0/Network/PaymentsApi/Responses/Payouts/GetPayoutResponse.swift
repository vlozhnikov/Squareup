//
//  GetPayoutResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.07.23.
//

import Foundation

open class GetPayoutResponse: SquareupResponse {
    
    /// - payout: The requested payout.
    public var payout: Payout?
    
    enum CodingKeys: String, CodingKey {
        case payout = "payout"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.payout = try container.decodeIfPresent(Payout.self, forKey: .payout)
    }
}
