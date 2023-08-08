//
//  ListBankAccountsResponse.swift
//  Squareup
//
//  Created by user on 19.06.23.
//

import Foundation

open class ListBankAccountsResponse: SquareupResponse {
    
    /// - BankAccounts: List of BankAccounts associated with this account.
    var BankAccounts: [BankAccount]?
    /// - Cursor: When a response is truncated, it includes a cursor that you can use in a subsequent request to fetch next set of bank accounts. If empty, this is the final response.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case BankAccounts = "bank_accounts"
        case Cursor = "cursor"
    }
}
