//
//  CancelBookingRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

internal class CancelBookingRequest: Codable {
    /// - IdempotencyKey: A unique key to make this request an idempotent operation.
    /// Max Length 255
    var IdempotencyKey: String?
    /// - BookingVersion: The revision number for the booking used for optimistic concurrency.
    var BookingVersion: Int?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case BookingVersion = "booking_version"
    }
}
