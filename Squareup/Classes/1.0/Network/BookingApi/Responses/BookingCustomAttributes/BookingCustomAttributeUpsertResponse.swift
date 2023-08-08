//
//  BookingCustomAttributeUpsertResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - BookingCustomAttributeUpsertResponse: Represents a response for an individual upsert request in a BulkUpsertBookingCustomAttributes operation.
/// https://developer.squareup.com/reference/square/objects/BookingCustomAttributeUpsertResponse
open class BookingCustomAttributeUpsertResponse: SquareupResponse {
    
    /// - BookingId: The ID of the booking associated with the custom attribute.
    public var BookingId: String?
    /// - customAttribute: The new or updated custom attribute.
    public var customAttribute: CustomAttribute?
    
    enum CodingKeys: String, CodingKey {
        case BookingId = "booking_id"
        case customAttribute = "custom_attribute"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.BookingId = try container.decodeIfPresent(String.self, forKey: .BookingId)
        self.customAttribute = try container.decodeIfPresent(CustomAttribute.self, forKey: .customAttribute)
    }
}
