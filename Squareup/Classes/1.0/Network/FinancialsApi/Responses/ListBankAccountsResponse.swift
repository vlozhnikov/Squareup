//
//  ListBankAccountsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 19.06.23.
//

import Foundation

open class ListBankAccountsResponse: SquareupResponse {
    
    /// - BankAccounts: List of BankAccounts associated with this account.
    public var BankAccounts: [BankAccount]?
    /// - Cursor: When a response is truncated, it includes a cursor that you can use in a subsequent request to fetch next set of bank accounts. If empty, this is the final response.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case BankAccounts = "bank_accounts"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.BankAccounts = try container.decodeIfPresent([BankAccount].self, forKey: .BankAccounts)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
