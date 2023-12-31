//
//  PaymentRefund.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.07.23.
//

import Foundation

/// - PaymentRefund: Represents a refund of a payment made using Square.
/// Contains information about the original payment and the amount of money refunded.
/// https://developer.squareup.com/reference/square/objects/PaymentRefund
open class PaymentRefund: Codable {
    
    /// - Id: The unique ID for this refund, generated by Square.
    /// Min Length 1
    /// Max Length 255
    public var Id: String?
    /// - Status: The refund's status:
    public var Status: PaymentRefundStatus?
    /// - LocationId: The location ID associated with the payment this refund is attached to.
    /// Max Length 50
    public var LocationId: String?
    /// - Unlinked: Read only Flag indicating whether or not the refund is linked to an existing payment in Square.
    public var Unlinked: Bool?
    /// - DestinationType: The destination type for this refund.
    /// Current values include CARD, BANK_ACCOUNT, WALLET, BUY_NOW_PAY_LATER, CASH, and EXTERNAL.
    /// Max Length 50
    public var DestinationType: PaymentRefundDestinationType?
    /// - DestinationDetails: Read only Contains information about the refund destination. This field is populated only if destination_id is defined in the RefundPayment request.
    public var destinationDetails: DestinationDetails?
    /// - AmountMoney: The amount of money refunded. This amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents).
    public var AmountMoney: Money?
    /// - AppFeeMoney: The amount of money the application developer contributed to help cover the refunded amount. This amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). For more information, see Working with Monetary Amounts.
    public var AppFeeMoney: Money?
    /// - processingFee: Processing fees and fee adjustments assessed by Square for this refund.
    public var processingFee: ProcessingFee?
    /// - PaymentId: The ID of the payment associated with this refund.
    /// Max Length 192
    public var PaymentId: String?
    /// - OrderId: The ID of the order associated with the refund.
    /// Max Length 192
    public var OrderId: String?
    /// - Reason: The reason for the refund.
    /// Max Length 192
    public var Reason: String?
    /// - CreatedAt: Read only The timestamp of when the refund was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// Max Length 32
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - UpdatedAt: Read only The timestamp of when the refund was last updated, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// Max Length 32
    @FormattedDate<RFC3339_Strategy> public var UpdatedAt: Date?
    /// - TeamMemberId: Read only An optional ID of the team member associated with taking the payment.
    /// Max Length 192
    public var TeamMemberId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Status = "status"
        case LocationId = "location_id"
        case Unlinked = "unlinked"
        case DestinationType = "destination_type"
        case destinationDetails = "destination_details"
        case AmountMoney = "amount_money"
        case AppFeeMoney = "app_fee_money"
        case processingFee = "processing_fee"
        case PaymentId = "payment_id"
        case OrderId = "order_id"
        case Reason = "reason"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case TeamMemberId = "team_member_id"
    }
}
