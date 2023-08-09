//
//  CreateBookingRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

internal class CreateBookingRequest: Codable {
    
    var IdempotencyKey: String?
    var booking: Booking?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case booking = "booking"
    }
}
