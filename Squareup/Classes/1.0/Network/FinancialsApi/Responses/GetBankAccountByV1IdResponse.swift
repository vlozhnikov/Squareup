//
//  GetBankAccountByV1IdResponse.swift
//  Squareup
//
//  Created by user on 19.06.23.
//

import Foundation

open class GetBankAccountByV1IdResponse: SquareupResponse {
    
    /// - BankAccount: The requested BankAccount object.
    public var bankAccount: BankAccount?
    
    enum CodingKeys: String, CodingKey {
        case bankAccount = "bank_account"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bankAccount = try container.decodeIfPresent(BankAccount.self, forKey: .bankAccount)
    }
}
