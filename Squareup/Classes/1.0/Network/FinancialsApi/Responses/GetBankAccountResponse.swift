//
//  GetBankAccountResponse.swift
//  Squareup
//
//  Created by user on 19.06.23.
//

import Foundation

open class GetBankAccountResponse: SquareupResponse {
    
    /// - BankAccount: The requested BankAccount object.
    public var BankAccount: BankAccount?
    
    enum CodingKeys: String, CodingKey {
        case BankAccount = "bank_account"
    }
}
