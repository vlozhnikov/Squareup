//
//  AppointmentSegment.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

/// - AppointmentSegment: Defines an appointment segment of a booking.
/// https://developer.squareup.com/reference/square/objects/AppointmentSegment
open class AppointmentSegment: Codable {
    
    /// - DurationMinutes: The time span in minutes of an appointment segment.
    /// Max 1500
    public var DurationMinutes: Int?
    /// - ServiceVariationId: The ID of the CatalogItemVariation object representing the service booked in this segment.
    /// Max Length 36
    public var ServiceVariationId: String?
    /// - TeamMemberId: Required
    /// The ID of the TeamMember object representing the team member booked in this segment.
    /// Min Length 1
    /// Max Length 32
    public var TeamMemberId: String?
    /// - ServiceVariationVersion: The current version of the item variation representing the service booked in this segment.
    public var ServiceVariationVersion: Int?
    /// - IntermissionMinutes: Read only Time between the end of this segment and the beginning of the subsequent segment.
    public var IntermissionMinutes: Int?
    /// - AnyTeamMember: Read only Whether the customer accepts any team member, instead of a specific one, to serve this segment.
    public var AnyTeamMember: Bool?
    /// - ResourceIds: Read only The IDs of the seller-accessible resources used for this appointment segment.
    public var ResourceIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case DurationMinutes = "duration_minutes"
        case ServiceVariationId = "service_variation_id"
        case TeamMemberId = "team_member_id"
        case ServiceVariationVersion = "service_variation_version"
        case IntermissionMinutes = "intermission_minutes"
        case AnyTeamMember = "any_team_member"
        case ResourceIds = "ResourceIds"
    }
}
