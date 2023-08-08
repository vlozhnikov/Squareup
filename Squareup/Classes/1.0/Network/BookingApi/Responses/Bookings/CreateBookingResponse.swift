//
//  CreateBookingResponse.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

open class CreateBookingResponse: SquareupResponse {
    
    var booking: Booking?
    
    enum CodingKeys: String, CodingKey {
        case booking = "booking"
    }
}
