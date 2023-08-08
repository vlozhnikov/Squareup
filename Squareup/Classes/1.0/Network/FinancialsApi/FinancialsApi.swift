//
//  FinancialsApi.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation
import Alamofire

class FinancialsApi {
    
    public static let bankAccounts = BankAccounts()
    
    fileprivate init() {}
    
    /// - BankAccounts: Get a list of a seller's bank accounts.
    /// The Bank Accounts API allows you to get basic details about a seller's bank account, such as the last few digits of the account number and the routing number. It can be paired with the Payouts API to understand the pattern of deposits and withdrawals from a seller's bank account.
    /// https://developer.squareup.com/reference/square/bank-accounts-api
    open class BankAccounts: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listBankAccounts: Returns a list of BankAccount objects linked to a Square account.
        /// Permissions: BANK_ACCOUNTS_READ
        /// https://developer.squareup.com/reference/square/bank-accounts-api/list-bank-accounts
        func listBankAccounts(cursor: String?,
                              limit: Int?,
                              locationId: String,
                              accessToken: String,
                              completion: ((ListBankAccountsResponse) -> Void)? = nil,
                              failed: ((Error) -> Void)? = nil) {
                
            let listBankAccountsRequest = Serializer.deserialize(ListBankAccountsRequest.self, [:])!
        
            listBankAccountsRequest.Cursor = cursor
            listBankAccountsRequest.Limit = limit
            listBankAccountsRequest.LocationId = locationId
            
            request(to: "bank-accounts",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listBankAccountsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - getBankAccountByV1Id: Returns details of a BankAccount identified by V1 bank account ID.
        /// Permissions: BANK_ACCOUNTS_READ
        /// https://developer.squareup.com/reference/square/bank-accounts-api/get-bank-account-by-v1-id
        func getBankAccountByV1Id(v1BankAccountId: String,
                                  accessToken: String,
                                  completion: ((GetBankAccountByV1IdResponse) -> Void)? = nil,
                                  failed: ((Error) -> Void)? = nil) {
            
            request(to: "bank-accounts/by-v1-id/\(v1BankAccountId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - getBankAccount: Returns details of a BankAccount linked to a Square account.
        /// Permissions: BANK_ACCOUNTS_READ
        /// https://developer.squareup.com/reference/square/bank-accounts-api/get-bank-account
        func getBankAccount(bankAccountId: String,
                            accessToken: String,
                            completion: ((GetBankAccountResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            request(to: "bank-accounts/\(bankAccountId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
    }
}
