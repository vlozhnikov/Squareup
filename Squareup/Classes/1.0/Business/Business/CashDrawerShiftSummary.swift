//
//  CashDrawerShiftSummary.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 30.06.23.
//

import Foundation

/// - CashDrawerShiftSummary: The summary of a closed cash drawer shift.
/// This model contains only the money counted to start a cash drawer shift, counted at the end of the shift, and the amount that should be in the drawer at shift end based on summing all cash drawer shift events.
/// https://developer.squareup.com/reference/square/objects/CashDrawerShiftSummary
open class CashDrawerShiftSummary: Codable {
    
    /// - Id: The shift unique ID.
    public var Id: String?
    /// - State: The shift current state.
    public var State: CashDrawerShiftState?
    /// - OpenedAt: The shift start time in ISO 8601 format.
    @FormattedDate<RFC3339_Strategy> public var OpenedAt: Date?
    /// - EndedAt: The shift end time in ISO 8601 format.
    @FormattedDate<RFC3339_Strategy> public var EndedAt: Date?
    /// - ClosedAt: The shift close time in ISO 8601 format.
    @FormattedDate<RFC3339_Strategy> public var ClosedAt: Date?
    /// - Description: An employee free-text description of a cash drawer shift.
    public var Description: String?
    public var OpenedCashMoney: Money?
    /// - ExpectedCashMoney: The amount of money that should be in the cash drawer at the end of the shift, based on the cash drawer events on the shift. The amount is correct if all shift employees accurately recorded their cash drawer shift events. Unrecorded events and events with the wrong amount result in an incorrect expected_cash_money amount that can be negative.
    public var ExpectedCashMoney: Money?
    /// - ClosedCashMoney: The amount of money found in the cash drawer at the end of the shift by an auditing employee. The amount must be greater than or equal to zero.
    public var ClosedCashMoney: Money?
    /// - CreatedAt: Read only The shift start time in RFC 3339 format.
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - UpdatedAt: Read only The shift updated at time in RFC 3339 format
    @FormattedDate<RFC3339_Strategy> public var UpdatedAt: Date?
    /// - LocationId: Read only The ID of the location the cash drawer shift belongs to.
    public var LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case State = "state"
        case OpenedAt = "opened_at"
        case EndedAt = "ended_at"
        case ClosedAt = "closed_at"
        case Description = "description"
        case OpenedCashMoney = "opened_cash_money"
        case ExpectedCashMoney = "expected_cash_money"
        case ClosedCashMoney = "closed_cash_money"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case LocationId = "location_id"
    }
}
