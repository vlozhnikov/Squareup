//
//  FulfillmentPickupDetails.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - FulfillmentPickupDetails: Contains details necessary to fulfill a pickup order.
/// https://developer.squareup.com/reference/square/objects/FulfillmentPickupDetails
open class FulfillmentPickupDetails: Codable {
   
    /// - Recipient: Information about the person to pick up this fulfillment from a physical location.
    public var Recipient: FulfillmentRecipient?
    /// - ExpiresAt: The timestamp indicating when this fulfillment expires if it is not accepted. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z"). The expiration time can only be set up to 7 days in the future. If expires_at is not set, this pickup fulfillment is automatically accepted when placed.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var ExpiresAt: Date?
    @FormattedDate<RFC3339_Strategy> public var ExpiresAt: Date?
    /// - AutoCompleteDuration: The duration of time after which an open and accepted pickup fulfillment is automatically moved to the COMPLETED state. The duration must be in RFC 3339 format (for example, "P1W3D").
    /// If not set, this pickup fulfillment remains accepted until it is canceled or completed.
    /// Example for 2 days, 12 hours, 30 minutes, and 15 seconds: P2DT12H30M15S
    public var AutoCompleteDuration: String?
    /// - ScheduleType: The schedule type of the pickup fulfillment. Defaults to SCHEDULED.
    public var ScheduleType: FulfillmentPickupDetailsScheduleType?
    /// - PickupAt: The timestamp that represents the start of the pickup window. Must be in RFC 3339 timestamp format, e.g., "2016-09-04T23:59:33.123Z"
    /// For fulfillments with the schedule type ASAP, this is automatically set to the current time plus the expected duration to prepare the fulfillment.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var PickupAt: Date?
    @FormattedDate<RFC3339_Strategy> public var PickupAt: Date?
    /// - PickupWindowDuration: The window of time in which the order should be picked up after the pickup_at timestamp. Must be in RFC 3339 duration format, e.g., "P1W3D". Can be used as an informational guideline for merchants.
    /// Example for 2 days, 12 hours, 30 minutes, and 15 seconds: P2DT12H30M15S
    public var PickupWindowDuration: String?
    /// - PrepTimeDuration: The duration of time it takes to prepare this fulfillment. The duration must be in RFC 3339 format (for example, "P1W3D").
    /// Example for 2 days, 12 hours, 30 minutes, and 15 seconds: P2DT12H30M15S
    public var PrepTimeDuration: String?
    /// - Note: A note to provide additional instructions about the pickup fulfillment displayed in the Square Point of Sale application and set by the API.
    /// Max Length  500
    public var Note: String?
    /// - PlacedAt: Read only The timestamp indicating when the fulfillment was placed. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var PlacedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var PlacedAt: Date?
    /// - AcceptedAt: Read only The timestamp indicating when the fulfillment was accepted. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var AcceptedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var AcceptedAt: Date?
    /// - RejectedAt: Read only The timestamp indicating when the fulfillment was rejected. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// acific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var RejectedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var RejectedAt: Date?
    /// - ReadyAt: Read only The timestamp indicating when the fulfillment is marked as ready for pickup. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var ReadyAt: Date?
    @FormattedDate<RFC3339_Strategy> public var ReadyAt: Date?
    /// - ExpiredAt: Read only The timestamp indicating when the fulfillment expired. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:\
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var ExpiredAt: Date?
    @FormattedDate<RFC3339_Strategy> public var ExpiredAt: Date?
    /// - PickedUpAt: Read only The timestamp indicating when the fulfillment was picked up by the recipient. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var PickedUpAt: Date?
    @FormattedDate<RFC3339_Strategy> public var PickedUpAt: Date?
    /// - CanceledAt: Read only The timestamp indicating when the fulfillment was canceled. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    ///  Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CanceledAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CanceledAt: Date?
    /// - CancelReason: A description of why the pickup was canceled. The maximum length: 100 characters.
    /// Max Length 100
    public var CancelReason: String?
    /// - IsCurbsidePickup: If set to true, indicates that this pickup order is for curbside pickup, not in-store pickup.
    public var IsCurbsidePickup: Bool?
    /// - CurbsidePickupDetails: Specific details for curbside pickup. These details can only be populated if is_curbside_pickup is set to true.
    public var CurbsidePickupDetails: FulfillmentPickupDetailsCurbsidePickupDetails?
    
