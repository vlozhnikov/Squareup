//
//  SegmentFilter.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

/// - SegmentFilter: A query filter to search for buyer-accessible appointment segments by.
/// https://developer.squareup.com/reference/square/objects/SegmentFilter
open class SegmentFilter: Codable {
    
    /// - ServiceVariationId: The ID of the CatalogItemVariation object representing the service booked in this segment.
    /// Min Length 1
    /// Max Length 36
    public var ServiceVariationId: String?
    /// - TeamMemberIdFilter: A query filter to search for buyer-accessible appointment segments with service-providing team members matching the specified list of team member IDs. Supported query expressions are
    public var TeamMemberIdFilter: FilterValue?
    
    enum CodingKeys: String, CodingKey {
        case ServiceVariationId = "service_variation_id"
        case TeamMemberIdFilter = "team_member_id_filter"
    }
}
