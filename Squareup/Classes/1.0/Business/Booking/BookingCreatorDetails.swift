//
//  BookingCreatorDetails.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

/// - BookingCreatorDetails: Information about a booking creator.
/// https://developer.squareup.com/reference/square/objects/BookingCreatorDetails
open class BookingCreatorDetails: Codable {
    
    /// - CreatorType: Read only The seller-accessible type of the creator of the booking.
    public var CreatorType: BookingCreatorDetailsCreatorType?
    /// - TeamNemberId: Read only The ID of the team member who created the booking, when the booking creator is of the TEAM_MEMBER type. Access to this field requires seller-level permissions.
    /// Max Length 32
    public var TeamNemberId: String?
    /// - CustomerId: Read only The ID of the customer who created the booking, when the booking creator is of the CUSTOMER type. Access to this field requires seller-level permissions.
    /// Max Length 192
    public var CustomerId: String?
    
    enum CodingKeys: String, CodingKey {
        case CreatorType = "creator_type"
        case TeamNemberId = "team_member_id"
        case CustomerId = "customer_id"
    }
}
