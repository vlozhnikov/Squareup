//
//  BookingCustomAttributeDeleteRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - BookingCustomAttributeDeleteRequest: Represents an individual delete request in a BulkDeleteBookingCustomAttributes request.
/// An individual request contains a booking ID, the custom attribute to delete, and an optional idempotency key.
/// https://developer.squareup.com/reference/square/objects/BookingCustomAttributeDeleteRequest
internal class BookingCustomAttributeDeleteRequest: Codable {
    
    /// - BookingId: The ID of the target booking.
    /// Min Length 1
    var BookingId: String?
    /// - Key: The key of the custom attribute to delete. This key must match the key of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
    /// Min Length 1
    var Key: String?
    
    enum CodingKeys: String, CodingKey {
        case BookingId = "booking_id"
        case Key = "key"
    }
}
