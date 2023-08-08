//
//  PaymentLink.swift
//  Squareup
//
//  Created by user on 3.07.23.
//

import Foundation

/// - PaymentLink:
/// https://developer.squareup.com/reference/square/objects/PaymentLink
open class PaymentLink: Codable {
    
    /// - Id: Read only The Square-assigned ID of the payment link.
    var Id: String?
    /// - Version: The Square-assigned version number, which is incremented each time an update is committed to the payment link.
    /// Max 65535
    var Version: Int?
    /// - Description: The optional description of the payment_link object. It is primarily for use by your application and is not used anywhere.
    /// Max Length 4096
    var Description: String?
    /// - OrderId: Read only The ID of the order associated with the payment link.
    /// Max Length 192
    var OrderId: String?
    /// - checkoutOptions: The checkout options configured for the payment link. For more information, see Optional Checkout Configurations.
    var checkoutOptions: CheckoutOptions?
    /// - prePopulatedData: Describes buyer data to prepopulate on the checkout page.
    var prePopulatedData: PrePopulatedData?
    /// - Url: Read only The shortened URL of the payment link.
    /// Max Length 255
    var Url: String?
    /// - LongUrl: Read only The long URL of the payment link.
    /// Max Length 255
    var LongUrl: String?
    /// - CreatedAt: The timestamp when the payment link was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    /// - UpdatedAt: The timestamp when the payment link was last updated, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var UpdatedAt: Date?
    /// - PaymentNote: An optional note. After Square processes the payment, this note is added to the resulting Payment.
    /// Max Length 500
    var PaymentNote: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Version = "version"
        case Description = "description"
        case OrderId = "order_id"
        case checkoutOptions = "checkout_options"
        case prePopulatedData = "pre_populated_data"
        case Url = "url"
        case LongUrl = "long_url"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case PaymentNote = "payment_note"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.Version = try container.decodeIfPresent(Int.self, forKey: .Version)
//        self.Description = try container.decodeIfPresent(String.self, forKey: .Description)
//        self.OrderId = try container.decodeIfPresent(String.self, forKey: .OrderId)
//        self.checkoutOptions = try container.decodeIfPresent(CheckoutOptions.self, forKey: .checkoutOptions)
//        self.prePopulatedData = try container.decodeIfPresent(PrePopulatedData.self, forKey: .prePopulatedData)
//        self.Url = try container.decodeIfPresent(String.self, forKey: .Url)
//        self.LongUrl = try container.decodeIfPresent(String.self, forKey: .LongUrl)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        self.PaymentNote = try container.decodeIfPresent(String.self, forKey: .PaymentNote)
//    }
}