    enum CodingKeys: String, CodingKey {
        case Recipient = "recipient"
        case ExpiresAt = "expires_at"
        case AutoCompleteDuration = "auto_complete_duration"
        case ScheduleType = "schedule_type"
        case PickupAt = "pickup_at"
        case PickupWindowDuration = "pickup_window_duration"
        case PrepTimeDuration = "prep_time_duration"
        case Note = "note"
        case PlacedAt = "placed_at"
        case AcceptedAt = "accepted_at"
        case RejectedAt = "rejected_at"
        case ReadyAt = "ready_at"
        case ExpiredAt = "expired_at"
        case PickedUpAt = "picked_up_at"
        case CanceledAt = "canceled_at"
        case CancelReason = "cancel_reason"
        case IsCurbsidePickup = "is_curbside_pickup"
        case CurbsidePickupDetails = "curbside_pickup_details"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Recipient = try container.decodeIfPresent(FulfillmentRecipient.self, forKey: .Recipient)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .ExpiresAt), !dateString.isEmpty {
//            self.ExpiresAt = try dateString.decode_RFC3339_Date(container, forKey: .ExpiresAt)
//        }
//        self.AutoCompleteDuration = try container.decodeIfPresent(String.self, forKey: .AutoCompleteDuration)
//        self.ScheduleType = try container.decodeIfPresent(FulfillmentPickupDetailsScheduleType.self, forKey: .ScheduleType)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .PickupAt), !dateString.isEmpty {
//            self.PickupAt = try dateString.decode_RFC3339_Date(container, forKey: .PickupAt)
//        }
//        self.PickupWindowDuration = try container.decodeIfPresent(String.self, forKey: .PickupWindowDuration)
//        self.PrepTimeDuration = try container.decodeIfPresent(String.self, forKey: .PrepTimeDuration)
//        self.Note = try container.decodeIfPresent(String.self, forKey: .Note)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .PlacedAt), !dateString.isEmpty {
//            self.PlacedAt = try dateString.decode_RFC3339_Date(container, forKey: .PlacedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .AcceptedAt), !dateString.isEmpty {
//            self.AcceptedAt = try dateString.decode_RFC3339_Date(container, forKey: .AcceptedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .RejectedAt), !dateString.isEmpty {
//            self.RejectedAt = try dateString.decode_RFC3339_Date(container, forKey: .RejectedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .ReadyAt), !dateString.isEmpty {
//            self.ReadyAt = try dateString.decode_RFC3339_Date(container, forKey: .ReadyAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .ExpiredAt), !dateString.isEmpty {
//            self.ExpiredAt = try dateString.decode_RFC3339_Date(container, forKey: .ExpiredAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .PickedUpAt), !dateString.isEmpty {
//            self.PickedUpAt = try dateString.decode_RFC3339_Date(container, forKey: .PickedUpAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CanceledAt), !dateString.isEmpty {
//            self.CanceledAt = try dateString.decode_RFC3339_Date(container, forKey: .CanceledAt)
//        }
//        self.CancelReason = try container.decodeIfPresent(String.self, forKey: .CancelReason)
//        self.IsCurbsidePickup = try container.decodeIfPresent(Bool.self, forKey: .IsCurbsidePickup)
//        self.CurbsidePickupDetails = try container.decodeIfPresent(FulfillmentPickupDetailsCurbsidePickupDetails.self, forKey: .CurbsidePickupDetails)
//    }
}
