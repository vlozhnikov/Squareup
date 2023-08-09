//
//  TeamMemberBookingProfile.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

/// - TeamMemberBookingProfile: The booking profile of a seller's team member, including the team member's ID, display name, description and whether the team member can be booked as a service provider.
/// https://developer.squareup.com/reference/square/objects/TeamMemberBookingProfile
open class TeamMemberBookingProfile: Codable {
    
    /// - TeamMemberId: Read only The ID of the TeamMember object for the team member associated with the booking profile.
    /// Max Length 32
    public var TeamMemberId: String?
    /// - Description: Read only The description of the team member.
    /// Max Length 65536
    public var Description: String?
    /// - DisplayName: Read only The display name of the team member.
    /// Max Length 512
    public var DisplayName: String?
    /// - IsBookable: Indicates whether the team member can be booked through the Bookings API or the seller's online booking channel or site (true) or not (false`).
    public var IsBookable: String?
    /// - ProfileImageUrl: Read only The URL of the team member's image for the bookings profile.
    /// Max Length 2048
    public var ProfileImageUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case TeamMemberId = "team_member_id"
        case Description = "description"
        case DisplayName = "display_name"
        case IsBookable = "is_bookable"
        case ProfileImageUrl = "profile_image_url"
    }
}
