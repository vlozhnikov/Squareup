//
//  CashDrawerShiftEvent.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

/// - CashDrawerShiftEvent:
/// https://developer.squareup.com/reference/square/objects/CashDrawerShiftEvent
open class CashDrawerShiftEvent: Codable {
    
    /// - Id: The unique ID of the event.
    public var Id: String?
    /// - EventType: The type of cash drawer shift event.
    public var EventType: CashDrawerEventType?
    /// - EventMoney: The amount of money that was added to or removed from the cash drawer in the event. The amount can be positive (for added money) or zero (for other tender type payments). The addition or removal of money can be determined by by the event type.
    public var EventMoney: Money?
    /// - CreatedAt: Read only The event time in RFC 3339 format.
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - Description: An optional description of the event, entered by the employee that created the event.
    public var Description: String?
    public var TeamMemberId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case EventType = "event_type"
        case EventMoney = "event_money"
        case CreatedAt = "created_at"
        case Description = "description"
        case TeamMemberId = "team_member_id"
    }
}
