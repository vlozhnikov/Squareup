//
//  VendorContact.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.07.23.
//

import Foundation

/// - VendorContact: Represents a contact of a Vendor.
/// https://developer.squareup.com/reference/square/objects/VendorContact
open class VendorContact: Codable {
    
    /// - Id: A unique Square-generated ID for the VendorContact. This field is required when attempting to update a VendorContact.
    /// Max Length 100
    public var Id: String?
    /// - Name: The name of the VendorContact. This field is required when attempting to create a Vendor.
    /// Max Length 255
    public var Name: String?
    /// - EmailAddress: The email address of the VendorContact.
    /// Max Length 255
    public var EmailAddress: String?
    /// - PhoneNumber: The phone number of the VendorContact.
    /// Max Length 255
    public var PhoneNumber: String?
    /// - Removed: The state of the VendorContact.
    public var Removed: Bool?
    /// - Ordinal: The ordinal of the VendorContact.
    public var Ordinal: Int?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Name = "name"
        case EmailAddress = "email_address"
        case PhoneNumber = "phone_number"
        case Removed = "removed"
        case Ordinal = "ordinal"
    }
}
