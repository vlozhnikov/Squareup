//
//  Location.swift
//  Business Calendar
//
//  Created by user on 30.03.23.
//

import Foundation

// - Location:Represents one of a business' locations.
/// https://developer.squareup.com/reference/square/objects/Location
open class Location: Codable {
    
    /// Read only A short generated string of letters and numbers that uniquely identifies this location instance. Max Length 32.
    public var Id: String?
    /// The name of the location. This information appears in the Seller Dashboard as the nickname. A location name must be unique within a seller account. Max Length 255.
    public var Name: String?
    /// The physical address of the location.
    public var address: Address?
    /// The IANA time zone identifier for the time zone of the location. For example, America/Los_Angeles.  Max Length 30.
    public var Timezone: String?
    /// Read only The Square features that are enabled for the location.
    public var Capabilities: [LocationCapability]?
    /// The status of the location.
    public var Status: LocationStatus?
    /// Read only The time when the location was created, in RFC 3339 format.  Min Length 20. Max Length 25
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// Read only The ID of the merchant that owns the location. Max Length 32.
    public var MerchantId: String?
    /// Read only The country of the location, in the two-letter format of ISO 3166. For example, US or JP.
    public var country: Country?
    /// The language associated with the location, in BCP 47 format. Min Length 2. Max Length 5.
    public var LanguageCode: String?
    /// Read only The currency used for all transactions at this location, in ISO 4217 format. For example, the currency code for US dollars is USD.
    public var currency: Currency?
    /// The phone number of the location. For example, +1 855-700-6000. Max Length 17.
    public var PhoneNumber: String?
    /// The name of the location's overall business. This name is present on receipts and other customer-facing branding. Max Length 255./
    public var BusinessName: String?
    /// The type of the location.
    public var type: LocationType?
    /// The website URL of the location. For example, https://squareup.com. Max Length 255.
    public var WebsiteUrl: String?
    /// The hours of operation for the location.
    public var businessHours: BusinessHours?
    /// The email address of the location. This can be unique to the location and is not always the email address for the business owner or administrator. Max Length 255.
    public var BusinessEmail: String?
    /// The description of the location. For example, Main Street location. Max Length 1024.
    public var Description: String?
    /// The Twitter username of the location without the '@' symbol. For example, Square. Min Length 1. Max Length 15.
    public var TwitterUsername: String?
    /// The Instagram username of the location without the '@' symbol. For example, square. Min Length 1. Max Length 30.
    public var InstagrammUsername: String?
    /// The Facebook profile URL of the location. The URL should begin with 'facebook.com/'. For example, https://www.facebook.com/square. Max Length 255.
    public var FacebookUrl: String?
    /// The physical coordinates (latitude and longitude) of the location.
    public var coordinates: Coordinates?
    /// Read only The URL of the logo image for the location. When configured in the Seller Dashboard (Receipts section), the logo appears on transactions (such as receipts and invoices) that Square generates on behalf of the seller. This image should have a roughly square (1:1) aspect ratio and should be at least 200x200 pixels. Max Length 255.
    public var LogoUrl: String?
    /// Read only The URL of the Point of Sale background image for the location. Max Length 255.
    public var PosBackgroundUrl: String?
    /// A four-digit number that describes the kind of goods or services sold at the location. The merchant category code (MCC) of the location as standardized by ISO 18245. For example, 5045, for a location that sells computer goods and software. Min Length 4. Max Length 4.
    public var MCC: String?
    /// Read only The URL of a full-format logo image for the location. When configured in the Seller Dashboard (Receipts section), the logo appears on transactions (such as receipts and invoices) that Square generates on behalf of the seller. This image can be wider than it is tall and should be at least 1280x648 pixels.
    public var FullFormatLogoUrl: String?
    /// The tax IDs for this location.
    public var taxIds: TaxIds?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Name = "name"
        case address = "address"
        case Timezone = "timezone"
        case Capabilities = "capabilities"
        case Status = "status"
        case CreatedAt = "created_at"
        case MerchantId = "merchant_id"
        case country = "country"
        case LanguageCode = "language_code"
        case currency = "currency"
        case PhoneNumber = "phone_number"
        case BusinessName = "business_name"
        case type = "type"
        case WebsiteUrl = "website_url"
        case businessHours = "business_hours"
        case BusinessEmail = "business_email"
        case Description = "description"
        case TwitterUsername = "twitter_username"
        case InstagrammUsername = "instagram_username"
        case FacebookUrl = "facebook_url"
        case coordinates = "coordinates"
        case LogoUrl = "logo_url"
        case PosBackgroundUrl = "pos_background_url"
        case MCC = "mcc"
        case FullFormatLogoUrl = "full_format_logo_url"
        case taxIds = "tax_ids"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.Name = try container.decodeIfPresent(String.self, forKey: .Name)
//        self.address = try container.decodeIfPresent(Address.self, forKey: .address)
//        self.Timezone = try container.decodeIfPresent(String.self, forKey: .Timezone)
//        self.Capabilities = try container.decodeIfPresent([LocationCapability].self, forKey: .Capabilities)
//        self.Status = try container.decodeIfPresent(LocationStatus.self, forKey: .Status)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        self.MerchantId = try container.decodeIfPresent(String.self, forKey: .MerchantId)
//        self.country = try container.decodeIfPresent(Country.self, forKey: .country)
//        self.LanguageCode = try container.decodeIfPresent(String.self, forKey: .LanguageCode)
//        self.currency = try container.decodeIfPresent(Currency.self, forKey: .currency)
//        self.PhoneNumber = try container.decodeIfPresent(String.self, forKey: .PhoneNumber)
//        self.BusinessName = try container.decodeIfPresent(String.self, forKey: .BusinessName)
//        self.type = try container.decodeIfPresent(LocationType.self, forKey: .type)
//        self.WebsiteUrl = try container.decodeIfPresent(String.self, forKey: .WebsiteUrl)
//        self.businessHours = try container.decodeIfPresent(BusinessHours.self, forKey: .businessHours)
//        self.BusinessEmail = try container.decodeIfPresent(String.self, forKey: .BusinessEmail)
//        self.Description = try container.decodeIfPresent(String.self, forKey: .Description)
//        self.TwitterUsername = try container.decodeIfPresent(String.self, forKey: .TwitterUsername)
//        self.InstagrammUsername = try container.decodeIfPresent(String.self, forKey: .InstagrammUsername)
//        self.FacebookUrl = try container.decodeIfPresent(String.self, forKey: .FacebookUrl)
//        self.coordinates = try container.decodeIfPresent(Coordinates.self, forKey: .coordinates)
//        self.LogoUrl = try container.decodeIfPresent(String.self, forKey: .LogoUrl)
//        self.PosBackgroundUrl = try container.decodeIfPresent(String.self, forKey: .PosBackgroundUrl)
//        self.MCC = try container.decodeIfPresent(String.self, forKey: .MCC)
//        self.FullFormatLogoUrl = try container.decodeIfPresent(String.self, forKey: .FullFormatLogoUrl)
//        self.taxIds = try container.decodeIfPresent(TaxIds.self, forKey: .taxIds)
//    }
}
