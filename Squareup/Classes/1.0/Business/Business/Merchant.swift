//
//  Merchant.swift
//  Business Calendar
//
//  Created by user on 27.04.23.
//

import Foundation

/// -Merchant: Represents a business that sells with Square.
/// https://developer.squareup.com/reference/square/objects/Merchant
open class Merchant: Codable {
    
    /// - Id: The Square-issued ID of the merchant.
    var Id: String?
    /// - BusinessName: The name of the merchant's overall business.
    var BusinessName: String?
    /// - country: The country code associated with the merchant, in the two-letter format of ISO 3166. For example, US or JP.
    var country: Country?
    /// - LanguageCode: The code indicating the language preferences of the merchant, in BCP 47 format. For example, en-US or fr-CA.
    var LanguageCode: String?
    /// - currency: The currency associated with the merchant, in ISO 4217 format. For example, the currency code for US dollars is USD.
    var currency: Currency?
    /// - status: The merchant's status.
    var status: MerchantStatus?
    /// - MainLocationId: The ID of the main Location for this merchant.
    var MainLocationId: String?
    /// - CreatedAt: Read only The time when the merchant was created, in RFC 3339 format
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case BusinessName = "business_name"
        case country = "country"
        case LanguageCode = "language_code"
        case currency = "currency"
        case status = "status"
        case MainLocationId = "main_location_id"
        case CreatedAt = "created_at"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.BusinessName = try container.decodeIfPresent(String.self, forKey: .BusinessName)
//        self.country = try container.decodeIfPresent(Country.self, forKey: .country)
//        self.LanguageCode = try container.decodeIfPresent(String.self, forKey: .LanguageCode)
//        self.currency = try container.decodeIfPresent(Currency.self, forKey: .currency)
//        self.status = try container.decodeIfPresent(MerchantStatus.self, forKey: .status)
//        self.MainLocationId = try container.decodeIfPresent(String.self, forKey: .MainLocationId)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//    }
}
