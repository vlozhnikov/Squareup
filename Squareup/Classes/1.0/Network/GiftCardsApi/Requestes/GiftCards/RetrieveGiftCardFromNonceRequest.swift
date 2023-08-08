//
//  RetrieveGiftCardFromNonceRequest.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation

internal class RetrieveGiftCardFromNonceRequest: Codable {
    
    /// - Nonce:The payment token of the gift card to retrieve. Payment tokens are generated by the Web Payments SDK or In-App Payments SDK.
    /// Min Length 1
    var Nonce: String?
    
    enum CodingKeys: String, CodingKey {
        case Nonce = "nonce"
    }
}