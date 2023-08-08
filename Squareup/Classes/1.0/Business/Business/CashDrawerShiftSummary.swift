//
//  CashDrawerShiftSummary.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

/// - CashDrawerShiftSummary: The summary of a closed cash drawer shift.
/// This model contains only the money counted to start a cash drawer shift, counted at the end of the shift, and the amount that should be in the drawer at shift end based on summing all cash drawer shift events.
/// https://developer.squareup.com/reference/square/objects/CashDrawerShiftSummary
open class CashDrawerShiftSummary: Codable {
    
    /// - Id: The shift unique ID.
    var Id: String?
    /// - State: The shift current state.
    var State: CashDrawerShiftState?
    /// - OpenedAt: The shift start time in ISO 8601 format.
//    var OpenedAt: Date?
    @FormattedDate<RFC3339_Strategy> var OpenedAt: Date?
    /// - EndedAt: The shift end time in ISO 8601 format.
//    var EndedAt: Date?
    @FormattedDate<RFC3339_Strategy> var EndedAt: Date?
    /// - ClosedAt: The shift close time in ISO 8601 format.
//    var ClosedAt: Date?
    @FormattedDate<RFC3339_Strategy> var ClosedAt: Date?
    /// - Description: An employee free-text description of a cash drawer shift.
    var Description: String?
    var OpenedCashMoney: Money?
    /// - ExpectedCashMoney: The amount of money that should be in the cash drawer at the end of the shift, based on the cash drawer events on the shift. The amount is correct if all shift employees accurately recorded their cash drawer shift events. Unrecorded events and events with the wrong amount result in an incorrect expected_cash_money amount that can be negative.
    var ExpectedCashMoney: Money?
    /// - ClosedCashMoney: The amount of money found in the cash drawer at the end of the shift by an auditing employee. The amount must be greater than or equal to zero.
    var ClosedCashMoney: Money?
    /// - CreatedAt: Read only The shift start time in RFC 3339 format.
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    /// - UpdatedAt: Read only The shift updated at time in RFC 3339 format
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var UpdatedAt: Date?
    /// - LocationId: Read only The ID of the location the cash drawer shift belongs to.
    var LocationId: String?
    
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
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.State = try container.decodeIfPresent(CashDrawerShiftState.self, forKey: .State)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .OpenedAt), !dateString.isEmpty {
//            self.OpenedAt = try dateString.decode_RFC3339_Date(container, forKey: .OpenedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .EndedAt), !dateString.isEmpty {
//            self.EndedAt = try dateString.decode_RFC3339_Date(container, forKey: .EndedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .ClosedAt), !dateString.isEmpty {
//            self.ClosedAt = try dateString.decode_RFC3339_Date(container, forKey: .ClosedAt)
//        }
//        self.Description = try container.decodeIfPresent(String.self, forKey: .Description)
//        self.OpenedCashMoney = try container.decodeIfPresent(Money.self, forKey: .OpenedCashMoney)
//        self.ExpectedCashMoney = try container.decodeIfPresent(Money.self, forKey: .ExpectedCashMoney)
//        self.ClosedCashMoney = try container.decodeIfPresent(Money.self, forKey: .ClosedCashMoney)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//    }
}
