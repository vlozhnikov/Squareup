//
//  GetBankAccountByV1IdResponse.swift
//  Squareup
//
//  Created by user on 19.06.23.
//

import Foundation

open class GetBankAccountByV1IdResponse: SquareupResponse {
    
    /// - BankAccount: The requested BankAccount object.
    var BankAccount: BankAccount?
    
    enum CodingKeys: String, CodingKey {
        case BankAccount = "bank_account"
    }
}
