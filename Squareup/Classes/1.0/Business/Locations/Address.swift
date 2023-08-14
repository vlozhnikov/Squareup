//
//  Address.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 30.03.23.
//

import Foundation

/// - Address: Represents a postal address in a country.
/// For more information, see Working with Addresses.
/// https://developer.squareup.com/reference/square/objects/Location
open class Address: Codable {

    /// - AddressLine1: The first line of the address.
    /// Fields that start with address_line provide the address's most specific details, like street number, street name, and building name. They do not provide less specific details like city, state/province, or country (these details are provided in other fields).
    public var AddressLine1: String?
    /// - AddressLine2: The second line of the address, if any.
    public var AddressLine2: String?
    /// - AddressLine3: The third line of the address, if any.
    public var AddressLine3: String?
    /// - Locality: The city or town of the address. For a full list of field meanings by country, see Working with Addresses.
    public var Locality: String?
    /// - Sublocality: A civil region within the address's locality, if any.
    public var Sublocality: String?
    /// - Sublocality2: A civil region within the address's sublocality, if any.
    public var Sublocality2: String?
    /// - Sublocality3: A civil region within the address's sublocality_2, if any.
    public var Sublocality3: String?
    /// - AdministrativeDistrictLevel1: A civil entity within the address's country. In the US, this is the state. For a full list of field meanings by country, see Working with Addresses.
    public var AdministrativeDistrictLevel1: String?
    /// - AdministrativeDistrictLevel2: A civil entity within the address's administrative_district_level_1. In the US, this is the county.
    public var AdministrativeDistrictLevel2: String?
    /// - AdministrativeDistrictLevel3: A civil entity within the address's administrative_district_level_2, if any.
    public var AdministrativeDistrictLevel3: String?
    /// - PostalCode: The address's postal code. For a full list of field meanings by country, see Working with Addresses.
    public var PostalCode: String?
    /// - country: The address's country, in the two-letter format of ISO 3166. For example, US or FR.
    public var country: Country?
    /// - FirstName: Optional first name when it's representing recipient.
    public var FirstName: String?
    /// - LastName: Optional last name when it's representing recipient.
    public var LastName: String?
    
    enum CodingKeys: String, CodingKey {
        case AddressLine1 = "address_line_1"
        case AddressLine2 = "address_line_2"
        case AddressLine3 = "address_line_3"
        case Locality = "locality"
        case Sublocality = "sublocality"
        case Sublocality2 = "sublocality_2"
        case Sublocality3 = "sublocality_3"
        case AdministrativeDistrictLevel1 = "administrative_district_level_1"
        case AdministrativeDistrictLevel2 = "administrative_district_level_2"
        case AdministrativeDistrictLevel3 = "administrative_district_level_3"
        case PostalCode = "postal_code"
        case country = "country"
        case FirstName = "first_name"
        case LastName = "last_name"
    }
    
    public func initCountry(with: String?) {
        if let first = Country.allNames.first(where: { $0.value == with }) {
            self.country = first.key
            return
        }
        
        self.country = .Unknown
    }
}
