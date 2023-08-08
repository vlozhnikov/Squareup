//
//  CashDrawerShift.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

/// - CashDrawerShift: This model gives the details of a cash drawer shift.
/// The cash_payment_money, cash_refund_money, cash_paid_in_money, and cash_paid_out_money fields are all computed by summing their respective event types.
/// https://developer.squareup.com/reference/square/objects/CashDrawerShift
open class CashDrawerShift: Codable {
    
    /// - Id: The shift unique ID.
    public var Id: String?
    /// - State: The shift current state.
    public var State: CashDrawerShiftState?
    /// - OpenedAt: The time when the shift began, in ISO 8601 format.
//    var OpenedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var OpenedAt: Date?
    /// - EndedAt: The time when the shift ended, in ISO 8601 format.
//    var EndedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var EndedAt: Date?
    /// - ClosedAt: The time when the shift was closed, in ISO 8601 format.
//    var ClosedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var ClosedAt: Date?
    /// - Description: The free-form text description of a cash drawer by an employee.
    public var Description: String?
    /// - OpenedCashMoney: The amount of money in the cash drawer at the start of the shift. The amount must be greater than or equal to zero.
    public var OpenedCashMoney: Money?
    /// - CashPaymentMoney: The amount of money added to the cash drawer from cash payments. This is computed by summing all events with the types CASH_TENDER_PAYMENT and CASH_TENDER_CANCELED_PAYMENT. The amount is always greater than or equal to zero.
    public var CashPaymentMoney: Money?
    /// - CashRefundsMoney: The amount of money removed from the cash drawer from cash refunds. It is computed by summing the events of type CASH_TENDER_REFUND. The amount is always greater than or equal to zero.
    public var CashRefundsMoney: Money?
    /// - CashPaidInMoney: The amount of money added to the cash drawer for reasons other than cash payments. It is computed by summing the events of type PAID_IN. The amount is always greater than or equal to zero.
    public var CashPaidInMoney: Money?
    /// - CashPaidOutMoney: The amount of money removed from the cash drawer for reasons other than cash refunds. It is computed by summing the events of type PAID_OUT. The amount is always greater than or equal to zero.
    public var CashPaidOutMoney: Money?
    /// - ExpectedCashMoney: The amount of money that should be in the cash drawer at the end of the shift, based on the shift's other money amounts. This can be negative if employees have not correctly recorded all the events on the cash drawer. cash_paid_out_money is a summation of amounts from cash_payment_money (zero or positive), cash_refunds_money (zero or negative), cash_paid_in_money (zero or positive), and cash_paid_out_money (zero or negative) event types.
    public var ExpectedCashMoney: Money?
    /// - ClosedCashMoney: The amount of money found in the cash drawer at the end of the shift by an auditing employee. The amount should be positive.
    public var ClosedCashMoney: Money?
    /// - Device: The device running Square Point of Sale that was connected to the cash drawer.
    public var Device: CashDrawerDevice?
    /// - CreatedAt: Read only The shift start time in RFC 3339 format.
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - UpdatedAt: Read only The shift updated at time in RFC 3339 format
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var UpdatedAt: Date?
    /// - LocationId: Read only The ID of the location the cash drawer shift belongs to.
    public var LocationId: String?
    /// - TeamMemberIds: Read only The IDs of all team members that were logged into Square Point of Sale at any point while the cash drawer shift was open.
    public var TeamMemberIds: [String]?
    /// - OpeningTeamMemberId: Read only The ID of the team member that started the cash drawer shift.
    public var OpeningTeamMemberId: String?
    /// - EndingTeamMemberId: Read only The ID of the team member that ended the cash drawer shift.
    public var EndingTeamMemberId: String?
    /// - ClosingTeamMemberId: Read only The ID of the team member that closed the cash drawer shift by auditing the cash drawer contents.
    public var ClosingTeamMemberId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case State = "state"
        case OpenedAt = "opened_at"
        case EndedAt = "ended_at"
        case ClosedAt = "closed_at"
        case Description = "description"
        case OpenedCashMoney = "opened_cash_money"
        case CashPaymentMoney = "cash_payment_money"
        case CashRefundsMoney = "cash_refunds_money"
        case CashPaidInMoney = "cash_paid_in_money"
        case CashPaidOutMoney = "cash_paid_out_money"
        case ExpectedCashMoney = "expected_cash_money"
        case ClosedCashMoney = "closed_cash_money"
        case Device = "device"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case LocationId = "location_id"
        case TeamMemberIds = "team_member_ids"
        case OpeningTeamMemberId = "opening_team_member_id"
        case EndingTeamMemberId = "ending_team_member_id"
        case ClosingTeamMemberId = "closing_team_member_id"
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
//        self.CashPaymentMoney = try container.decodeIfPresent(Money.self, forKey: .CashPaymentMoney)
//        self.CashRefundsMoney = try container.decodeIfPresent(Money.self, forKey: .CashRefundsMoney)
//        self.CashPaidInMoney = try container.decodeIfPresent(Money.self, forKey: .CashPaidInMoney)
//        self.CashPaidOutMoney = try container.decodeIfPresent(Money.self, forKey: .CashPaidOutMoney)
//        self.ExpectedCashMoney = try container.decodeIfPresent(Money.self, forKey: .ExpectedCashMoney)
//        self.ClosedCashMoney = try container.decodeIfPresent(Money.self, forKey: .ClosedCashMoney)
//        self.Device = try container.decodeIfPresent(CashDrawerDevice.self, forKey: .Device)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        self.TeamMemberIds = try container.decodeIfPresent([String].self, forKey: .TeamMemberIds)
//        self.OpeningTeamMemberId = try container.decodeIfPresent(String.self, forKey: .OpeningTeamMemberId)
//        self.EndingTeamMemberId = try container.decodeIfPresent(String.self, forKey: .EndingTeamMemberId)
//        self.ClosingTeamMemberId = try container.decodeIfPresent(String.self, forKey: .ClosingTeamMemberId)
//    }
}
