//
//  RetrieveBusinessBookingProfileResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

open class RetrieveBusinessBookingProfileResponse: SquareupResponse {
    
    ///- BusinessBookingProfile: The seller's booking profile.
    public var businessBookingProfile: BusinessBookingProfile?
    
    enum CodingKeys: String, CodingKey {
        case businessBookingProfile = "business_booking_profile"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.businessBookingProfile = try container.decodeIfPresent(BusinessBookingProfile.self, forKey: .businessBookingProfile)
    }
}
