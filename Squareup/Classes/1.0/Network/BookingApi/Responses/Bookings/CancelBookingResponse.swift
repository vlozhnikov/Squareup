//
//  CancelBookingResponse.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

open class CancelBookingResponse: SquareupResponse {
    
    /// - booking: The booking that was requested.
    var booking: Booking?
    
    enum CodingKeys: String, CodingKey {
        case booking = "booking"
    }
}
