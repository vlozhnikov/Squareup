//
//  BankAccount.swift
//  Squareup
//
//  Created by user on 19.06.23.
//

import Foundation

/// - BankAccount: Represents a bank account.
/// For more information about linking a bank account to a Square account, see Bank Accounts API.
/// https://developer.squareup.com/reference/square/objects/BankAccount
open class BankAccount: Codable {
    
    /// - Id: The unique, Square-issued identifier for the bank account.
    /// Min Length 1
    /// Max Length 30
    var Id: String?
    /// - AccountNumberSuffix: The last few digits of the account number.
    /// Min Length 1
    var AccountNumberSuffix: String?
    /// - country: The ISO 3166 Alpha-2 country code where the bank account is based.
    var country: Country?
    /// - currency: The 3-character ISO 4217 currency code indicating the operating currency of the bank account. For example, the currency code for US dollars is USD.
    var currency: Currency?
    /// - AccountType: The financial purpose of the associated bank account.
    var AccountType: BankAccountType?
    /// - HolderName: Name of the account holder. This name must match the name on the targeted bank account record.
    /// Min Length 1
    var HolderName: String?
    /// - PrimaryBankIdentificationNumber: Primary identifier for the bank. For more information, see Bank Accounts API.
    /// Max Length 40
    var PrimaryBankIdentificationNumber: String?
    /// - SecondaryBankIdentificationNumber: Secondary identifier for the bank. For more information, see Bank Accounts API.
    /// Max Length 40
    var SecondaryBankIdentificationNumber: String?
    /// - DebitMandateReferenceId: Reference identifier that will be displayed to UK bank account owners when collecting direct debit authorization. Only required for UK bank accounts.
    var DebitMandateReferenceId: String?
    /// - ReferenceId: Client-provided identifier for linking the banking account to an entity in a third-party system (for example, a bank account number or a user identifier).
    var ReferenceId: String?
    /// - LocationId: The location to which the bank account belongs.
    var LocationId: String?
    /// - Status: Read-only. The current verification status of this BankAccount object.
    var Status: BankAccountStatus?
    /// - Creditable: Indicates whether it is possible for Square to send money to this bank account.
    var Creditable: Bool?
    /// - Debitable: Indicates whether it is possible for Square to take money from this bank account.
    var Debitable: Bool?
    /// - Fingerprint: A Square-assigned, unique identifier for the bank account based on the account information. The account fingerprint can be used to compare account entries and determine if the they represent the same real-world bank account.
    var Fingerprint: String?
    /// - Version: The current version of the BankAccount.
    var Version: Int?
    /// - BankName: Read only. Name of actual financial institution. For example "Bank of America".
    /// Max Length 100
    var BankName: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case AccountNumberSuffix = "account_number_suffix"
        case country = "country"
        case currency = "currency"
        case AccountType = "account_type"
        case HolderName = "holder_name"
        case PrimaryBankIdentificationNumber = "primary_bank_identification_number"
        case SecondaryBankIdentificationNumber = "secondary_bank_identification_number"
        case DebitMandateReferenceId = "debit_mandate_reference_id"
        case ReferenceId = "reference_id"
        case LocationId = "location_id"
        case Status = "status"
        case Creditable = "creditable"
        case Debitable = "debitable"
        case Fingerprint = "fingerprint"
        case Version = "version"
        case BankName = "bank_name"
    }
}
