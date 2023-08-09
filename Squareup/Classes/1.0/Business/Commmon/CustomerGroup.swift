//
//  CustomerGroup.swift
//  Business Calendar
//
//  Created by user on 5.05.23.
//

import Foundation

/// - CustomerGroup: Represents a group of customer profiles.
/// Customer groups can be created, be modified, and have their membership defined using the Customers API or within the Customer Directory in the Square Seller Dashboard or Point of Sale.
/// https://developer.squareup.com/reference/square/objects/CustomerGroup
open class CustomerGroup: Codable {
    
    /// - Id: Read only A unique Square-generated ID for the customer group.
    /// Max Length 255
    public var Id: String?
    /// - Name: Required
    /// The name of the customer group.
    public var Name: String?
    /// - CreatedAt: Read only The timestamp when the customer group was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    /// UTC: 2020-01-26T02:25:34Z
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - UpdatedAt: Read only The timestamp when the customer group was last updated, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    /// UTC: 2020-01-26T02:25:34Z
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var UpdatedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Name = "name"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
    }
}
