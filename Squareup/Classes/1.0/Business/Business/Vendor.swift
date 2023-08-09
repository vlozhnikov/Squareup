//
//  Vendor.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.07.23.
//

import Foundation

/// - Vendor: Represents a supplier to a seller.
/// https://developer.squareup.com/reference/square/objects/Vendor
open class Vendor: Codable {
    
    /// - Id: A unique Square-generated ID for the Vendor. This field is required when attempting to update a Vendor.
    /// Max Length 100
    public var Id: String?
    /// - CreatedAt: Read only An RFC 3339-formatted timestamp that indicates when the Vendor was created.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// Max Length 34
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - UpdatedAt: Read only An RFC 3339-formatted timestamp that indicates when the Vendor was last updated.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// Max Length 34
    @FormattedDate<RFC3339_Strategy> public var UpdatedAt: Date?
    /// - Name: The name of the Vendor. This field is required when attempting to create or update a Vendor.
    /// Max Length 100
    public var Name: String?
    /// - address: The address of the Vendor.
    public var address: Address?
    /// - Contacts: The contacts of the Vendor.
    public var Contacts: [VendorContact]?
    /// - AccountNumber: The account number of the Vendor.
    /// Max Length 100
    public var AccountNumber: String?
    /// - Note: A note detailing information about the Vendor.
    /// Max Length 4096
    public var Note: String?
    /// - Version: The version of the Vendor.
    public var Version: Int?
    /// - Status: The status of the Vendor.
    public var Status: VendorStatus?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case Name = "name"
        case address = "address"
        case Contacts = "contacts"
        case AccountNumber = "account_number"
        case Note = "note"
        case Version = "version"
        case Status = "status"
    }
}
