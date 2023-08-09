//
//  CustomerCustomAttributeFilterValue.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 8.06.23.
//

import Foundation

/// - CustomerCustomAttributeFilterValue: A type-specific filter used in a custom attribute filter to search based on the value of a customer-related custom attribute.
/// https://developer.squareup.com/reference/square/objects/CustomerCustomAttributeFilterValue
open class CustomerCustomAttributeFilterValue: Codable {
    
    /// - Email: A filter for a query based on the value of an Email-type custom attribute. This filter is case-insensitive and can include exact or fuzzy, but not both.
    /// For an exact match, provide the complete email address.\
    ///
    /// For a fuzzy match, provide a query expression containing one or more query tokens to match against the email address. Square removes any punctuation (including periods (.), underscores (_), and the @ symbol) and tokenizes the email addresses on spaces. A match is found if a tokenized email address contains all the tokens in the search query, irrespective of the token order. For example, Steven gmail matches steven.jones@gmail.com and mygmail@stevensbakery.com.
    public var Email: CustomerTextFilter?
    /// - Phone: A filter for a query based on the value of a PhoneNumber-type custom attribute. This filter is case-insensitive and can include exact or fuzzy, but not both.
    /// For an exact match, provide the complete phone number. This is always an E.164-compliant phone number that starts with the + sign followed by the country code and subscriber number. For example, the format for a US phone number is +12061112222.
    ///
    /// For a fuzzy match, provide a query expression containing one or more query tokens to match against the phone number. Square removes any punctuation and tokenizes the expression on spaces. A match is found if a tokenized phone number contains all the tokens in the search query, irrespective of the token order. For example, 415 123 45 is tokenized to 415, 123, and 45, which matches +14151234567 and +12345674158, but does not match +1234156780. Similarly, the expression 415 matches +14151234567, +12345674158, and +1234156780.
    public var Phone: CustomerTextFilter?
    /// - Text: A filter for a query based on the value of a String-type custom attribute. This filter is case-insensitive and can include exact or fuzzy, but not both.
    /// For an exact match, provide the complete string.
    ///
    /// For a fuzzy match, provide a query expression containing one or more query tokens in any order that contain complete words to match against the string. Square tokenizes the expression using a grammar-based tokenizer. For example, the expressions quick brown, brown quick, and quick fox match "The quick brown fox jumps over the lazy dog". However, quick foxes and qui do not match.
    public var Text: CustomerTextFilter?
    /// - Selection:
    /// A filter for a query based on the display name for a Selection-type custom attribute value. This filter is case-sensitive and can contain any, all, or both. The none condition is not supported.
    /// Provide the display name of each item that you want to search for. To find the display names for the selection, use the Customer Custom Attributes API to retrieve the corresponding custom attribute definition and then check the schema.items.names field. For more information, see Search based on selection.
    /// Note that when a Selection-type custom attribute is assigned to a customer profile, the custom attribute value is a list of one or more UUIDs (sourced from the schema.items.enum field) that map to the item names. These UUIDs are unique per seller.
    public var Selection: FilterValue?
    /// - Date: A filter for a query based on the value of a Date-type custom attribute.
    /// Provide a date range for this filter using start_at, end_at, or both. Range boundaries are inclusive. Dates can be specified in YYYY-MM-DD format or as RFC 3339 timestamps.
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    public var Date: TimeRange?
    /// - Number: A filter for a query based on the value of a Number-type custom attribute, which can be an integer or a decimal with up to 5 digits of precision.
    ///
    /// Provide a numerical range for this filter using start_at, end_at, or both. Range boundaries are inclusive. Numbers are specified as decimals or integers. The absolute value of range boundaries must not exceed (2^63-1)/10^5, or 92233720368547.
    public var Number: FloatNumberRange?
    /// - Boolean: A filter for a query based on the value of a Boolean-type custom attribute
    public var Boolean: Bool?
    /// - Address: A filter for a query based on the value of an Address-type custom attribute. The filter can include postal_code, country, or both.
    public var Address: CustomerAddressFilter?
    
    enum CodingKeys: String, CodingKey {
        case Email = "email"
        case Phone = "phone"
        case Text = "text"
        case Selection = "selection"
        case Date = "date"
        case Number = "number"
        case Boolean = "boolean"
        case Address = "address"
    }
}
