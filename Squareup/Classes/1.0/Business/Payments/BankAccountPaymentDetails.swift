//
//  BankAccountPaymentDetails.swift
//  Squareup
//
//  Created by user on 13.06.23.
//

import Foundation

/// - BankAccountPaymentDetails: Additional details about BANK_ACCOUNT type payments.
/// https://developer.squareup.com/reference/square/objects/BankAccountPaymentDetails
open class BankAccountPaymentDetails: Codable {
    
    /// - BankName: The name of the bank associated with the bank account.
    /// Max Length 100
    var BankName: String?
    /// - TransferType: The type of the bank transfer. The type can be ACH or UNKNOWN.
    /// Max Length 50
    var TransferType: BankAccountPaymentDetailsTransferType?
    /// - AccountOwnershipType: The ownership type of the bank account performing the transfer. The type can be INDIVIDUAL, COMPANY, or ACCOUNT_TYPE_UNKNOWN.
    /// Max Length 50
    var AccountOwnershipType: BankAccountPaymentDetailsAccountOwnershipType?
    /// - Fingerprint: Uniquely identifies the bank account for this seller and can be used to determine if payments are from the same bank account.
    /// Max Length 255
    var Fingerprint: String?
    /// - country: The two-letter ISO code representing the country the bank account is located in.
    /// Min Length 2
    /// Max Length 2
    var country: Country?
    /// - StatementDescription: The statement description as sent to the bank.
    /// Max Length 1000
    var StatementDescription: String?
    /// - AchDetails: ACH-specific information about the transfer. The information is only populated if the transfer_type is ACH.
    var AchDetails: ACHDetails?
    
    enum CodingKeys: String, CodingKey {
        case BankName = "bank_name"
        case TransferType = "transfer_type"
        case AccountOwnershipType = "account_ownership_type"
        case Fingerprint = "fingerprint"
        case country = "country"
        case StatementDescription = "statement_description"
        case AchDetails = "ach_details"
    }
}
