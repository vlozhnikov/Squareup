//
//  GiftCard.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation

/// - GiftCard: Represents a Square gift card.
/// https://developer.squareup.com/reference/square/objects/GiftCard
open class GiftCard: Codable {
    
    /// - Id: Read only The Square-assigned ID of the gift card.
    public var Id: String?
    /// - type: The gift card type.
    public var type: GiftCardType?
    /// - GanSource: The source that generated the gift card account number (GAN). The default value is SQUARE
    public var GanSource: GiftCardGANSource?
    /// - State: Read only The current gift card state.
    public var State: GiftCardStatus?
    /// - BalanceMoney: Read only The current gift card balance. This balance is always greater than or equal to zero.
    public var BalanceMoney: Money?
    /// - Gan: The gift card account number (GAN). Buyers can use the GAN to make purchases or check the gift card balance.
    public var Gan: String?
    /// - CreatedAt: Read only The timestamp when the gift card was created, in RFC 3339 format. In the case of a digital gift card, it is the time when you create a card (using the Square Point of Sale application, Seller Dashboard, or Gift Cards API).
    /// In the case of a plastic gift card, it is the time when Square associates the card with the seller at the time of activation.
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - CustomerIds: Read only The IDs of the customer profiles to whom this gift card is linked.
    public var CustomerIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case type = "type"
        case GanSource = "gan_source"
        case State = "state"
        case BalanceMoney = "balance_money"
        case Gan = "gan"
        case CreatedAt = "created_at"
        case CustomerIds = "customer_ids"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.type = try container.decodeIfPresent(GiftCardType.self, forKey: .type)
//        self.GanSource = try container.decodeIfPresent(GiftCardGANSource.self, forKey: .GanSource)
//        self.State = try container.decodeIfPresent(GiftCardStatus.self, forKey: .State)
//        self.BalanceMoney = try container.decodeIfPresent(Money.self, forKey: .BalanceMoney)
//        self.Gan = try container.decodeIfPresent(String.self, forKey: .Gan)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        self.CustomerIds = try container.decodeIfPresent([String].self, forKey: .CustomerIds)
//    }
}
