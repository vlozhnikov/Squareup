//
//  RetrieveLoyaltyAccountResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

open class RetrieveLoyaltyAccountResponse: SquareupResponse {
    
    /// - loyaltyAccount: The loyalty account.
    public var loyaltyAccount: LoyaltyAccount?
    
    enum CodingKeys: String, CodingKey {
        case loyaltyAccount = "loyalty_account"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.loyaltyAccount = try container.decodeIfPresent(LoyaltyAccount.self, forKey: .loyaltyAccount)
    }
}
