//
//  UpdateCustomerRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 8.06.23.
//

import Foundation

open class UpdateCustomerRequest: Codable {
    
    /// - GivenName: The given name (that is, the first name) associated with the customer profile.
    /// The maximum length for this value is 300 characters.
    public var GivenName: String?
    /// - FamilyName: The family name (that is, the last name) associated with the customer profile.
    /// The maximum length for this value is 300 characters.
    public var FamilyName: String?
    /// - CompanyName: A business name associated with the customer profile.
    /// The maximum length for this value is 500 characters.
    public var CompanyName: String?
    /// - Nickname: A nickname for the customer profile.
    /// The maximum length for this value is 100 characters.
    public var Nickname: String?
    /// - EmailAddress: The email address associated with the customer profile.
    /// The maximum length for this value is 254 characters.
    public var EmailAddress: String?
    /// - address: The physical address associated with the customer profile. For maximum length constraints, see Customer addresses. The first_name and last_name fields are ignored if they are present in the request.
    public var address: Address?
    /// - PhoneNumber: The phone number associated with the customer profile. The phone number must be valid and can contain 9–16 digits, with an optional + prefix and country code. For more information, see Customer phone numbers.
    public var PhoneNumber: String?
    /// - ReferenceId: An optional second ID used to associate the customer profile with an entity in another system.
    /// The maximum length for this value is 100 characters.
    public var ReferenceId: String?
    /// - Note: A custom note associated with the customer profile.
    public var Note: String?
    /// - Birthday: The birthday associated with the customer profile, in YYYY-MM-DD or MM-DD format. For example, specify 1998-09-21 for September 21, 1998, or 09-21 for September 21. Birthdays are returned in YYYY-MM-DD format, where YYYY is the specified birth year or 0000 if a birth year is not specified.
    @FormattedDate<YYYYMMDD_Strategy> public var Birthday: Date?
    /// - Version: The current version of the customer profile.
    /// As a best practice, you should include this field to enable optimistic concurrency control. For more information, see Update a customer profile.
    public var Version: Int?
    /// - TaxIds: The tax ID associated with the customer profile. This field is available only for customers of sellers in EU countries or the United Kingdom. In other countries, this field is ignored when included in a CreateCustomer request. For more information, see Customer tax IDs.
    public var TaxIds: CustomerTaxIds?
    
    enum CodingKeys: String, CodingKey {
        case GivenName = "given_name"
        case FamilyName = "family_name"
        case CompanyName = "company_name"
        case Nickname = "nickname"
        case EmailAddress = "email_address"
        case address = "address"
        case PhoneNumber = "phone_number"
        case ReferenceId = "reference_id"
        case Note = "note"
        case Birthday = "birthday"
        case Version = "version"
        case TaxIds = "tax_ids"
    }
}
