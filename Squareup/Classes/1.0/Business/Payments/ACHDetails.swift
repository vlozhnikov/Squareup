//
//  ACHDetails.swift
//  Squareup
//
//  Created by user on 13.06.23.
//

import Foundation

/// - ACHDetails: ACH-specific details about BANK_ACCOUNT type payments with the transfer_type of ACH.
/// https://developer.squareup.com/reference/square/objects/ACHDetails
open class ACHDetails: Codable {
    
    /// - RoutingNumber: The routing number for the bank account.
    /// Max Length 50
    var RoutingNumber: String?
    /// - AccountNumberSuffix: The last few digits of the bank account number.
    /// Min Length 1
    /// Max Length 4
    var AccountNumberSuffix: String?
    /// - AccountType: The type of the bank account performing the transfer. The account type can be CHECKING, SAVINGS, or UNKNOWN.
    /// Max Length 50
    var AccountType: ACHDetailsAccountType?
    /// - Errors: Information about errors encountered during the request.
    var Errors: [SquareErrorResponse]?
    
    enum CodingKeys: String, CodingKey {
        case RoutingNumber = "routing_number"
        case AccountNumberSuffix = "account_number_suffix"
        case AccountType = "account_type"
        case Errors = "errors"
    }
}
