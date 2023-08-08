//
//  LoyaltyAccount.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation

/// - LoyaltyAccount: Describes a loyalty account in a loyalty program.
/// For more information, see Create and Retrieve Loyalty Accounts.
/// https://developer.squareup.com/reference/square/objects/LoyaltyAccount
open class LoyaltyAccount: Codable {
    
    /// - Id: Read only The Square-assigned ID of the loyalty account.
    /// Max Length 36
    public var Id: String?
    /// - ProgramId: The Square-assigned ID of the loyalty program to which the account belongs.
    /// Min Length 1
    /// Max Length 36
    public var ProgramId: String?
    /// - Balance: Read only The available point balance in the loyalty account. If points are scheduled to expire, they are listed in the expiring_point_deadlines field.
    /// Your application should be able to handle loyalty accounts that have a negative point balance (balance is less than 0). This might occur if a seller makes a manual adjustment or as a result of a refund or exchange.
    public var Balance: Int?
    /// - LifetimePoints: Read only The total points accrued during the lifetime of the account.
    public var LifetimePoints: Int?
    /// - CustomerId: The Square-assigned ID of the customer that is associated with the account.
    public var CustomerId: String?
    /// - EnrolledAt: The timestamp when the buyer joined the loyalty program, in RFC 3339 format. This field is used to display the Enrolled On or Member Since date in first-party Square products.
    /// If this field is not set in a CreateLoyaltyAccount request, Square populates it after the buyer's first action on their account (when AccumulateLoyaltyPoints or CreateLoyaltyReward is called). In first-party flows, Square populates the field when the buyer agrees to the terms of service in Square Point of Sale.
    /// This field is typically specified in a CreateLoyaltyAccount request when creating a loyalty account for a buyer who already interacted with their account. For example, you would set this field when migrating accounts from an external system. The timestamp in the request can represent a current or previous date and time, but it cannot be set for the future.
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var EnrolledAt: Date?
    @FormattedDate<RFC3339_Strategy> public var EnrolledAt: Date?
    /// - CreatedAt: Read only The timestamp when the loyalty account was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - UpdatedAt: Read only The timestamp when the loyalty account was last updated, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var UpdatedAt: Date?
    /// - Mapping: The mapping that associates the loyalty account with a buyer. Currently, a loyalty account can only be mapped to a buyer by phone number.
    /// To create a loyalty account, you must specify the mapping field, with the buyer's phone number in the phone_number field.
    public var Mapping: LoyaltyAccountMapping?
    /// - ExpiringPointDeadlines: The schedule for when points expire in the loyalty account balance. This field is present only if the account has points that are scheduled to expire.
    /// The total number of points in this field equals the number of points in the balance field.
    public var ExpiringPointDeadlines: [LoyaltyAccountExpiringPointDeadline]?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case ProgramId = "program_id"
        case Balance = "balance"
        case LifetimePoints = "lifetime_points"
        case CustomerId = "customer_id"
        case EnrolledAt = "enrolled_at"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case Mapping = "mapping"
        case ExpiringPointDeadlines = "expiring_point_deadlines"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.ProgramId = try container.decodeIfPresent(String.self, forKey: .ProgramId)
//        self.Balance = try container.decodeIfPresent(Int.self, forKey: .Balance)
//        self.LifetimePoints = try container.decodeIfPresent(Int.self, forKey: .LifetimePoints)
//        self.CustomerId = try container.decodeIfPresent(String.self, forKey: .CustomerId)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .EnrolledAt), !dateString.isEmpty {
//            self.EnrolledAt = try dateString.decode_RFC3339_Date(container, forKey: .EnrolledAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        self.Mapping = try container.decodeIfPresent(LoyaltyAccountMapping.self, forKey: .Mapping)
//        self.ExpiringPointDeadlines = try container.decodeIfPresent([LoyaltyAccountExpiringPointDeadline].self, forKey: .ExpiringPointDeadlines)
//    }
}
