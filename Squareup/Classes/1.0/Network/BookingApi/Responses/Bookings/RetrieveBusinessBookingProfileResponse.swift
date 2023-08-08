//
//  RetrieveBusinessBookingProfileResponse.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

open class RetrieveBusinessBookingProfileResponse: SquareupResponse {
    
    ///- BusinessBookingProfile: The seller's booking profile.
    var businessBookingProfile: BusinessBookingProfile?
    
    enum CodingKeys: String, CodingKey {
        case businessBookingProfile = "business_booking_profile"
    }
}
