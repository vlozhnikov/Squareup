//
//  RetrieveGiftCardFromGANRequest.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation

open class RetrieveGiftCardFromGANRequest: Codable {
    
    /// - Gan: The gift card account number (GAN) of the gift card to retrieve. The maximum length of a GAN is 255 digits to account for third-party GANs that have been imported. Square-issued gift cards have 16-digit GANs.
    /// Min Length 1
    /// Max Length 255
    public var Gan: String?
    
    enum CodingKeys: String, CodingKey {
        case Gan = "gan"
    }
}
