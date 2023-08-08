//
//  Customer.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

/// - Customer: Represents a Square customer profile in the Customer Directory of a Square seller.
/// https://developer.squareup.com/reference/square/objects/Customer
open class Customer: Codable {
    
    /// - Id: A unique Square-assigned ID for the customer profile.
    /// If you need this ID for an API request, use the ID returned when you created the customer profile or call the SearchCustomers or ListCustomers endpoint.
    var Id: String?
    /// - CreatedAt: Read only An RFC 3339-formatted timestamp that indicates when the inventory adjustment is received.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// Max Length 34
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    /// - UpdatedAt: Read only The timestamp when the customer profile was last updated, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var UpdatedAt: Date?
    /// - Cards: Payment details of the credit, debit, and gift cards stored on file for the customer profile.
    /// DEPRECATED at version 2021-06-16. Replaced by calling ListCards (for credit and debit cards on file) or ListGiftCards (for gift cards on file) and including the customer_id query parameter. For more information, see Migration notes.
    var Cards: [Card]?
    /// - GivenName: The given name (that is, the first name) associated with the customer profile.
    var GivenName: String?
    /// - FamilyName: The family name (that is, the last name) associated with the customer profile.
    var FamilyName: String?
    /// - NickName: A nickname for the customer profile.
    var NickName: String?
    /// - CompanyName: A business name associated with the customer profile.
    var CompanyName: String?
    /// - EmailAddress: The email address associated with the customer profile.
    var EmailAddress: String?
    /// - address: The physical address associated with the customer profile.
    var address: Address?
    /// - PhoneNumber: The phone number associated with the customer profile.
    var PhoneNumber: String?
    /// - Birthday: The birthday associated with the customer profile, in YYYY-MM-DD format. For example, 1998-09-21 represents September 21, 1998, and 0000-09-21 represents September 21 (without a birth year).
//    var Birthday: Date?
    @FormattedDate<YYYYMMDD_Strategy> var Birthday: Date?
    /// - ReferenceId: An optional second ID used to associate the customer profile with an entity in another system.
    var ReferenceId: String?
    /// - Note: A custom note associated with the customer profile.
    var Note: String?
    /// - Preferences: Represents general customer preferences.
    var Preferences: CustomerPreferences?
    /// - CreationSource: The method used to create the customer profile.
    var CreationSource: CustomerCreationSource?
    /// - GroupIds: The IDs of customer groups the customer belongs to.
    var GroupIds: [String]?
    /// - SegmentIds: The IDs of customer segments the customer belongs to.
    var SegmentIds: [String]?
    /// - Version: The Square-assigned version number of the customer profile. The version number is incremented each time an update is committed to the customer profile, except for changes to customer segment membership and cards on file.
    var Version: Int?
    /// - TaxIds: The tax ID associated with the customer profile. This field is present only for customers of sellers in EU countries or the United Kingdom. For more information, see Customer tax IDs.
    var TaxIds: CustomerTaxIds?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case Cards = "cards"
        case GivenName = "given_name"
        case FamilyName = "family_name"
        case NickName = "nickname"
        case CompanyName = "company_name"
        case EmailAddress = "email_address"
        case address = "address"
        case PhoneNumber = "phone_number"
        case Birthday = "birthday"
        case ReferenceId = "reference_id"
        case Note = "note"
        case Preferences = "preferences"
        case CreationSource = "creation_source"
        case GroupIds = "group_ids"
        case SegmentIds = "segment_ids"
        case Version = "version"
        case TaxIds = "tax_ids"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        self.Cards = try container.decodeIfPresent([Card].self, forKey: .Cards)
//        self.GivenName = try container.decodeIfPresent(String.self, forKey: .GivenName)
//        self.FamilyName = try container.decodeIfPresent(String.self, forKey: .FamilyName)
//        self.NickName = try container.decodeIfPresent(String.self, forKey: .NickName)
//        self.CompanyName = try container.decodeIfPresent(String.self, forKey: .CompanyName)
//        self.EmailAddress = try container.decodeIfPresent(String.self, forKey: .EmailAddress)
//        self.address = try container.decodeIfPresent(Address.self, forKey: .address)
//        self.PhoneNumber = try container.decodeIfPresent(String.self, forKey: .PhoneNumber)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .Birthday), !dateString.isEmpty {
//            self.Birthday = try dateString.decode_YYYYMMDD_Date(container, forKey: .Birthday)
//        }
//        self.ReferenceId = try container.decodeIfPresent(String.self, forKey: .ReferenceId)
//        self.Note = try container.decodeIfPresent(String.self, forKey: .Note)
//        self.Preferences = try container.decodeIfPresent(CustomerPreferences.self, forKey: .Preferences)
//        self.CreationSource = try container.decodeIfPresent(CustomerCreationSource.self, forKey: .CreationSource)
//        self.GroupIds = try container.decodeIfPresent([String].self, forKey: .GroupIds)
//        self.SegmentIds = try container.decodeIfPresent([String].self, forKey: .SegmentIds)
//        self.Version = try container.decodeIfPresent(Int.self, forKey: .Version)
//        self.TaxIds = try container.decodeIfPresent(CustomerTaxIds.self, forKey: .TaxIds)
//    }
}
